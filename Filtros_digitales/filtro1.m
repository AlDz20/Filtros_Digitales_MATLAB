fs = 1000;                  % Frecuencia de muestreo (Hz)
t = 0:1/fs:1-1/fs;          % Vector de tiempo de 1 segundo
f1 = 50; f2 = 200;          % Frecuencias de componentes
signal_clean = sin(2*pi*f1*t) + sin(2*pi*f2*t);  % Señal compuesta
noise = randn(size(t));     % Ruido blanco
signal_noisy = signal_clean + noise;             % Señal con ruido

% Graficar señal original y con ruido
figure;
subplot(2,1,1); plot(t, signal_clean); title('Señal limpia'); xlabel('Tiempo'); ylabel('Amplitud');
subplot(2,1,2); plot(t, signal_noisy); title('Señal con ruido'); xlabel('Tiempo'); ylabel('Amplitud');
