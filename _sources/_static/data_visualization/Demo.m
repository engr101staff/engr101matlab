%% Spiral graph

figure()
t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t)

%% Two graphs on the same figure

figure()
t = 0:pi/500:pi;
xt1 = sin(t).*cos(10*t);
yt1 = sin(t).*sin(10*t);
zt1 = cos(t);

xt2 = sin(t).*cos(12*t);
yt2 = sin(t).*sin(12*t);
zt2 = cos(t);
plot3(xt1,yt1,zt1,xt2,yt2,zt2)

%% More complicated surface

figure()
t = 0:pi/500:40*pi;
xt = (3 + cos(sqrt(32)*t)).*cos(t);
yt = sin(sqrt(32) * t);
zt = (3 + cos(sqrt(32)*t)).*sin(t);
plot3(xt,yt,zt)

%% Setting axis equal to not stretch axis

figure()
t = 0:pi/500:40*pi;
xt = (3 + cos(sqrt(32)*t)).*cos(t);
yt = sin(sqrt(32) * t);
zt = (3 + cos(sqrt(32)*t)).*sin(t);
plot3(xt,yt,zt)
axis equal
xlabel('x(t)')
ylabel('y(t)')
zlabel('z(t)')

%% Scatter plot spiral

z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);
scatter3(x,y,z)
view(-30,10)

%% A filled scatter plot

figure()
scatter3(x,y,z,'filled')
view(-30,10)

%% Scatter plot with stars

figure()
scatter3(x,y,z,'*')
view(-30,10)