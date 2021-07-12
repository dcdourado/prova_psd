clear
clc

tempo_de_amostragem = 1

h = [0, -0.0003, -0.0009, 0.0027, 0.0101, 0, -0.0386, -0.043, 0.0794, 0.2906, 0.3999, 0.2906, 0.0794, -0.043, -0.0386, 0, 0.0101, 0.0027, -0.0009, -0.0003, 0];

fa = 100;
ta = 1/fa;
t = 0:ta:tempo_de_amostragem;

sinal = 10*sin(2*pi*20*t) + 10*sin(2*pi*40*t);

y = conv(h, sinal, "same"); # same mantém o resultado no length de A (considerando A, B)
plot(y)

for i=1:4
  y(i)
endfor
