function params = LogisticFunction()
% Returns the optimised parameters alpha and beta in P(r).

data = readtable('purchasing_order.csv');

% Pre-processing stage to extract relevant data.
cust_ret = data(ismember(data.Return, {'Y'}), :).Customer_ID;
all_orders = data(ismember(data.Customer_ID, cust_ret), :);
orders_w_rating = all_orders(all_orders.Rating > 0, :);
ratings = orders_w_rating.Rating;
probs = strcmp(orders_w_rating.Return, 'Y');

% Optimise the parameters by minimising the sum of squares loss function.
params = fminsearch(@(a) sumsquareloss(a, ratings, probs), [0 0]);
end
