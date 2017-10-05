
%% %%######################################################################
%% %%##################    Define Parameters Here       ###################
%% %%######################################################################
%%_____________________________Fixed Parameters___________________________
g = 9.81;
m = 1.4;
l = 0.2;
Jx = 0.03;
Jy = 0.03;
Jz = 0.04;
k = 4;
%%________________________________________________________________________
%%__________________________Time Varying Parameters_______________________
syms tau dt          %% Required (Do Not Change!)
Xf = sym('Xf',[dimx,1]);
Q = sym('q',[dimx,1]);
W = sym('w',[dimu,1]);

%%--------------------Frozen Time-Varying Parameters----------------------
TVP_f=[Xf;Q;W;dt];  %% "dt" MUST be the last Frozen TVP
%%--------------------Dynamic Time-Vaying Parameters----------------------
TVP=[];
%%____________________Exterior Penalty Costs Weights______________________
R_value=[0];