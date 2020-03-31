function [value, isterminal, direction] = Events1(~, x)

% The event when vertical displacement = 0. Terminates the ODE.
value(1) = x(3);
isterminal(1) = 1;
direction(1) = -1;