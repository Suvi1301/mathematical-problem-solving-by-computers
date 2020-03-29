function s_x = Distance(angle, plt)
% Distance solves coupled ODE system for given launch angle.
% Call with plt=true to plot the horizontal/vertical displacement.

% set plt to false by default
if nargin < 2
    plt = false;
end

% Solve the ODE numerically
[t, x] = Projectile(angle);
s_x = -x(end,1);

% Plot the projectile trajectory for maximum horizontal distance.
if plt
    plot(x(:,1), x(:,3), 'Linewidth', 2);
    set(gca,'fontsize',18);
    ylim([0,inf]);
    xlabel('Horizontal Distance (m)','fontsize',14,'fontnam','times roman');
    ylabel('Vertical Distance (m)','fontsize',14,'fontnam','times roman')
end
end
