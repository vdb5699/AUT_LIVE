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