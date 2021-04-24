close all
clc
%% Time Vector
t = 0.1:0.1:80;
t = t';
%% Kp = 100
Kp1 = 100;
num = 0.06*Kp1;
den = [1 0.01+0.001*Kp1];
G1 = tf(num,den);
y1=step(G1,t);
%% Kp = 200
Kp2 = 200;
num = 0.06*Kp2;
den = [1 0.01+0.001*Kp2];
G2 = tf(num,den);
y2=step(G2,t);
%% Kp = 500
Kp3 = 500;
num = 0.06*Kp3;
den = [1 0.01+0.001*Kp3];
G3 = tf(num,den);
y3=step(G3,t);
%% Plot gambar
plot(t,y1,t,y2,t,y3)
grid on
xlabel('Time (s)')
ylabel('Velocity (m/s)')