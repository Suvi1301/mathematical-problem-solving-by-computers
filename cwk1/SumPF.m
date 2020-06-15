function SumPF
% SUMPF find an approximation of the sum of reciprocal squares with prime factors

N = 1000000;
sum = 1; % Value of the series upto N terms
basel_sum = 1; % Value of basel problem upto N terms
upper_b = 0; % Upper bound of the value of the series for k terms
lower_b = 0; % Lower bound of the value of the series for k terms
tolerance = 0;
result = [];

for k = 2:N
    sum = sum + (((-1)^length(factor(k)))/k^2); % add terms for our problem (3.1)
    basel_sum = basel_sum + 1/k^2; % add terms for the Basel problem (3.2)
    basel_err = ((pi^2)/6 - basel_sum); % error of the basel problem (3.3)
    upper_b = sum + basel_err;
    lower_b = sum - basel_err;
    % Increase the number of decimal places till the lower and upper bound are equal.
    while (round(lower_b, tolerance) == round(upper_b, tolerance))
        result = [sum; round(sum, tolerance); tolerance; k;];
        tolerance = tolerance + 1;
    end
end
disp(result(1));
disp("Value = " + num2str(result(2)));
disp("Accuracy = " + num2str(result(3)) + " decimal digits");
disp("Number of truncated terms = " + num2str(result(4)));
end