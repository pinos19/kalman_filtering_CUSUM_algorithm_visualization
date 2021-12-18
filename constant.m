function [y1,y2] = constant(t_start,t_final,pas,valeur,variance)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    t=t_start:pas:t_final;
    y1=ones(size(t)).*valeur;
    y2 = ones(size(t)).*valeur + randn(size(t)).*sqrt(variance);
end

