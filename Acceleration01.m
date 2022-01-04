function w=Acceleration1(output, input)
r1 = 108;
r2 = 59;
r3 = 85;
r4 = 117;

omega2=20;
theta2 = input(1);
theta3 = input(2);
theta4= input(3);
omega3= input(4);
omega4 = input(5);
alpha3 = output(1);
alpha4 = output(2);
w=[( -(omega2^2)*r2*cosd(theta2)-(omega3^2)*r3*cosd(theta3)-alpha3*r3*sind(theta3)+(omega4^2)*r4*cosd(theta4)+alpha4*r4*sind(theta4));
(-(omega2^2)*r2*sind(theta2)-(omega3^2)*r3*sind(theta3)+alpha3*r3*cosd(theta3)+(omega4^2)*r4*sind(theta4)-alpha4*r4*cosd(theta4))];
end