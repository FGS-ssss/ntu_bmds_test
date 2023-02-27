% Define step size and initial value
S = 0:0.01:600;
V=[];
for i = 1:length(S)
    V(i) = michaelis_menten_equation(S(i));
end

% Plot 
figure
plot(S,V)
xlabel('Concentrations of S')
ylabel('Velocity')
