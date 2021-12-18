function [X_est,innov,P,vecteurRuptures] = filtreKalmanVectoriel(signalBruite,Q,R,seuil)
    innov = zeros(1,length(signalBruite)-1);
    Te=0.082;
    F=[1,Te;0,1];
    H=[1,0];
    vecteurRuptures=[];
    
    Y=[signalBruite;zeros(1,length(signalBruite))];
    X_est = zeros(2,length(signalBruite));
    X_est(:,1)=[signalBruite(1);0];
    P= zeros(2,2,length(signalBruite));
    P(:,:,1)=eye(2).*250;
    P_rupt =eye(2).*500;
    I=eye(2);
    gp_cus = zeros(length(signalBruite));
    gm_cus = zeros(length(signalBruite));
            
    for n = 2:length(signalBruite)
        X_pred = F * X_est(:,n-1);              % état prédit
        P_pred  = F * P(:,:,n-1) * F.' + Q;     % estimation prédite de la covariance (rajouter B)
        innov(n-1) = H*Y(:,n)- H*X_pred;        % innovation
        
        
        gp_cus(n)=max(gp_cus(n-1)+innov(n-1),0);
        gm_cus(n)=max(gm_cus(n-1)-innov(n-1),0);
%         disp("gp_cus("+num2str(n)+") = "+num2str(gp_cus(n))+" gm_cus("+num2str(n)+") = "+num2str(gm_cus(n)));
        %si th est trop faible => fausse alarmes, si th est trop fort => retard à la détection ou non détection
        if((gp_cus(n)>seuil) || (gm_cus(n)>seuil))
            %  Localisation de la rupture
            a=[n;signalBruite(n)];
            vecteurRuptures=[vecteurRuptures,a];
            gp_cus(n)=0;
            gm_cus(n)=0;
            %  Initialisation du filtre de Kalman
            X_est(1,n)=signalBruite(n);
            X_est(2,n)=0;
            P(:,:,n) = P_rupt;
        else
            S = H*P_pred*H' +R;                     % covariance de l'innovation
            K = P_pred * H'/S;                      % gain de kalman
            X_est(:,n)= X_pred + K *innov(n-1);     % estimation
            P(:,:,n) =(I - K * H)*P_pred;           % correction de la covariance de l'erreur
        end
    end
    
end

