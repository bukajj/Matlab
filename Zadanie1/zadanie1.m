clear all
close all
clc

m=1; %masa
d=0.1; %wsp�czynnik t�umienia/tarcia spr�yny
k=1; %wsp�czynnik sztywno�ci spr�yny
F=5; %si�a zewn�trzna

A = [0 1; -k/m -d/m];
B = [0 1/m]';
C = [1 0];
D = [0];
sys = ss(A,B,C,D); %tworzy model zmiennych stanu

licznik=1;
mianownik=[m d k];
G=tf(licznik,mianownik);


subplot(2,2,1);
impulse(sys);
title('Impulse sys');
grid on;

subplot(2,2,2);
impulse(G);
title('Impulse G');
grid on;

subplot(2,2,3);
step(sys);
title('Step sys');
grid on;

subplot(2,2,4);
step(G);
title('Step G');
grid on;
