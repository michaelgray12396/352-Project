function [state] = gravity(t,y)
G = 6.67408e-20; %universal gravitational constant (km, not m)
Me = 5.972e24; %mass of the earth
r_e = sqrt((y(1))^2+(y(2))^2+(y(3))^2); %current radius from earth
g_e = -(Me*G/r_e^3)*[y(1),y(2),y(3)]; %gravity acceleration vector from earth
p_m = luna(t); %get lunar position
Mm = 7.34767309e22; %mass of the moon
r_m = sqrt((y(1)-p_m(1))^2+(y(2)-p_m(2))^2+(y(3)-p_m(3))^2); %current radius from moon
g_m = -(Mm*G/r_m^3)*[y(1)-p_m(1),y(2)-p_m(2),y(3)-p_m(3)]; %gravity acceleration vector from moon
state = [y(4);y(5);y(6);g_e(1)+g_m(1);g_e(2)+g_m(2);g_e(3)+g_m(3)]; %return state vector
end