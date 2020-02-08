format compact
format long

%% Question 1
A = randn(5);
B = randn(5);
[det(A)*det(B), det(A*B), det(A)*det(B) - det(A*B)]

%% Question 2
A = rand(5);
p = poly(A);
[p(2), -trace(A), p(2) - -trace(A)]
[p(6), -det(A), p(6) - -det(A)]  
polyvalm(p,A)

%% Functions and Flow Control

%% Question 1
quadroot(-2)
quadroot(1e8)

%% Question 2
x = 1;
x_count = 0;
while (abs(x - sqrt(2)) > 1e-12)
    x = (x^2 + 2)/(2*x);
    x_count = x_count + 1;
end
[x, sqrt(2)]
disp(['x iterations: ' num2str(x_count)]);

y = 1;
y_count = 0;
while (abs(y - sqrt(2)) > 1e-12)
    y = (y + 2)/(y + 1);
    y_count = y_count + 1;
end
[y, sqrt(2)]
disp(['y iterations: ' num2str(y_count)]);

%% Question 4
number_of_tiles = @(n,k) floor(sqrt(n^2 - k.^2));
number_of_tiles(8,2)

n = 100; [4*sum(number_of_tiles(n,1:n))/n^2, pi]
n = 1000; [4*sum(number_of_tiles(n,1:n))/n^2, pi]
n = 10000; [4*sum(number_of_tiles(n,1:n))/n^2, pi]