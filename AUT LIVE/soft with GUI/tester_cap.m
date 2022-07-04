imageD = imread("bright0.png");
imageB = imread("bright8.png");
imageN = imread("normal.png");

imageD = imageD(:,(width(imageD)/2):width(imageD),:);
imageB = imageB(:,(width(imageB)/2):width(imageB),:);
imageN = imageN(:,(width(imageN)/2):width(imageN),:);

greyD = rgb2gray(imageD);
greyB = rgb2gray(imageB);
greyN = rgb2gray(imageN);

%%
f = figure;
[cen, rad] = imfindcircles(imageB, [32 52], "Method","TwoStage","Sensitivity",0.9,"EdgeThreshold",0.04);
imshow(imageB)
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