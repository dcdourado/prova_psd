clear
clc

num_amostras = 30;

amplitudes = [5, 5, 5];
frequencies = [5, 25, 50];
Fs = max(frequencies) * 2 + 1 # teorema de nyquist exige > 2 vezes a maior frequencia
Ts = 1 / Fs;

t = 0:Ts:(num_amostras-1)*Ts;

signal = 0;
for i=1:length(amplitudes)
  w = 2 * pi * frequencies(i);
  signal = signal + amplitudes(i)*cos(w * t);
endfor

figure(1);
grid on;
plot(t, signal);

# a pedido da questão

for i=1:30
  signal(i)
endfor

length(signal)