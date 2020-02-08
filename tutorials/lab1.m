%% Question 1

format compact
format long

% easy to see the "similar" values and their differences put in a vector
[pi, 103993/33102, pi-103993/33102]

[factorial(10), factorial(6)*factorial(7), factorial(3)*factorial(5)*factorial(7)]

[log(2), (2/5)^(2/5), log(2) - (2/5)^(2/5)]

[pi^(3^2), 10*exp(2^(3)), pi^(3^2) - 10*exp(2^(3))]

[pi^4 + pi^5, exp(6), pi^4 + pi^5 - exp(6)]


%% Question 2

x = (0:10) % integer array from 0 to 10

zeros(3,4) % 3x4 zero matrix

eye(3) % 3x3 identity matrix

ones(2,3) % 2x3 matrix with ones

2 + 2.*rand(3,3) % 3x3 uniform matrix between 2 and 4

randn(3,3) % 3x3 random normal matrix

1 + sqrt(2).*randn(3,3) % 3x3 random normal with mean 1, variance 2 (std sqrt(2))

%% Question 3

A = zeros(10); % make a 10x10 zero matrix
A(2:9, 2:9) = ones(8); % update 8x8 submatrix with ones
output(A)

%% Question 4

A = rand(3);
[V, D] = eig(A);
A*V(:,1) - D(1,1)*V(:,1) % first eigenpair
A*V(:,2) - D(2,2)*V(:,2) % second eigenpair
A*V(:,3) - D(3,3)*V(:,3) % third eigenpair

% A*V is almost equal to V*D
A*V - V*D

%% Question 5

A = [3 4 5; 2 -3 7; 1 -6 1]
b = [2; -1; 3]
x = linsolve(A,b) % alternatively x = A\b
A*x - b

%% Question 6

% Hilbert Matrix
A = hilb(11);
x = rand(11,1);
b = A*x;
xx = A\b;
x - xx

%% Question 7

A = [3/2 1/2; -1/2 1/2];
A^1000
A^(-10)

%% Question 8

A = magic(3)
diag(A)
a = [1 2 3]
diag(a) % doesnt matter whether column or row matrix

%% Question 9

A = rand(5)
tril(A, 2) % lower triangular part + two upper
tril(A, -1)
triu(A, 3)
triu(A, -2)

%% Question 10

A = ones(10);
triu(tril(A,1), -1) % or tril(triu(A,-1), 1)

