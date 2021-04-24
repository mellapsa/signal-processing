close all
clc
%% Transfer Function
t = 0.1:0.1:10;
Kd = input('Masukkan nilai Kd = ');
Kp1 = input('Masukkan nilai Kp pertama = ');
Kp2 = input('Masukkan nilai Kp kedua = ');
num1 = [10*Kd 10*Kp1];
den1 = [1 0.1+10*Kd 10*Kp1];
num2 = [10*Kd 10*Kp2];
den2 = [1 0.1+10*Kd 10*Kp2];
G1 = tf(num1,den1);
G2 = tf(num2,den2);
%% Plot Gambar
y1 = step(G1,t);
y2 = step(G2,t);
plot(t,y1,t,y2);
grid on
xlabel('Time (s)');
ylabel('Position (rad)');