%% playing with the camera
c = Camera();
img = c.tempImageAcq(1,'l', '3840x1080', 4, 4, 4, 4, 5);
figure(Visible="on")
imshow(img);
% hold on
% for h = 1:height(coordinates)
%     plot(coordinates(h,1), coordinates(h,2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
% end
% c = c.changeSettings('3840x1080', 8,8,8,8,500);
% imshow(c.imageAcq(1,'l'));
% c = c.restoreDefault();
% pause(1); 
% imshow(c.imageAcq(1,'r'));
% pause(1);
% imshow(c.tempImageAcq(1, 'l', '3840x1080', 0,0,8,0,500));
%% camera experiment
cam = webcam(1);
camera.Resolution = "3840x1080";
camera.Brightness = 1;
camera.Contrast = 1;
camera.Saturation = 1;
camera.Sharpness = 1;
camera.Gamma = 1;
% pause(1)
image = snapshot(camera);

%% playing with the cap detection
tic
    cam = Camera();
    imN = cam.imageAcq(1, 'l');
    imD = cam.tempImageAcq(1,'l', '3840x1080', 0, 0, 8, 0, 1);
    capdet = Cap_Detection();
    capdet = capdet.setVariables(0.96, 0.02);
    caps = capdet.detectCaps(imD);
    img = capdet.visualiseCaps(imD, caps);
    imshow(img)
    colDet = Colour_Detection();
    capL = colDet.detectColour(imD, caps(:,1:2), caps(:,3), 86.5)
    capL2 = colDet.eliminateDuplicate(capL, 100)
    %     colDet.visualiseAnalysis(capL, imN);
    imag = colDet.visualiseAnalysis(capL2, imN);
    figure(Visible="on")
    imshow(imag);
toc

% for h = 1:width(capL)
%         str = capL(h).toString();
%         C = strsplit(str,", ");
%         plot(str2double(C(1)), str2double(C(2)), 'bo', 'MarkerSize', 40);
%         text(str2double(C(1)), str2double(C(2)), str, Color=[1 0 1]);
% end
%% Playing with Box detection
% c = Camera();
% img = c.tempImageAcq(1,'l', '3840x1080', 8, 0, 8, 0, 1);
img = imread('testImage.png');
bD = Box_Detection();
coordinates = bD.detectBox(img);
c = bD.tempDetectBox(img, bD.pToEdge, bD.lToEdge, bD.brightness, bD.edgeConnecter, bD.shortDist2slot, bD.longDist2slot, 3);



%% Follow Step numbers in order from 1 - 4
%% take photo - Step: 1, 4
cam = Camera();
imN = cam.imageAcq(1, 'l');
imD = cam.tempImageAcq(1,'l', '3840x1080', 0, 0, 8, 0, 1);
capdet = Cap_Detection();
capdet = capdet.setVariables(0.96, 0.02);
caps = capdet.detectCaps(imD);
img = capdet.visualiseCaps(imD, caps);
imshow(img)
colDet = Colour_Detection();
capL = colDet.detectColour(imD, caps(:,1:2), caps(:,3), 86.5)
capL2 = colDet.eliminateDuplicate(capL, 100)
%     colDet.visualiseAnalysis(capL, imN);
imag = colDet.visualiseAnalysis(capL2, imN);
figure(Visible="on")
imshow(imag);
%% connect tcp - Step: 2
tcp = tcpclient("192.168.0.20", 1025);

% analyse 1st coord - Step: 3
converter = Coordinate_Converter();

coord = [885 255]; %add coord
cap1 = Cap(coord, 45, "Brown");
% cap1 = cap(coord, "Red");
% [newCamPosX newCamPosY] = converter.convertBrown(cap1.x, cap1.y);
[newCamPosX newCamPosY] = converter.convertRed(cap1.x, cap1.y);
camToGrip = converter.convertDirection(-20,163, (3*pi)/4);
% camToGrip = converter.convertDirection(-15+5,163+1, (3*pi)/4);
bottlePosX = newCamPosX + camToGrip(1) +215
bottlePosY = newCamPosY + camToGrip(2) -680.3

tcp.write(num2str(bottlePosX))
pause(3)
tcp.write(num2str(bottlePosY))

%% Box Detection - Step 1
% disp("newattempt")
% c = Camera();
% img = c.tempImageAcq(1,'l', '3840x1080', 8, 0, 8, 0, 1);
% % img = imread('testImage.png');
% bD = Box_Detection();
% coordinates = bD.detectBox(img);
% conv = Coordinate_Converter();
% box = [];
% camToGrip = conv.convertDirection(25,113, (pi/4));
% for h = 1:height(coordinates)
%     [x, y] = conv.convertBox(coordinates(h,1), coordinates(h,2));
%     
%     x = x + camToGrip(1) + 223.0963;
%     y = y + camToGrip(2) + 884.6431;
%     box = [box; x, y];
% end
conv = Coordinate_Converter();
angle = (pi/4)+((2/180)*pi);
coords = [480 208; 750 376; 708 103; 1457 682; 1491 440; 1750 497];
cam2Grip = conv.convertDirection(-1, 152.125 +6, angle);
box = [];
for h = 1:height(coords)
    [x, y] = conv.convertBox(coords(h,1), coords(h,2));
    
%     x = x + cam2Grip(1) + 223.0963;
    x = x + cam2Grip(1) + 211.5963;
%     y = y + cam2Grip(2) + 884.6431;
    y = y + cam2Grip(2) + 832.1431;
    box = [box; x, y]
end


%% Box Detection - Step 2
tcp = tcpclient("192.168.0.20", 1025);
for h = 1:height(box)
    a = box(h,:)
    tcp.write(num2str(a(1)))
%     tcp.write(num2str(x))
    disp("x sent")
    pause(3)
    tcp.write(num2str(a(2)))
%     tcp.write(num2str(y))
    disp("y sent")
    while(1)
        str = read(tcp);
        if char(str) == "SendNext"
            break
        end
        pause(0.5);
    end
end
tcp.write("Out")
pause(1)
tcp.write("hi")
clear tcp

%%
box = []
arr = [1319 437; 1489 437; 1319 252; 1489 252; 1319 622; 1489 622]
conv = Coordinate_Converter();
cam2Grip = conv.convertDirection(-1, 158.125, (pi/4)+((2/180)*pi));
for h = 1:height(arr)
    [x, y] = conv.convertBox(arr(h,1), arr(h,2));
    
    x = x + cam2Grip(1) + 223.0963;
    y = y + cam2Grip(2) + 884.6431;
    box = [box; x, y];
end
box

%%
cam = Camera();
imN = cam.imageAcq(1, 'l');
imD = cam.tempImageAcq(1,'l', '3840x1080', 0, 0, 8, 0, 1);
capdet = Cap_Detection();
caps = capdet.detectCaps(imD);
img = capdet.visualiseCaps(imN, caps);
figure(Visible="on")
imshow(img)

%%
%still a bug, need to fix
str = "The only fruit I hate isfv bkc bcejcbejds passion";
str = split(str)
letterCount = 0;
newStr = strings(1, 10);
newStrIndex = 1;
startingIndex = 1;
limit = 10;
small = false;
firstTime = true;
h = 1;
while h <= height(str)
    curStr = str(h);
    letterCount = letterCount + strlength(curStr) + 1;
    if letterCount-1 < limit
        if h == height(str)
            newStr(newStrIndex) = newStr(newStrIndex) + curStr;
        else
            newStr(newStrIndex) = newStr(newStrIndex) + curStr + " ";
            firstTime = true;
        end
        h = h+1;
    else
        if firstTime
            letterCount = 0;
            newStrIndex = newStrIndex +1;
            firstTime = false;
            if h > 1
                c = char(newStr(newStrIndex-1));
                newStr(newStrIndex-1) = string(c(1:end - 1));
                newStr(newStrIndex-1) = newStr(newStrIndex-1) + ",";
            end
        else
            if newStr(newStrIndex-1) == ""
                newStrIndex = newStrIndex-1;
            end
            newStr(newStrIndex) = curStr + ",";    
            letterCount = 0;
            newStrIndex = newStrIndex +1;
            firstTime = true;
            if letterCount > limit
                small = true;
            end
            h = h + 1;
        end
    end
end
newStr
%limit 4 lines
%if newStr has more than 4 lines, re-calculate the str with bigger limit
stra = join(newStr,"");
finalS = "m," + stra
%%
str = [1 1 1 0 1 1 1 1 0 1 1 1 1 1];
wordCount = nnz(~str)+1;


%%
img = rgb2gray(imread("testImage.png"));
img = imbinarize(img);
rgb = [];
for x = 1:height(img)
    for y = 1:width(img)
        if img(x,y) == 0
            rgb(x,y,1) = 0;
            rgb(x,y,2) = 0;
            rgb(x,y,3) = 0;
        else
            rgb(x,y,1) = 255;
            rgb(x,y,2) = 255;
            rgb(x,y,3) = 255;
        end

    end
end
imshow(img);
figure
imshow(rgb);
return
%% 
str= ["A", "B"];
str = str(:) + ","