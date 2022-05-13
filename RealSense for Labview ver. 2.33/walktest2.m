%Part 1 COP normal walking, zoomed in view and compared to live video
s1=Sensor1;
s2=Sensor2;
s3=Sensor3;
s4=Sensor4;
s5=Sensor5;
s6=Sensor6;
s7=Sensor7;
s8=Sensor8;
a=[s1+s2+s3+s4];
A=mean(a)
bol=a>1;
x1=bol.*[s1+s2-s3-s4]./a;
X1=[s1+s2-s3-s4]/A
b=[s5+s6+s7+s8];
bol1=b>1;

x2=bol1.*[s5+s6-s7-s8]./b;
plot([x1 x2])
legend('Left COP', 'Right COP')
title('COP')
xlabel('Milliseconds')
ylabel('COP position')

%%
%Part 2 COP limping plots
ss1=Sensor9;
ss2=Sensor10;
ss3=Sensor11;
ss4=Sensor12;
ss5=Sensor13;
ss6=Sensor14;
ss7=Sensor15;
ss8=Sensor16;

aa=[ss1+ss2+ss3+ss4];
bol2=aa>1;
xx1=bol2.*[ss1+ss2-ss3-ss4]./aa;
bb=[ss5+ss6+ss7+ss8];
bol3=bb>1;
xx2=bol3.*[ss5+ss6-ss7-ss8]./bb;
plot([xx1 xx2])
xlim([22000 50000])
legend('Left COP', 'Right COP')
title('Limping COP')
xlabel('Milliseconds')
ylabel('COP position')
%%
%Part 3 COP narmal walking compared to camera program
S1=Sensor17;
S2=Sensor18;
S3=Sensor19;
S4=Sensor20;
S5=Sensor21;
S6=Sensor22;
S7=Sensor23;
S8=Sensor24;
a2=[S1+S2+S3+S4];

Bol=a2>1;
x_1=Bol.*[S1+S2-S3-S4]./a2;

b2=[S5+S6+S7+S8];
Bol1=b2>1;

x_2=Bol1.*[S5+S6-S7-S8]./b2;
plot([x_1 x_2])
legend('Left COP', 'Right COP')
title('COP')
xlabel('Milliseconds')
ylabel('COP position')
%%
%Part 4 gait cycle time normal walking
aright=[66983 69650 72591 74617 76897 79004 81306 83739 85868 88138];
bright=diff(aright);
cright=mean(bright);

aleft=[68419 70970 73444 75685 77866 80081 82508 84745 86953 89253];
bleft=diff(aleft);
cleft=mean(bleft);

aboth=[66983 68419 69650 70970 72591 73444 74617 75685 76897 77866 79004 80081 81306 82508 83739 84745 85868 86953 88138 89253];
bboth=diff(aboth);
cboth=mean(bboth);
ax=1:1:9;
bar(ax, bboth)
%%
%Part 5 gait cycle time limping
aright2=[23863 25779 27710 29660 31800 33742 36087 38213 40143 42178];
bright2=diff(aright2);
cright2=mean(bright2);

aleft2=[24895 26825 28810 30661 32797 34925 37430 39184 41264 43310];
bleft2=diff(aleft2);
cleft2=mean(bleft2);

aboth2=[23863 24895 25779 26825 27710 28810 29660 30661 31800 32797 33742 34925 36087 37430 38213 39184 40143 41264 42178 43310];
bboth2=diff(aboth2);
cboth2=mean(bboth2);


bar(ax,bright2)
hold on
bar(ax,bleft2)
