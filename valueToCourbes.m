function [y_r,y_b] = valueToCourbes(value,varianceBruit,H,app,numeroSignal)
    randn('seed',5);
    if strcmp(value,"échelon (modèle)")
        [y_r,y_b]= echelon(0,10,0.01,3,H,varianceBruit);
        if numeroSignal==1
            app.Time_y1 = 0:0.01:10;
        elseif numeroSignal ==2
            app.Time_y2 = 0:0.01:10;
        elseif numeroSignal ==3  
            app.Time_y3 = 0:0.01:10;
        elseif numeroSignal ==4
            app.Time_y4 = 0:0.01:10;
        end
    elseif strcmp(value,"rampe (modèle)")
        [y_r,y_b]= rampe(0,10,0.01,varianceBruit);
        if numeroSignal==1
            app.Time_y1 = 0:0.01:10;
        elseif numeroSignal ==2
            app.Time_y2 = 0:0.01:10;
        elseif numeroSignal ==3  
            app.Time_y3 = 0:0.01:10;
        elseif numeroSignal ==4
            app.Time_y4 = 0:0.01:10;
        end
    elseif strcmp(value,"constant (modèle)")
        [y_r,y_b]= constant(0,10,0.01,H,varianceBruit);
        if numeroSignal==1
            app.Time_y1 = 0:0.01:10;
        elseif numeroSignal ==2
            app.Time_y2 = 0:0.01:10;
        elseif numeroSignal ==3  
            app.Time_y3 = 0:0.01:10;
        elseif numeroSignal ==4
            app.Time_y4 = 0:0.01:10;
        end
    elseif strcmp(value,"rampeEtRupture (modèle)")
        [y_r,y_b]= rampeEtEchelon(0,10,0.01,3,H,varianceBruit);
        if numeroSignal==1
            app.Time_y1 = 0:0.01:10;
        elseif numeroSignal ==2
            app.Time_y2 = 0:0.01:10;
        elseif numeroSignal ==3  
            app.Time_y3 = 0:0.01:10;
        elseif numeroSignal ==4
            app.Time_y4 = 0:0.01:10;
        end
    elseif strcmp(value,"pointZero (réel)")
        load 'signal_point_zero.mat';
        if numeroSignal==1
            app.Time_y1 = x1Zero';
        elseif numeroSignal ==2
            app.Time_y2 = x1Zero';
        elseif numeroSignal ==3  
            app.Time_y3 = x1Zero';
        elseif numeroSignal ==4
            app.Time_y4 = x1Zero';
        end
        y_b = y1Zero';
        y_r = y1Zero';
    elseif strcmp(value,"pointEtalon (réel)")
        load 'signal_point_etalon.mat';
        if numeroSignal==1
            app.Time_y1 = x2Etalon';
        elseif numeroSignal ==2
            app.Time_y2 = x2Etalon';
        elseif numeroSignal ==3  
            app.Time_y3 = x2Etalon';
        elseif numeroSignal ==4
            app.Time_y4 = x2Etalon';
        end
        y_b = y2Etalon';
        y_r = y2Etalon';
    elseif strcmp(value,"creneaux (réel)")
        load 'signal_creneaux.mat';
        if numeroSignal==1
            app.Time_y1 = x2Creneaux';
        elseif numeroSignal ==2
            app.Time_y2 = x2Creneaux';
        elseif numeroSignal ==3  
            app.Time_y3 = x2Creneaux';
        elseif numeroSignal ==4
            app.Time_y4 = x2Creneaux';
        end
        y_b = y2Creneaux';
        y_r = y2Creneaux';
    end
end

