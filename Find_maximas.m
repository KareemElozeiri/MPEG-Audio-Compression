function [peakValues,peakIndices] = Find_maximas(vector)

% Find max in the vector
maxValue = max(vector);
% if the max SPL is zero set zero at the beginning and return
if maxValue == 0
    peakValues = 0;
    peakIndices = 1;
else
    % get the index of the max value
    maxIndex = find(vector==maxValue);
    % Find the peaks in the vector
    [peakValues, peakIndices] = findpeaks(vector);
    % check redundancy
    if (~(ismember(maxValue,peakValues)))
        peakValues(end+1) = maxValue;
        peakIndices(end+1) = maxIndex;
    end

end

end