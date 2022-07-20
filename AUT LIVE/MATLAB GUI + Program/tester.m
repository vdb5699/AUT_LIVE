%% playing with the camera
c = Camera();
imshow(c.imageAcq(1,'l'));
c = c.changeSettings('3840x1080', 8,8,8,8,500);
imshow(c.imageAcq(1,'l'));
c = c.restoreDefault();
pause(1);
imshow(c.imageAcq(1,'r'));
pause(1);
imshow(c.tempImageAcq(1, 'l', '3840x1080', 0,0,8,0,500));

%% playing with the cap detection
cam = Camera();
imN = cam.imageAcq(1, 'l');
imD = cam.tempImageAcq(1,'l', '3840x1080', 0, 0, 8, 0, 1);
capdet = Cap_Detection();
capdet = capdet.setVariables(0.95, 0.01);
caps = capdet.detectCaps(imD);
img = capdet.visualiseCaps(imD, caps(:,1:2));
figure
imshow(img)
figure
imshow(imN)
hold on
colDet = Colour_Detection();
capL = colDet.detectColour(imD, caps(:,1:2), caps(:,3), 86.5)
for h = 1:width(capL)
        str = capL(h).toString();
        C = strsplit(str,", ");
        plot(str2double(C(1)), str2double(C(2)), 'bo', 'MarkerSize', 40);
        text(str2double(C(1)), str2double(C(2)), str, Color=[1 0 1]);
end