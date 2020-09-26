clear
close all

% set range of initial conditions
v0 = 0:0.1:50; % initial speed in m/s
theta = 0:0.01:pi/2.0; % initial angle in radians

% use meshgrid to get matrices of the initial conditions
% YOUR CODE HERE

% determine distance traveled (before first hit!)
% YOUR CODE HERE

% plot vertical vs. horizontal motion
subplot(2,1,1);
contourf(V,T*180/pi,distance);  % plot angle in degrees because most humans
                                % have a better sense of what that means
colorbar
xlabel('Speed (m/s)');
ylabel('Angle (deg)');
title('Distance traveled before first impact');
grid on;
ax = gca;
ax.FontSize = 20;

% plot viable speed and angle combinations
distMin = 110; % distance to the front of the green (in meters)
distMax = 125; % distance to the back of the green (in meters)
loc =  % YOUR CODE HERE      % locations where distance 
                             % is within desired range
subplot(2,1,2);
contourf(V,T*180/pi,loc);   % plot angle in degrees because most humans
                            % have a better sense of what that means
colorbar
xlabel('Speed (m/s)');
ylabel('Angle (deg)');
title('Viable combinations of speed and angle');
grid on;
ax = gca;
ax.FontSize = 20;

