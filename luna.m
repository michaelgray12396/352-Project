function [lunar_position] = luna(t)
T=2551443; %lunar period in seconds
r_moon = 385000.6; %radius of center of earth to center of moon
f=2*pi*mod(t,T)/T; %true anomaly of the moon (note that we assume circular orbit)
lunar_position = r_moon*[cos(f),sin(f),0]; %return moon position
end