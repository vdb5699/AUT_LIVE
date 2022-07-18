camera = photo_acquisition('4416x1242', 1);
img = camera.tempImageLeft(0, "4416x1242", 0, 8, 0, 1);
camera = camera.setVars("4416x1242",4,4,4,4,5);
imgN = camera.manualImageAcq();
imgB = camera.tempImageLeft(8,"4416x1242",8,8,0,1);
circledet = cap_detection(0.9, 0.05, 80);
%%
colDet = colour_detection([250 255], [240 255], [0 200], [175, 255], [0 120], [0 10]);
% camera = camera.setVars("4416x1242", 8,4,8,8,9);
% imgB = camera.manualImageAcq();

f = figure;
[cen, rad] = imfindcircles(img, [32 52], "Method","PhaseCode","Sensitivity",0.92,"EdgeThreshold",0.02, "ObjectPolarity","bright");
% [cen2, rad2] = imfindcircles(img, [32 52], "Method","PhaseCode","Sensitivity",0.9,"EdgeThreshold",0.05, "ObjectPolarity","dark");
cen = round(cen);
rad = zeros(height(cen), 1);
rad(:) = 40;
imshow(img)
hold on
for w = 1:height(cen)
    plot(cen(w,1), cen(w,2), 'bo', 'MarkerSize', 40);
end
figure;
imshow(imgN);
hold on
%%
% cen = circledet.eliminateDup(cen, 100);
capList = colDet.detectColourAdv(imgB, img, cen)
c = [0 0 "brown"];
for w =  1:width(capList)
    str = capList(w).toString;
    C = strsplit(str,", ");
    c(w,1) = C(1);
    c(w,2) = C(2);
    c(w,3) = C(3);
%     str = num2str(c(w,1)) + ", "+ num2str(c(w,2)) + ", " + capList(w).colour;
%     plot(c(w,1), c(w,2), 'bo', 'MarkerSize', 40);
%     text(c(w,1), c(w,2), str, Color=[1 0 1]);
end
c = circledet.eliminateDup(str2double(c(:,1:2)), 100)
cL = colDet.detectColourAdv(imgB, img, c);
for h = 1:width(cL)
    str = cL(h).toString();
    C = strsplit(str,", ");
    plot(str2double(C(1)), str2double(C(2)), 'bo', 'MarkerSize', 40);
    text(str2double(C(1)), str2double(C(2)), str, Color=[1 0 1]);
end