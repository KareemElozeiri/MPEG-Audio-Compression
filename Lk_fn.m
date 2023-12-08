function Lk = Lk_fn(N,spectrum)

Lk = 96 + 10*log10(4/(N^2)*(spectrum).^2*8/3);

end