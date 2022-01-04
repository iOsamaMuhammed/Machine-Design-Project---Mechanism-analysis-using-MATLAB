function w=velocity2(output, input)
r4_2 =30.5 ;
r5 = 43.71 ;
r6 = 34.8 ;
theta4_2=input(1);
theta5=input(2);
omega4=input(3);
omega5=output(1);
Vc=output(2);
w=[omega4*r4_2*sind(theta4_2)+omega5*r5*sind(theta5)-Vc*cosd(theta5);
omega4*r4_2*cosd(theta4_2)+omega5*r5*cosd(theta5)+Vc*sind(theta5)];
end