close all, clc;
x=1:1:length(Posbody);
plot(x,Posbody,'k')
hold on
grid on
plot(x,Posleft,'b')
plot(x,Posright,'r')
xlim([900 1200])
legend('Body', 'Left leg', 'Right leg')
xlabel('Iteration')
ylabel('Position, mm')
title('Limping position plot')
%%
close all
plot(x,(velbody/10),'k','LineWidth',1.5)
hold on
grid on
plot (x, (velleft/10),'b')
plot(x,(velright/10),'r')
xlim([700 1100])
legend('Body','Left leg','Right leg')
xlabel('Iteration')
ylabel('Velocity, m/s')
title('Limping velocity plot')

%%
close all
plot(x,Leftcop)
hold on
grid on
plot(x,Rightcop)
ylim([-1.5 1.5])
xlim([16250 19853])
legend('leftcop','rightcop')