%inital conditions
x0 = 383270;
y0 = 0;
z0 = 0;
vx0 = 0;
vy0 = 2;
vz0 = 0;
initial_state = [x0;y0;z0;vx0;vy0;vz0];
%calculation
options = odeset('Events',@event_function,'RelTol',1e-7); %collision and tightening of tolerance
i = 50; %one approximately corresponds to one orbit in LEO, this is a convenient time interval
s = 1; %amount of timesteps per second
[t,y] = ode113(@gravity,linspace(0,5400*i,5400*s*i),initial_state,options);
%plotting
plot3(y(:,1),y(:,2),y(:,3))