function w=Position2(output, input)

r4_2 =30.5 ;
r5 = 43.71 ;
theta5=output(1);
r6 = output(2) ;
w=[(r4_2*(cosd(input)))+(r5*cosd(theta5))-r6;
(r4_2*sind(input))+(r5*sind(theta5))];
end
