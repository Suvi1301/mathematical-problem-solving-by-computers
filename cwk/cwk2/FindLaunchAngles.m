function [ang1, ang2] = FindLaunchAngles(target)
% FindLaunchAngles Calculate the two launch angles to hit given target

distances = @(angle) -Distance(angle) - target;
ang1 = rad2deg(fzero(distances, pi/8));
ang2 = rad2deg(fzero(distances, pi/4));

end