%% playing with the camera
c = Camera();
img = c.tempImageAcq(1,'l', '3840x1080', 4, 4, 4, 4, 5);
figure(Visible="on")
imshow(img);
% c = c.changeSettings('3840x1080', 8,8,8,8,500);
% imshow(c.imageAcq(1,'l'));
% c = c.restoreDefault();
% pause(1); 
% imshow(c.imageAcq(1,'r'));
% pause(1);
% imshow(c.tempImageAcq(1, 'l', '3840x1080', 0,0,8,0,500));

%% playing with the cap detection
tic
    cam = Camera();
    imN = cam.imageAcq(1, 'l');
    imD = cam.tempImageAcq(1,'l', '3840x1080', 0, 0, 8, 0, 1);
    capdet = Cap_Detection();
    capdet = capdet.setVariables(0.96, 0.02);
    caps = capdet.detectCaps(imD);
    img = capdet.visualiseCaps(imD, caps);
    imshow(img)
    colDet = Colour_Detection();
    capL = colDet.detectColour(imD, caps(:,1:2), caps(:,3), 86.5)
    capL2 = colDet.eliminateDuplicate(capL, 100)
    %     colDet.visualiseAnalysis(capL, imN);
    imag = colDet.visualiseAnalysis(capL2, imN);
    figure(Visible="on")
    imshow(imag);
toc

% for h = 1:width(capL)
%         str = capL(h).toString();
%         C = strsplit(str,", ");
%         plot(str2double(C(1)), str2double(C(2)), 'bo', 'MarkerSize', 40);
%         text(str2double(C(1)), str2double(C(2)), str, Color=[1 0 1]);
% end
%% Playing with Box detection
c = Camera();
img = c.tempImageAcq(1,'l', '3840x1080', 8, 0, 8, 0, 1);
bD = Box_Detection();
coordinates = bD.detectBox(img)


%% Follow Step numbers in order from 1 - 4
%% take photo - Step: 1, 4
cam = Camera();
imN = cam.imageAcq(1, 'l');
imD = cam.tempImageAcq(1,'l', '3840x1080', 0, 0, 8, 0, 1);
capdet = Cap_Detection();
capdet = capdet.setVariables(0.96, 0.02);
caps = capdet.detectCaps(imD);
img = capdet.visualiseCaps(imD, caps);
imshow(img)
colDet = Colour_Detection();
capL = colDet.detectColour(imD, caps(:,1:2), caps(:,3), 86.5)
capL2 = colDet.eliminateDuplicate(capL, 100)
%     colDet.visualiseAnalysis(capL, imN);
imag = colDet.visualiseAnalysis(capL2, imN);
figure(Visible="on")
imshow(imag);
%% connect tcp - Step: 2
tcp = tcpclient("192.168.0.20", 1025);

% analyse 1st coord - Step: 3
converter = Coordinate_Converter();

coord = [885 255]; %add coord
cap1 = Cap(coord, 45, "Brown");
% cap1 = cap(coord, "Red");
% [newCamPosX newCamPosY] = converter.convertBrown(cap1.x, cap1.y);
[newCamPosX newCamPosY] = converter.convertRed(cap1.x, cap1.y);
camToGrip = converter.convertDirection(-20,163, (3*pi)/4);
% camToGrip = converter.convertDirection(-15+5,163+1, (3*pi)/4);
bottlePosX = newCamPosX + camToGrip(1) +215
bottlePosY = newCamPosY + camToGrip(2) -680.3

tcp.write(num2str(bottlePosX))
pause(3)
tcp.write(num2str(bottlePosY))
