f_low = 40; f_high = 220;  % Banda de paso
N = 50;                    % Orden del filtro
fir_bandpass = fir1(N, [f_low f_high]/(fs/2), hamming(N+1));  % Filtro FIR

signal_filtered_fir = filtfilt(fir_bandpass, 1, signal_noisy);

% Graficar comparación
figure;
plot(t, signal_noisy, 'r'); hold on;
plot(t, signal_filtered_fir, 'g', 'LineWidth', 1.5);
title('Filtro FIR pasa bandas con ventana Hamming');
legend('Señal con ruido','Señal filtrada');
xlabel('Tiempo'); ylabel('Amplitud');
