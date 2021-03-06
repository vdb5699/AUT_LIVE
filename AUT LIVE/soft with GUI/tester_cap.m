camera = photo_acquisition('4416x1242', 1);
image = camera.tempImage(8, '4416x1242', 8, 8, 8, 8);
% camera = camera.setVars("4416x1242", 0,0,8,8);
% image2 = camera.manualImageAcq();
fig = figure;
[cen, rad] = imfindcircles(image, [32 52], "Method","PhaseCode","Sensitivity",0.9,"EdgeThreshold",0.05, "ObjectPolarity","dark");
[cenb, radb] = imfindcircles(image, [32 52], "Method","PhaseCode","Sensitivity",0.9,"EdgeThreshold",0.05, "ObjectPolarity","bright");
cen = [cen; cenb];
rad = [rad; radb];
% fig = figure;
imshow(image);
% fig2 = figure;
% imshow(image2)
viscircles(cen, rad);
%%
camera = photo_acquisition('4416x1242', 1);
image = camera.tempImageLeft(4, '4416x1242', 4, 4, 4, 5);
figure;
imshow(image);
%%
camera = photo_acquisition('4416x1242', 1);
camera = camera.setVars("4416x1242", 0,0,8,8,9);
imgD = camera.manualImageAcq();
camera = camera.setVars("4416x1242",4,4,4,4,5);
imgN = camera.manualImageAcq();
camera = camera.setVars("4416x1242", 8,4,8,8,9);
imgB = camera.manualImageAcq();
fig = figure;
imshow(imgN);
% 
f = figure;
[cen, rad] = imfindcircles(imgD, [32 52], "Method","PhaseCode","Sensitivity",0.9,"EdgeThreshold",0.05, "ObjectPolarity","dark");
[cenb, radb] = imfindcircles(imgD, [32 52], "Method","PhaseCode","Sensitivity",0.9,"EdgeThreshold",0.05, "ObjectPolarity","bright");
cen = [cen; cenb];
rad = [rad; radb];
[cen1, rad1] = imfindcircles(imgB, [32 52], "Method","PhaseCode","Sensitivity",0.9,"EdgeThreshold",0.05, "ObjectPolarity","dark");
[cen2, rad2] = imfindcircles(imgB, [32 52], "Method","PhaseCode","Sensitivity",0.9,"EdgeThreshold",0.05, "ObjectPolarity","bright");
cen = [cen; cen1; cen2];
rad = [rad; rad1; rad2];
cen = unique(cen,"rows");
rad = unique(rad,"rows");
imshow(imgN)
viscircles(cen, rad);

%%
camera = photo_acquisition('4416x1242', 1);
image = camera.tempImage(8, '4416x1242', 8, 8, 0, 500);
figure;
imshow(image);
figure;
grey = rgb2gray(image);

% grey = medfilt2(grey,[15 15], 'symmetric');

imshow(grey);
% 
figure;
% for y = 255:-1:240
%     bwB = grey < y;
%     imshow(bwB)
%     pause(0.5)
% end
bwB = grey < 250;
imshow(bwB);

% bwB = bwareaopen(imfill(bwB,'holes'), 40);
bwB = bwareaopen(bwB, 40);
% imshow(bwB);
% 
% se = strel('disk', 5);
% bwB = imclose(bwB,se);
imshow(bwB);
bwB = imfill(bwB,'holes');
imshow(bwB);

%%
img = imread("normal.png");
width = 4416;
img = img(:,width/2:width,:);
hi = cap_detection(0.93, 0.02, 80);
cen = hi.automaticDetection(img);

% centres = [850 1012; 852 575; 1104 280; 1074 317; 1396 897; 868 931; 1257 578; 865 993; 1139 900; 1358 1080; 1538 815; 1669 573; 1708 1080; 1881 879; 875 970];
% hi = cap_detection(0.9, 0.02, 80);
caps = hi.eliminateDup(cen, 100);
rad = zeros(height(caps),1);
rad(:) = 40;
figure
imshow(img);
viscircles(caps, rad);