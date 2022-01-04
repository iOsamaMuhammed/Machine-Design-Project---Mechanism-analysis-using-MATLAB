function w=Position1(output, input)
r1 = 54.951;
r2 = 17;
r3 = 34.8;
r4 = 37.942;
w=[(r2*(cosd(input)))-r1+(r3*cosd(output(1)))-(r4*cosd(output(2)));
(r2*sind(input))+(r3*sind(output(1)))-(r4*sind(output(2)))];
end
