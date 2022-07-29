%% BoxTable Centre Coordinates (from bottom-right pos)
vertDis = 0; %70 + 400(half of width of table)
HorizonDis = 0; %30mm off from 1205
% ang = (3/4)*pi %Angle between Camera Frame and the Base Frame of Robot
ang = pi/4;
output = [cos(ang) sin(ang); -1*sin(ang) cos(ang)]*[HorizonDis; vertDis]

x = output(1) + 456.795088175
y = output(2) + 275.775662061

value = [x,y]

vertDis = 70; %70 + 400(half of width of table)
HorizonDis = -1175; %30mm off from 1205
% ang = (3/4)*pi %Angle between Camera Frame and the Base Frame of Robot
ang = pi/4;
output = [cos(ang) sin(ang); -1*sin(ang) cos(ang)]*[HorizonDis; vertDis]

x2 = output(1) + 456.795088175
y2 = output(2) + 275.775662061

value2 = [x2,y2];

%% Gradient
plot([value(1) value2(1)],[ value(2) value2(2)], '-o')
diff = (value2(:) - value(:));
gradient = diff(2)/diff(1)
equation = gradient*value + value
%% test gradient
value + value*gradient