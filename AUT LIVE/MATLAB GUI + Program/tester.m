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
capdet = capdet.setVariables(0.94, 0.02);
caps = capdet.detectCaps(imD);
img = capdet.visualiseCaps(imN, caps);
figure(Visible="on");
imshow(img)