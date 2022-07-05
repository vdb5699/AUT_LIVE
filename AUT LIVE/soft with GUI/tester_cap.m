camera = photo_acquisition('4416x1242', 1);
camera = camera.setVars("4416x1242", 0,0,8,8);
image = camera.manualImageAcq();
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
camera = camera.setVars("4416x1242", 0,0,8,8);
imgD = camera.manualImageAcq();
camera = camera.setVars("4416x1242",4,4,4,4);
imgN = camera.manualImageAcq();
camera = camera.setVars("4416x1242", 8,4,8,8);
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

% subplot(1,3,1);
% imshow(greyD);
% 
% subplot(1,3,2);
% imshow(greyB);
% 
% subplot(1,3,3);
% imshow(greyN);
% 
% for x=150:-1:100
%     bwN = greyN < x;
%     imshow(bwN)
%     pause(1)
% end
% subplot(2,3,4);
% imshow(bwD);
% 
% subplot(2,3,5);
% imshow(bwB);
% 
% subplot(2,3,6);
% imshow(bwN);