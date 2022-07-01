%%
%take photo
camera = photo_acquisition('4416x1242', 1);
fig = figure;
camera = camera.setVars("4416x1242", 4,4,4,4);
imshow(camera.manualImageAcq());

%% analyse first coord
converter = convert_coord();
coord = []; %add coord
cap1 = cap(coord, "Brown");
[newCamPosX newCamPosY] = converter.convertBrown(cap1.centreCoord(1), cap1.centreCoord(2));
newCamPosX = newCamPosX + 326.9438
newCamPosY = newCamPosY + -581.9982

%% analyse second coord
coord = []; %add coord
cap2 = cap(coord, "Brown");
[posX, posY] = converter.convertBrown(cap2.centreCoord(1), cap2.centreCoord(2));
camToGrip = converter.convertDirection(100.3,160.625, (3*pi)/4);
posX = newCamPosx + camToGrip(1) + posX
posY = newCamPosY + camToGrip(2) + posY