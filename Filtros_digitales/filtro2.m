fc = 100;  % Frecuencia de corte
[b,a] = butter(4, fc/(fs/2), 'low');  % Filtro Butterworth de orden 4
signal_filtered_iir = filtfilt(b, a, signal_noisy);  % Filtrado

% Graficar comparación
figure;
plot(t, signal_noisy, 'r'); hold on;
plot(t, signal_filtered_iir, 'b', 'LineWidth', 1.5);
title('Filtro IIR Butterworth pasa bajos');
legend('Señal con ruido','Señal filtrada');
xlabel('Tiempo'); ylabel('Amplitud');
