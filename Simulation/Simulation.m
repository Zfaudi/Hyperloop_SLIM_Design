%% Step A 
mu_0=4*pi*10^-7;        %Permibility of free space (H/m) 
rho_w=19.27*10^-9;      %Copper volume resistivity (ohm-m)
rho_r=28.85*10-9;       %Capsule conductor volume resistivity (ohm-m)
B_tmax=input('Max tooth flux density, B_tmax, (Wb/m^2)  '); %Input max tooth flux density  
B_ymax=input('Max yoke flux density, B_ymax, Wb/m^2)   ');  %Input max yoke flux density

%% Step B
% user inputs
m = input('Number of Phases: ')                    %input for number of phases 
Vline = input('Line-to-Line voltage [Hz]: ')       %input for line to line voltage
f = input('Electrical frequency: ')                %input for frequency [Hz]
p = input('Number of poles: ')                     %input for number of poles
q_1 = input('Number of slot-per-pole-per-phase: ') %input for number of slot per-pole-per-phase
S = input('Rated slip: ')                          %input for rated slip
W_s = input('Stator width [m]: ')                  %input for stator width [m]
J_1 = input('Stator current density [A/m^2]: ')    %input for stator current density [A/m^2]

%% Step C 
Fprime_s=input('Target electromagnetic thrust, Fs   ');
V_r=input('Rated rotor velocity, Vr   ');

%% Step D
% calculate synchronous velocity (V sub s)
V_s = 2*f*tau;

%% Step E
tau=V_s/2*f;            %calculate the pole pitch
lambda=tau/m*q_1        %calculate slot pitch
L_s=p*tau               %length of one stator unit 

%% Step F
% assume w_s = w_t = lambda/2 [lambda: slot pitch] 
w_s = lambda / 2; %slot width
w_t = w_s;        %tooth width
N_c = 1;          %number of turns per slot

%% Step G
N_1 = N_c * p * q_1 %number of turns per phase