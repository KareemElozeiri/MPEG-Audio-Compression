function PQMF_Coeffs = PQMF_ReadCoeffs()
% PQMF_ReadCoeffs: This is a function to read the coefficients for 
% the subbands filter, as in the standard

% Inputs: N/A
% Outputs: PQMF_Coeffs : the filter coefficients

coeff_file = fopen('filters.txt','r');
formatSpecs='%f';
matSize = [1 Inf];
PQMF_Coeffs = fscanf(coeff_file,formatSpecs,matSize);
fclose(coeff_file);

% 256 -> 257
% 257 + n = 257 - n 
L = length(PQMF_Coeffs)
for i = 1 : 513 - L
    PQMF_Coeffs(L+i) = PQMF_Coeffs(L-i); 
end

end