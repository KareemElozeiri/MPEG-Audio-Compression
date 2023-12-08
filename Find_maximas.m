function [peakValues,peakIndices] = Find_maximas(vector)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

% Find max in the vector
maxValue = max(vector);
maxIndices = find(vector==maxValue);
% Find the peaks in the vector
[peakValues, peakIndices] = findpeaks(vector);
% check redundancy
if ~(ismember(maxValue,peakValues))
    peakValues(end+1) = maxValue;
    peakIndices(end+1) = maxIndices;
end

end