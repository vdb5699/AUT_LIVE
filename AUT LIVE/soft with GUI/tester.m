% %%
% a = cap_detection(0.9, 0.05, 65);
% dia = a.obtainDiameter(imread("sampleFig.png"))
% %%
% b = ["-81.3", "-293.45"];
% disp(b)

%%
camera = photo_acquisition('4416x1242', 1);
% fig = figure;
% camera = camera.setVars("4416x1242", 0, 0, 8, 8);
% imshow(camera.manualImageAcq());
fig2 = figure;
camera = camera.setVars("4416x1242", 0, 8, 8, 8);
% camera = camera.setVars("4416x1242", 8, 8, 8, 8);
image = camera.manualImageAcq();

