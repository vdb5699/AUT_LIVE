% %%
% a = cap_detection(0.9, 0.05, 65);
% dia = a.obtainDiameter(imread("sampleFig.png"))
% %%
% b = ["-81.3", "-293.45"];
% disp(b)

%%
% camera = photo_acquisition('4416x1242', 1);
% fig = figure;
% camera = camera.setVars("4416x1242", 4,4,4,4);
% imshow(camera.manualImageAcq());
cam = webcam("ZED 2i");
cam.Resolution = '4416x1242';
cam
% saveas(fig, "x-axis syrup",'fig');
% fig2 = figure;
% camera = camera.setVars("4416x1242", 8, 8, 8, 8);
% image = camera.manualImageAcq();
% imshow(image)
% 
%%
% caps = [];
% coord;
converter = convert_coord();
coord = converter.convertDirection(100.3+185,160.625,3*pi/4);
coord2 = converter.convertDirection(-100.3,-160.625,3*pi/4);
% coord2 = coord2 + converter.convertDirection(185, 0,3*pi/4)

x = coord(1) + 556.4;
y = coord(2) + -557.2;

x2 = coord2(1) + 369.6
y2 = coord2(2) + -766.5
% for h = 1:height(caps)
%     if caps(h).colour == "Brown"
%         coord(h) = converter.convertBrown(caps(h).centreCoord(1), caps(h).centreCoord(2))
%     else
%         coord(h) = converter.convertRed(caps(h).centreCoord(1), caps(h).centreCoord(2))
%     end
% end
% 
% coord
%%


