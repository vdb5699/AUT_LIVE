tic
    camera = photo_acquisition('4416x1242', 1);
    camera = camera.setVars("3840x1080",4,4,4,4,5);
    imgN = camera.manualImageAcq();
    img = camera.tempImageLeft("3840x1080", 0, 0, 8, 0, 1);
    circledet = cap_detection(0.9, 0.05, 80);
    figure
%     img = camera.tempImageLeft("3840x1080", 0, 8, 8, 0, 1);
    imshow(img)
    %%
    colDet = colour_detection([75 155], [30 120], [0 50], [155, 255], [0 120], [0 10]);
    % camera = camera.setVars("4416x1242", 8,4,8,8,9);
    % imgB = camera.manualImageAcq();
    
    f = figure;
    [cen, rad] = imfindcircles(img, [32 48], "Method","PhaseCode","Sensitivity",0.94,"EdgeThreshold",0.02, "ObjectPolarity","bright");
    % [cen2, rad2] = imfindcircles(img, [32 52], "Method","PhaseCode","Sensitivity",0.9,"EdgeThreshold",0.05, "ObjectPolarity","dark");
    cen = round(cen);
    cen
    rad
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
    capList = colDet.detectColourAdv(img, cen)
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
    cL = colDet.detectColourAdv(img, c);
    for h = 1:width(cL)
        str = cL(h).toString();
        C = strsplit(str,", ");
        plot(str2double(C(1)), str2double(C(2)), 'bo', 'MarkerSize', 40);
        text(str2double(C(1)), str2double(C(2)), str, Color=[1 0 1]);
    end
toc