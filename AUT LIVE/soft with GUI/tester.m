% %%
% a = cap_detection(0.9, 0.05, 65);
% dia = a.obtainDiameter(imread("sampleFig.png"))
% %%
% b = ["-81.3", "-293.45"];
% disp(b)

%%
img = imread("normal.png");
img  = img(:,width(img)/2:width(img),:);
% gray = rgb2gray(img);
imshow(img)

% fig = figure;
% imsohw(img)