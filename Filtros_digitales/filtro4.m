% FFT de señales
n = length(t);
f = fs*(0:(n/2))/n;

Y_orig = abs(fft(signal_noisy)/n);
Y_iir = abs(fft(signal_filtered_iir)/n);
Y_fir = abs(fft(signal_filtered_fir)/n);

% Graficar espectros
figure;
plot(f, Y_orig(1:n/2+1), 'r'); hold on;
plot(f, Y_iir(1:n/2+1), 'b');
plot(f, Y_fir(1:n/2+1), 'g');
title('Comparación en el dominio de la frecuencia');
legend('Original','IIR','FIR');
xlabel('Frecuencia (Hz)'); ylabel('Magnitud');
