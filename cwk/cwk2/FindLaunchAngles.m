function [ang1, ang2] = FindLaunchAngles(target)
% FindLaunchAngles Calculate the two launch angles to hit given target

distances = @(angle) -Distance(angle) - target;
ang1 = fzero(distances, [eps, 0.77842]);
ang2 = fzero(distances, [0.77842, pi/2]);
end