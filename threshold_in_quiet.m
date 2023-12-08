function A = threshold_in_quiet(freq)

f = freq/1000;
A = 3.64*f.^(-0.8) - 6.5*exp(-0.6*(f-3.3).^2) + (10^(-3))*f.^4;

end