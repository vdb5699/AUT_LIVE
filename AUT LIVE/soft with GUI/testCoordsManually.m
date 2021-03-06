%% Follow Step numbers in order from 1 - 4
%% take photo - Step: 1, 4
camera = photo_acquisition('4416x1242', 1);
image = camera.tempImageLeft(4, '4416x1242', 4, 4, 4, 4);
figure;
imshow(image);
%% connect tcp - Step: 2
tcp = tcpclient("192.168.0.20", 1025);

%% analyse 1st coord - Step: 3
converter = convert_coord();
coord = [1566 186]; %add coord
cap1 = cap(coord, "Brown");
% cap1 = cap(coord, "Red");
[newCamPosX newCamPosY] = converter.convertBrown(cap1.centreCoord(1), cap1.centreCoord(2), 0);
% [newCamPosX newCamPosY] = converter.convertRed(cap1.centreCoord(1), cap1.centreCoord(2), 1);
newCamPosX = newCamPosX + 215;
newCamPosY = newCamPosY + -680.3;

tcp.write(string(newCamPosX))
pause(3)
tcp.write(string(newCamPosY))
% test = read(tcp);
% if char(test) == "PickUp"
% 
% end

%% analyse 2nd coord - Step: 5
coord = [1147 634]; %add coord
cap2 = cap(coord, "Brown");
% cap2 = cap(coord, "Red");
[posX, posY] = converter.convertBrown(cap2.centreCoord(1), cap2.centreCoord(2), 1);
% [posX, posY] = converter.convertRed(cap2.centreCoord(1), cap2.centreCoord(2),2);
% camToGrip = converter.convertDirection(100.3,160.625, (3*pi)/4);
% camToGrip = converter.convertDirection(-15,163, (3*pi)/4);
camToGrip = converter.convertDirection(-15+5+6,163-5-10, (3*pi)/4);
posX = newCamPosX + camToGrip(1) + posX;
posY = newCamPosY + camToGrip(2) + posY;
tcp.write(string(posX))
pause(3)
tcp.write(string(posY))