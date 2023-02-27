
function V=michaelis_menten_equation(S)

% Define concentration of enzyme
E0=1;

% Define rate constants
k1=100;
k2=600;
k3=150;

% Define the coefficients in Michaelis Menten equation
km=(k2+k3)/k1;
Vmax=k3*E0;

% Define the Michaelis Menten equation
V = (Vmax*S)/(km+S);
end