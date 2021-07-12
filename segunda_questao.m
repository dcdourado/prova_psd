clear
clc

Ts = 0.1;
Hs = tf([1], [1 1 0]);
Hz = c2d(Hs, Ts, 'tustin'); # tustin = bilinear

figure(2);
grid on;
step(Hz, 1);

[Y, T, X] = step(Hz,1);

# a pedido da questão

for i = 1:length(Y)
  Y(i)
endfor
