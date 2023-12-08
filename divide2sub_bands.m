function sub_band_Matrix = divide2sub_bands(vector,num_sub_bands)
% divide2sub_bands function convert each band into matrix where each col is
% a sub-band with length l

% Length of each sub_band
l = length(vector) / num_sub_bands;

% Reshape the vector into a matrix of subvectors
sub_band_Matrix = reshape(vector, l,num_sub_bands).';

end