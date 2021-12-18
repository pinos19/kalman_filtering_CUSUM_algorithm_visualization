function [y1,y2] = rampe(t_start,t_final,pas,var)
    t=t_start:pas:t_final;
    %var = variance du bruit gaussien 
    y1 = t;
    y2 = y1 + randn(size(y1)).*sqrt(var);
end

