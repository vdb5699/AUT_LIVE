imageD = imread("bright0.png");
imageB = imread("bright8.png");
imageN = imread("normal.png");

imageD = imageD(:,(width(imageD)/2):width(imageD),:);
imageB = imageB(:,(width(imageB)/2):width(imageB),:);
imageN = imageN(:,(width(imageN)/2):width(imageN),:);

greyD = rgb2gray(imageD);
greyB = rgb2gray(imageB);
greyN = rgb2gray(imageN);

bwD = imfill(imbinarize(greyD), "holes");
bwB = imfill(imbinarize(greyB), "holes");
bwN = imfill(imbinarize(greyN), "holes");

subplot(2,3,1);
imshow(greyD);

subplot(2,3,2);
imshow(greyB);

subplot(2,3,3);
imshow(greyN);

subplot(2,3,4);
imshow(bwD);

subplot(2,3,5);
imshow(bwB);

subplot(2,3,6);
imshow(bwN);