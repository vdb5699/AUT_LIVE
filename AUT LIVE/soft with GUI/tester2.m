%%
%take photo
camera = photo_acquisition('4416x1242', 1);
fig = figure;
camera = camera.setVars("4416x1242", 4,4,4,4);
imshow(camera.manualImageAcq());

%% analyse 1st coord
converter = convert_coord();
coord = [1427 505]; %add coord
% cap1 = cap(coord, "Brown");
cap1 = cap(coord, "Red");
% [newCamPosX newCamPosY] = converter.convertBrown(cap1.centreCoord(1), cap1.centreCoord(2));
[newCamPosX newCamPosY] = converter.convertRed(cap1.centreCoord(1), cap1.centreCoord(2));
newCamPosX = newCamPosX + 326.9438
newCamPosY = newCamPosY + -581.9982

%% analyse 2nd coord
coord = [1135 564]; %add coord
% cap2 = cap(coord, "Brown");
cap2 = cap(coord, "Red");
% [posX, posY] = converter.convertBrown(cap2.centreCoord(1), cap2.centreCoord(2));
[posX, posY] = converter.convertRed(cap2.centreCoord(1), cap2.centreCoord(2));
camToGrip = converter.convertDirection(100.3,160.625, (3*pi)/4);
posX = newCamPosX + camToGrip(1) + posX
posY = newCamPosY + camToGrip(2) + posY