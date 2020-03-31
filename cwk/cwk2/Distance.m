function minus_dist = Distance(theta)
% Distance solves coupled ODE system for given launch angle and returns the 
% negative distance.

% Solve the ODE numerically
[~, x] = Projectile(theta, @Events1);
minus_dist = -x(end,1);
end
