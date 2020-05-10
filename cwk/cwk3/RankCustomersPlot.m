function rankings = RankCustomersPlot()

data = readtable('purchasing_order.csv');

orders_C = data(ismember(data.Product_Category,{'C'}) & ismember(data.Return,{'N'}) ,:);
[unique_cust, ~, idx] = unique(orders_C.Customer_ID);
avg_value = accumarray(idx, orders_C.Product_Value, [], @mean);
avg_rating = accumarray(idx, orders_C.Rating, [], @mean);

max_value = max(avg_value);

norm_value = avg_value / max_value;
norm_rating = avg_rating / 5;
norm_sum = norm_value + norm_rating;

customers_C = table(unique_cust, norm_value, norm_rating, norm_sum);
rankings = sortrows(customers_C, {'norm_sum'}, {'descend'});

disp('Top 10 Customers');
disp(rankings(1:10,:));

disp('Bottom 10 (91-100) Customers');
disp(rankings(91:100,:));

figure
hold on
xlabel('Normalised Mean Product\_Value', 'Fontsize', 14, 'fontname', 'times roman');
ylabel('Normalised Mean Rating', 'Fontsize', 14, 'fontname', 'times roman');

scatter(rankings.norm_value(1:100), rankings.norm_rating(1:100),'+', 'MarkerEdgeColor', [0.8500 0.3250 0.0980], 'LineWidth',2);
scatter(rankings.norm_value(101:end), rankings.norm_rating(101:end),'+', 'MarkerEdgeColor', [0 0.4470 0.7410], 'LineWidth',2);
lg = legend('Top 100','Rest', 'fontsize', 14, 'fontname', 'times roman');
set(lg,'Location','East','box','on');
hold off
end