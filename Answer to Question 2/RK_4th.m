
% Define step size and initial value
Delta = 0.00001;
t = 0:Delta:0.2;
range = length(t);
Y(:,1)=[10;0;0];


% 4th order RK method
for n=1:range-1
    z1 = enzyme_Kinetics(t(n),Y(:,n));
    z2 = enzyme_Kinetics(t(n)+Delta/2,Y(:,n)+z1*Delta/2);
    z3 = enzyme_Kinetics(t(n)+Delta/2,Y(:,n)+z2*Delta/2);
    z4 = enzyme_Kinetics(t(n)+Delta,Y(:,n)+z3*Delta);
    Y(:,n+1) = Y(:,n)+Delta*(z1+2*z2+2*z3+z4)/6;

end


S = Y(1,:);
ES = Y(2,:);
P = Y(3,:);

% Plot the function figures of 4 species(E,S,ES,P)
a = figure;
set(gca,'Position',[0.1,0.1,0.8,0.8])

hold on
plot(t,S,'r')
xlabel('t')
ylabel('Consentrations')

plot(t,ES,'g')
xlabel('t')
ylabel('Concentrations')

plot(t,P,'black')
xlabel('t')
ylabel('Concentrations')

plot(t,1-ES,'b')
xlabel('t','FontSize',24)
ylabel('Concentrations','FontSize',24)

hold off


% frame = getframe(a);
% img = frame2im(frame);
% imwrite(img,'img.tiff','tif','Resolution',1800)

    