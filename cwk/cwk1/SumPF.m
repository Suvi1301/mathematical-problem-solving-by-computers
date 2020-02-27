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
    sum = sum + (((-1)^length(factor(k)))/k^2);
    basel_sum = basel_sum + 1/k^2;
    basel_err = ((pi^2)/6 - basel_sum);
    upper_b = sum + basel_err;
    lower_b = sum - basel_err;
    while (round(lower_b, tolerance) == round(upper_b, tolerance))
        result = [round(sum, tolerance); tolerance; k];
        tolerance = tolerance + 1;
    end
end

disp("Value = " + num2str(result(1)));
disp("Accuracy = " + num2str(result(2)) + " decimal digits");
disp("Number of truncated terms = " + num2str(result(3)));
end