function w=velocity1(output, input)
omega2=20;
r2 = 17;
r3 = 34.8;
r4 = 37.942;
theta2=input(1);
theta3=input(2);
theta4=input(3);
omega3=output(1);
omega4=output(2);
w=[omega2*r2*sind(theta2)+omega3*r3*sind(theta3)-omega4*r4*sind(theta4);
omega2*r2*cosd(theta2)+omega3*r3*cosd(theta3)-omega4*r4*cosd(theta4)];
end