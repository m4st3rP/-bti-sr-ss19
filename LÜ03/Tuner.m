% Audio lesen
[y, SampleFrequence] = audioread('GitOneString.wav');

% Dateigr��e
FileSize = size(y, 1);

% L�nge
T = FileSize/SampleFrequence;

% Frequenzaufl�sung
dF = 1/T;

fVek = zeros(1, FileSize);
tmp = 0;
for i=1:1:FileSize
    fVek(i) = tmp;
    tmp = tmp + dF;
end

sound(y, SampleFrequence);

% DFT
Y = fft(y);

figure(1);
subplot(2,1,1);
plot(1:FileSize, y);
title('Original');
xlabel('Sample');
ylabel('Sample Value');
grid on; hold on;

subplot(2,1,2);
stem(fVek', abs(Y));
title('Absolute FFT');
xlabel('fVek');
ylabel('Sample Value');
grid on;