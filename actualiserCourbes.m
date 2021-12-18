function actualiserCourbes(nombreCourbes,Q,R,seuil,app)
    app.GridLayout.Children(3:end).delete();
    if nombreCourbes == 1
        ax1 = uiaxes(app.GridLayout);
        ax1.Layout.Row = [1 2];
        ax1.Layout.Column = [1 2];
        [app.Data_y1_est,y1_innov,y1_p,y1_vect_ruptures]=filtreKalmanVectoriel(app.Data_y1_b,app.Q,app.R,app.seuil);
        plot(ax1,app.Time_y1,app.Data_y1_b);
        hold(ax1,'on');
        plot(ax1,app.Time_y1,app.Data_y1_est(1,:),'.');
        legend(ax1,'Signal réel','Signal estimé');
    elseif nombreCourbes ==2
        ax1 = uiaxes(app.GridLayout);
        ax2 = uiaxes(app.GridLayout);
        ax1.Layout.Row = 1;
        ax1.Layout.Column = [1 2];
        ax2.Layout.Row = 2;
        ax2.Layout.Column = [1 2];
        [app.Data_y1_est,y1_innov,y1_p,y1_vect_ruptures]=filtreKalmanVectoriel(app.Data_y1_b,app.Q,app.R,app.seuil);
        [app.Data_y2_est,y2_innov,y2_p,y2_vect_ruptures]=filtreKalmanVectoriel(app.Data_y2_b,app.Q,app.R,app.seuil);
        plot(ax1,app.Time_y1,app.Data_y1_b);
        hold(ax1,'on');
        plot(ax1,app.Time_y1,app.Data_y1_est(1,:),'.');
        legend(ax1,'Signal réel','Signal estimé');
        plot(ax2,app.Time_y2,app.Data_y2_b);
        hold(ax2,'on');
        plot(ax2,app.Time_y2,app.Data_y2_est(1,:),'.');
        legend(ax2,'Signal réel','Signal estimé');
    elseif nombreCourbes == 3
        ax1 = uiaxes(app.GridLayout);
        ax2 = uiaxes(app.GridLayout);
        ax3 = uiaxes(app.GridLayout);
        ax1.Layout.Row = 1;
        ax1.Layout.Column =1;
        ax2.Layout.Row = 1;
        ax2.Layout.Column = 2;
        ax3.Layout.Row = 2;
        ax3.Layout.Column = [1 2];
        [app.Data_y1_est,y1_innov,y1_p,y1_vect_ruptures]=filtreKalmanVectoriel(app.Data_y1_b,app.Q,app.R,app.seuil);
        [app.Data_y2_est,y2_innov,y2_p,y2_vect_ruptures]=filtreKalmanVectoriel(app.Data_y2_b,app.Q,app.R,app.seuil);
        [app.Data_y3_est,y3_innov,y3_p,y3_vect_ruptures]=filtreKalmanVectoriel(app.Data_y3_b,app.Q,app.R,app.seuil);
        plot(ax1,app.Time_y1,app.Data_y1_b);
        hold(ax1,'on');
        plot(ax1,app.Time_y1,app.Data_y1_est(1,:),'.');
        legend(ax1,'Signal réel','Signal estimé');
        plot(ax2,app.Time_y2,app.Data_y2_b);
        hold(ax2,'on');
        plot(ax2,app.Time_y2,app.Data_y2_est(1,:),'.');
        legend(ax2,'Signal réel','Signal estimé');
        plot(ax3,app.Time_y3,app.Data_y3_b);
        hold(ax3,'on');
        plot(ax3,app.Time_y3,app.Data_y3_est(1,:),'.');
        legend(ax3,'Signal réel','Signal estimé');
    elseif nombreCourbes==4
        ax1 = uiaxes(app.GridLayout);
        ax2 = uiaxes(app.GridLayout);
        ax3 = uiaxes(app.GridLayout);
        ax4 = uiaxes(app.GridLayout);
        ax1.Layout.Row = 1;
        ax1.Layout.Column =1;
        ax2.Layout.Row = 1;
        ax2.Layout.Column = 2;
        ax3.Layout.Row = 2;
        ax3.Layout.Column =1;
        ax4.Layout.Row = 2;
        ax4.Layout.Column =2;
        [app.Data_y1_est,y1_innov,y1_p,y1_vect_ruptures]=filtreKalmanVectoriel(app.Data_y1_b,app.Q,app.R,app.seuil);
        [app.Data_y2_est,y2_innov,y2_p,y2_vect_ruptures]=filtreKalmanVectoriel(app.Data_y2_b,app.Q,app.R,app.seuil);
        [app.Data_y3_est,y3_innov,y3_p,y3_vect_ruptures]=filtreKalmanVectoriel(app.Data_y3_b,app.Q,app.R,app.seuil);
        [app.Data_y4_est,y4_innov,y4_p,y4_vect_ruptures]=filtreKalmanVectoriel(app.Data_y4_b,app.Q,app.R,app.seuil);
        plot(ax1,app.Time_y1,app.Data_y1_b);
        hold(ax1,'on');
        plot(ax1,app.Time_y1,app.Data_y1_est(1,:),'.');
        legend(ax1,'Signal réel','Signal estimé');
        plot(ax2,app.Time_y2,app.Data_y2_b);
        hold(ax2,'on');
        plot(ax2,app.Time_y2,app.Data_y2_est(1,:),'.');
        legend(ax2,'Signal réel','Signal estimé');
        plot(ax3,app.Time_y3,app.Data_y3_b);
        hold(ax3,'on');
        plot(ax3,app.Time_y3,app.Data_y3_est(1,:),'.');
        legend(ax3,'Signal réel','Signal estimé');
        plot(ax4,app.Time_y4,app.Data_y4_b);
        hold(ax4,'on');
        plot(ax4,app.Time_y4,app.Data_y4_est(1,:),'.');
        legend(ax4,'Signal réel','Signal estimé');
    end
end

