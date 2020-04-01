function [value, isterminal, direction] = InterceptorEvent(~, x)

% Terminate the ode when horizontal distance = 12000m
value(1) = x(1) - 12000;
isterminal(1) = 1;
direction(1) = 1;