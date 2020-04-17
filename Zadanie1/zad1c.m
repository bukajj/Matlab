clear all
close all
clc

T = 2;

Gt2 = tf(1,[2 0]);
Gt10 = tf(1, [10 0]);

subplot(2,1,1);
impulse(Gt2);
xlabel('s');
ylabel('G(s)');
grid on;
hold on;
impulse(Gt10);
title('Impulse')
legend('impulse T=2','impulse T=10');

subplot(2,1,2);
step(Gt2);
xlabel('s');
ylabel('G(s)');
grid on;
hold on;
step(Gt10);
title('Step')
legend('step T=2','step T=10');
