close all
clc
%% Time Vector
t = 0.1:0.1:80;
t = t';
Kp = 500;
%% Ki = 1
Ki1 = 1;
num1 = [0.06*Kp 0.06*Ki1];
den1 = [1 0.01*(1+0.1*Kp) 0.001*Ki1];
G1 = tf(num1,den1);
y1 = step(G1,t);
%% Ki = 5
Ki2 = 5;
num2 = [0.06*Kp 0.06*Ki2];
den2 = [1 0.01*(1+0.1*Kp) 0.001*Ki2];
G2 = tf(num2,den2);
y2 = step(G2,t);
%% Ki = 10
Ki3 = 10;
num3 = [0.06*Kp 0.06*Ki3];
den3 = [1 0.01*(1+0.1*Kp) 0.001*Ki3];
G3 = tf(num3,den3);
y3 = step(G3,t);
%% Plot gambar
plot(t,y1,t,y2,t,y3)
grid on
xlabel('Time (s)')
ylabel('Velocity (m/s)')