function dist = Distance(theta)
% Distance solves coupled ODE system for given launch angle and returns the
% distance

% Solve the ODE numerically
[~, x] = Projectile(theta, @GroundEvent);
dist = x(end,1);
end
