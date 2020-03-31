function [t, x] = Projectile(angle, events)
m = 6;
K = 2e-5;
g = 9.8;
v_0 = 450;
span = [0, (2*v_0*sin(angle))/g];

opts = odeset('Refine', 32, 'Events', events);

% ODE system described in (1.1)
f = @(t, s) [s(2); (-K/m)*sqrt(s(2)^2+s(4)^2)*s(2); s(4); -g - (K/m)*sqrt(s(2)^2 + s(4)^2)*s(4)];

% Initial conditions described in (1.2)
ic = [0; v_0*cos(angle); 0; v_0*sin(angle)];

% Solve the ODE numerically
[t, x] = ode45(f, span, ic, opts);
end