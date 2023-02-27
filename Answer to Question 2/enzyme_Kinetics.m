

function F=enzyme_Kinetics(t,Y)

S = Y(1);
ES = Y(2);
P = Y(3);

% Define rate constants
k1=100;
k2=600;
k3=150;

% Define the ordinary differential equations of the enzyme kinetics 
dS = -k1*(1-ES)*S+k2*ES;
dES = k1*(1-ES)*S-k2*ES-k3*ES;
dP = k3*ES;

F=[dS;dES;dP];

end

