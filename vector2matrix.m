function sub_band_Matrix = vector2matrix(vector,num_sub_bands)
% vector2matrix function convert each band into matrix where each row is
% a sub-band with length l

% Length of each sub_band
l = length(vector) / num_sub_bands;

% Reshape the vector into a matrix of subvectors
sub_band_Matrix = reshape(vector, l,num_sub_bands).';

end