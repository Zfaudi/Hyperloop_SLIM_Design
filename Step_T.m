%% Step t
%recalculating all these variable to recalculate G (goodness factor)
G_e=K_c*G_0;                    %Effective air gap
K_c=(lambda)/(lambda-gamma*G_0) %carter's coefficient
W_se= W_s+ G_0;                 %Equivalent stator width