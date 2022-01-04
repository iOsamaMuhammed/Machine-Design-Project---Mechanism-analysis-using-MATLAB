 close
clc 
clear all
i=1;
options = optimset('display', 'off');
for theta=0:1:360 
the(i)=theta; 
theta34(:,i)=fsolve(@Position1,[25.4326 87.9786],options,theta);
i=i+1;
end
subplot(1,3,1)
plot(the(1,:),theta34(1,:));

title('theta3')
xlabel('theta2')
ylabel('theta3')
grid
subplot(1,3,2)
plot(the(1,:),theta34(2,:));

title('theta4')
xlabel('theta2')
ylabel('theta4')
grid
i = 1
for theta=0:1:360 
the(i)=theta; 
theta67(:,i)=fsolve(@Position2,[-0.3064 62.291],options,theta34(2,i));
i=i+1;
end
subplot(1,3,3)
plot(the(1,:),theta67(1,:));
title('theta5')
xlabel('theta2')
ylabel('theta5')
grid
i = 1;
for th = 0:1:360
    the(i) = th;
    v34(:,i) = fsolve(@velocity1,[-8.8235 -8.8235], options, [th theta34(1,i) theta34(2,i) 15]);
    i = i + 1;
end
subplot(2,2,1)
plot(the(1,:),v34(1,:));
title('Velocity3')
xlabel('theta2')
ylabel('vel3')
grid
subplot(2,2,2)
plot(the(1,:),v34(2,:));
title('Velocity4')
xlabel('theta2')
ylabel('Vel4')
grid
i = 1;
for th = 0:1:360
    the(i) = th;
    v67(:,i) = fsolve(@velocity2,[-2 -8.876623377], options, [theta34(2,i) theta67(1,i) theta67(2,i) v34(2,i)]);
    i = i + 1;
end
subplot(2,2,3)
plot(the(1,:),v67(1,:));
title('Velocity 5')
xlabel('theta2')
ylabel('vel5')
grid
subplot(2,2,4)
plot(the(1,:),v67(2,:));
title('Vc')
xlabel('theta2')
ylabel('Vc')
grid
i = 1;
for th = 0:1:360
    the(i) = th;
    alpha34(:,i) = fsolve(@Acceleration01,[10 10], options, [th theta34(1,i) theta34(2,i) v34(1,i) v34(2,i)]);
    i = i + 1;
end
subplot(2,2,1)
plot(the(1,:),alpha34(1,:));
title('alpha3')
xlabel('theta2')
ylabel('alpha3')
grid
subplot(2,2,2)
plot(the(1,:),alpha34(2,:));
title('Alpha4')
xlabel('theta2')
ylabel('alpha4')
grid
i = 1;
for th = 0:1:360
    the(i) = th;
    alpha67(:,i) = fsolve(@Acceleration2,[10 10], options, [theta34(2,i) theta67(1,i) theta67(2,i) v34(2,i) v67(1,i) v67(2,i) alpha34(2,i)]);
    i = i + 1;
end
subplot(2,2,3)
plot(the(1,:),alpha67(1,:));
title('alpha5')
xlabel('theta2')
ylabel('alpha5')
grid
subplot(2,2,4)
plot(the(1,:),alpha67(2,:));
title('Ac')
xlabel('theta2')
ylabel('Ac')
grid
i = 1;