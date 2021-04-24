close all; clear;
t=0:0.05:10;
w=rand(201,1);
k=10;
G=tf([0.5],[1 -1*(1-k) 2*k]);
step(G,t)