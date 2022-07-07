%%
%take photo
camera = photo_acquisition('4416x1242', 1);
fig = figure;
camera = camera.setVars("4416x1242", 4,4,4,4);
imshow(camera.manualImageAcq());
%%
tcp = tcpclient("192.168.0.20", 1025);

%% analyse 1st coord
converter = convert_coord();
coord = [1510 170]; %add coord
cap1 = cap(coord, "Brown");
% cap1 = cap(coord, "Red");
% [newCamPosX newCamPosY] = converter.convertBrown(cap1.centreCoord(1), cap1.centreCoord(2));
[newCamPosX newCamPosY] = converter.convertRed(cap1.centreCoord(1), cap1.centreCoord(2), 1);
newCamPosX = newCamPosX + 326.9438
newCamPosY = newCamPosY + -581.9982

tcp.write(string(newCamPosX))
pause(3)
tcp.write(string(newCamPosY))

%% analyse 2nd coord
coord = [1108 588]; %add coord
cap2 = cap(coord, "Brown");
% cap2 = cap(coord, "Red");
% [posX, posY] = converter.convertBrown(cap2.centreCoord(1), cap2.centreCoord(2));
[posX, posY] = converter.convertRed(cap2.centreCoord(1), cap2.centreCoord(2),2);
% camToGrip = converter.convertDirection(100.3,160.625, (3*pi)/4);
camToGrip = converter.convertDirection(110.3,160.625, (3*pi)/4);
posX = newCamPosX + camToGrip(1) + posX
posY = newCamPosY + camToGrip(2) + posY
tcp.write(string(posX))
pause(3)
tcp.write(string(posY))