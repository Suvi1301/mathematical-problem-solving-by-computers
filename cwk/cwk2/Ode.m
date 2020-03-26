function [t, xa] = Ode(angle)
m = 6;
K = 0.00002;
g = 9.8;

opts = odeset('Refine', 32);

% ODE system to solve
f = @(t, x) [x(2); (-K/m)*sqrt(x(2)^2+x(4)^2)*x(2); x(4); -g - ...
                   (K/m)*sqrt(x(2)^2 + x(4)^2)*x(4)];

% Initial conditions
ic = [0; 450*cos(angle); 0; 450*sin(angle)];

% Solve the ODE numerically
[t, xa] = ode45(f, [0 100], ic, opts);

end