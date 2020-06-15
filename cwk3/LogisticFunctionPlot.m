function params = LogisticFunctionPlot()

data = readtable('purchasing_order.csv');

% Pre-processing stage to extract relevant data.
cust_ret = data(ismember(data.Return,{'Y'}),:).Customer_ID;
all_orders = data(ismember(data.Customer_ID, cust_ret),:);
orders_w_rating = all_orders(all_orders.Rating > 0,:);
ratings = orders_w_rating.Rating;
probs = strcmp(orders_w_rating.Return, 'Y');

% Find the parameters by minimising the sum of squares loss function.
params = fminsearch(@(a) sumsquareloss(a, ratings, probs), [0 0]);

% Plot the logistic regression function.
hx = linspace(0,6,1001);
plot(ratings, probs, 'o', hx, 1./(1 + exp(-params(1) * hx-params(2))), 'Linewidth', 2);
lg = legend('Raw Data','Logistic Regression', 'fontsize', 14, 'fontname', 'times roman');
set(lg,'Location','East','box','off');
xlabel('Rating', 'fontsize', 14, 'fontname', 'times roman');
ylabel('P(r)', 'fontsize', 14, 'fontname', 'times roman');
axis([0 6 -0.1 1.1]);
end
