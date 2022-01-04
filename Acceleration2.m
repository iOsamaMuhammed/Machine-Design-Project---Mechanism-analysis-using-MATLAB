function w=Acceleration2(output, input)
r4_2 =168 ;
r5 = 141 ;
theta4_2=input(1);
theta5=input(2);
omega4 =input(4);
omega5 = input(5);
Vc=input(6);
alpha4 = input(7);
alpha5 = output(1);
Ac = output(2);
w=[((-(alpha4)*r4_2*sind(theta4_2))-((omega4^2)*cosd(theta4_2)*r4_2)+(Ac*cosd(theta5))-((omega5)*sind(theta5)*Vc)-((omega5)*sind(theta5)*Vc)-((omega5^2)*cosd(theta5)*r5)-((alpha5)*sind(theta5)*r5));
(((r4_2)*cosd(theta4_2)*alpha4)-(r4_2*sind(theta4_2)*(omega4^2))+(Ac*sind(theta5))+(Vc*cosd(theta5)*omega5)+(Vc*cosd(theta5)*omega5)-(r5*sind(theta5)*(omega5^2))+(r5*cosd(theta5)*alpha5))];
end
