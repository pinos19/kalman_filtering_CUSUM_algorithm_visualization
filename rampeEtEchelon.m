function [y1,y2] = rampeEtEchelon(t_start,t_final,pas,t_impulse,hauteur_ech,var)
    t=t_start:pas:t_final; %variance du bruit gaussien 
    t_prime = abs(t-t_impulse);
    ind_impulse =find(t_prime==min(t_prime));
    echelon = zeros(size(t));
    echelon(ind_impulse:end)=hauteur_ech;
    y1 = t + echelon;
    y2 = y1 + randn(size(y1)).*sqrt(var);
end

