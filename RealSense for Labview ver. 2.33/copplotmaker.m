close all, clc;
x=1:1:length(LeftX);
plot(x, LeftX,'b')
hold on
grid on
plot(x,RightX,'r')
xlim([25000 38000])
legend('left','right')
%%
close all
plot(x,LeftY,'b')
hold on

plot(x, RightY,'r')
%%
close all
x2=1:1:length(LeftXX);
plot(x2,LeftXX,'b')
hold on
grid on
plot(x2,RightXX,'r')
%%
close all
x3=1:1:length(LeftX3);
plot(x3,LeftX3,'b')
hold on
grid on
plot(x3,RightX3,'r')
xlim([80000 130000])

