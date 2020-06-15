function rankings = RankCustomers()
% Returns a ranking of the 'most loyal' customers who buy products from 
% Category 'C'.

data = readtable('purchasing_order.csv');

% Filter all orders that were for Category C.
orders_C = data(ismember(data.Product_Category, {'C'}) & ismember(data.Return, {'N'}), :);

% Generate a table with unique Customer_IDs and their average value spent
% and ranking given for Category C orders.
[unique_cust, ~, idx] = unique(orders_C.Customer_ID);
avg_value = accumarray(idx, orders_C.Product_Value, [], @mean);
avg_rating = accumarray(idx, orders_C.Rating, [], @mean);

% The highest amount spent on an order (for normalising Product_Value).
max_value = max(avg_value);

% Normalise the average product values and rankings and find the normalised sum.
norm_value = avg_value / max_value;
norm_rating = avg_rating / 5;
norm_sum = norm_value + norm_rating;

% Create a table containing the Customer_IDs, the normalised Rating,
% Product_Value and their sum.
customers_C = table(unique_cust, norm_value, norm_rating, norm_sum);

% Sort in descending order by the normalised sum to obtain the rankings.
rankings = sortrows(customers_C, {'norm_sum'}, {'descend'});
rankings.Properties.VariableNames([1]) = {'customer_id'};
end