function [freq_signal] = windowed_FFT(signal,N)
%signal: time signal to perform FFT on
%N: length of output FFT


freq_signal = zeros(1,N);
%extending the signal to be able to loop of segements of length N
seg_num = ceil(length(signal)/N);
extended_signal = zeros(1,seg_num*N);
extended_signal(1:length(signal)) = signal;

window = hanning(N)';


for i=1:N:length(extended_signal)
    window_partition = extended_signal(i:i+N-1) .* window;
    freq_signal  = freq_signal + abs(fftshift(fft(window_partition)));
end



freq_signal = freq_signal/seg_num;

end