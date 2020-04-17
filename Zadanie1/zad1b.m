clear all
close all
clc

k = 5;
T = 2;

Gt2 = tf([k 0],[2 1]);
Gt10 = tf([k 0], [10 1]);
Gk5 = tf([5 0], [T 1]);
Gk10 = tf([10 0], [T 1]);

subplot(2,2,1);
impulse(Gt2);
xlabel('s');
ylabel('G(s)');
grid on;
hold on;
impulse(Gt10);
title('Impulse k=5')
legend('impulse T=2','impulse T=10');

subplot(2,2,2);
step(Gt2);
xlabel('s');
ylabel('G(s)');
grid on;
hold on;
step(Gt10);
title('Step k=5')
legend('step T=2','step T=10');

subplot(2,2,3);
impulse(Gk5);
xlabel('s');
ylabel('G(s)');
grid on;
hold on;
impulse(Gk10);
title('Impulse T=2')
legend('impulse k=5','impulse k=10');

subplot(2,2,4);
step(Gk5);
xlabel('s');
ylabel('G(s)');
grid on;
hold on;
step(Gk10);
title('Step T=10')
legend('step k=5','step k=10');
