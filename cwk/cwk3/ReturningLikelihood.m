function return_prob = ReturningLikelihood()
% Returns the average likelihood of customers placing future orders after
% refunding an order.

data = readtable('purchasing_order.csv');

returned_transactions = data(ismember(data.Return, {'Y'}), :);
returned_customers = unique(returned_transactions.Customer_ID);
likelihood = zeros([length(returned_customers), 1]);

for i = 1:length(returned_customers)
    all_orders = data(data.Customer_ID == returned_customers(i), :);
    orders_no_return = all_orders(ismember(all_orders.Return, {'N'}), :);
    total_spent = sum(orders_no_return.Product_Value);
    return_date = all_orders(ismember(all_orders.Return, {'Y'}), :).Date(1);
    spent_after_return = sum(all_orders(ismember(all_orders.Return, {'N'}) ...
        & all_orders.Date > return_date, :).Product_Value);
    likelihood(i) = spent_after_return / total_spent;
end
likelihood = likelihood*100;
return_prob = mean(likelihood);
end