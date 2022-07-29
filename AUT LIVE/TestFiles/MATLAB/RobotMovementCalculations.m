x = 552.8, y = -553.6, z = 1306.2, d = 160

%% Checking Points
P2 = [666.46, -666.53] %Say this is given from Comp Vis Program
P1 = [552.8, -553.6] %Original Camera Pos Coord
Dif = P2 - P1
Dif(1,1)
Dif(1,2)

%% Vertical Movement
% E.g. moving 160mm vertically
Hx = Dif(1,1)/cos(45)
Hy = Dif(1,2)/cos(45)
xDistance = x + (Hx/2)
yDistance = y + (Hy/2)
move = [xDistance yDistance]

%% Test 2 - Using Rotation of Axes (https://en.wikipedia.org/wiki/Rotation_of_axes)
vertDis = 70;
HorizonDis = -1175;
% ang = (3/4)*pi %Angle between Camera Frame and the Base Frame of Robot
ang = pi/4;
output = [cos(ang) sin(ang); -1*sin(ang) cos(ang)]*[HorizonDis; vertDis]

x = output(1) + 456.795088175
y = output(2) + 275.775662061
% testX = [0, 74.2462, 74.2462, 148.4924];
% testY = [0,-74.2462,74.2462, -0.00001];
% One = [473.5,410]
% Two = [547.7462,335.7538]
% Three = [547.7462,484.2462]
% Four = [621.9924,410]
% Five = [473.5,410]
% Six = [];
% figure(1);
% scatter(testX, testY);

%% BoxTable Bottom-Left Coordinates (from bottom-right pos)
vertDis = 70; %Axis angle is off + 70 to make it move in straight line from bottom-right
HorizonDis = -1175; %30mm off from 1205
% ang = (3/4)*pi %Angle between Camera Frame and the Base Frame of Robot
ang = pi/4;
output = [cos(ang) sin(ang); -1*sin(ang) cos(ang)]*[HorizonDis; vertDis]

x = output(1) + 456.795088175
y = output(2) + 275.775662061

%% BoxTable BottomCentre Coordinates (from bottom-right pos)
vertDis = 70; %70 + 400(half of width of table)
HorizonDis = -1175/2; %30mm off from 1205
% ang = (3/4)*pi %Angle between Camera Frame and the Base Frame of Robot
ang = pi/4;
output = [cos(ang) sin(ang); -1*sin(ang) cos(ang)]*[HorizonDis; vertDis]

x = output(1) + 456.795088175
y = output(2) + 275.775662061

%% BoxTable Centre Coordinates (from bottom-right pos)
% -20x and 163y is distance between the camera and the gripper
vertDis = 400-163; %400(half of width of table)
HorizonDis = -1175/2 + 20; %30mm off from 1205
% ang = (3/4)*pi %Angle between Camera Frame and the Base Frame of Robot
ang = pi/4;
output = [cos(ang) sin(ang); -1*sin(ang) cos(ang)]*[HorizonDis; vertDis]

x = output(1) + 456.795088175
y = output(2) + 275.775662061

%% BoxTable Top-Left Coordinates (from bottom-left pos)
vertDis = 800;
HorizonDis = 0;
% ang = (3/4)*pi %Angle between Camera Frame and the Base Frame of Robot
ang = pi/4;
output = [cos(ang) sin(ang); -1*sin(ang) cos(ang)]*[HorizonDis; vertDis]

x = output(1) + -324.5579
y = output(2) + 1156.1