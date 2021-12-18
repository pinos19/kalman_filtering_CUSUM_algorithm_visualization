function [y1,y2] = echelon(t_start,t_final,pas,t_impulse,hauteur_echelon,variance)
    % var = variance du bruit gaussien du signal
    t=t_start:pas:t_final;
    y1=heaviside(t-t_impulse).*hauteur_echelon;
    y2=y1+randn(size(y1)).*variance;
end

