c = Camera();
img = c.tempImageAcq(1,'l', '3840x1080', 8, 0, 8, 8, 1);
imshow(img)
grey = rgb2gray(img);
imshow(grey);
bw = grey > 50;
imshow(bw);

% bw = imfill(bw, 'holes');
% imshow(bw);
se = strel('square', 8);
bw = imclose(bw, se);
% bw = bwareaopen(bw,50);

bw = (bw == false);
imshow(bw);
se = strel('square', 8);
bw = imclose(bw, se);

bw = bwareaopen(imfill(bw, 'holes'),50);
figure;

[B,L] = bwboundaries(bw,'noholes');
stats = regionprops(L,'Area','Centroid','Perimeter','Circularity');
% imshow(label2rgb(L,@jet,[.5 .5 .5]))
imshow(bw)
hold on
for k = 1:length(B)
    boundary = B{k};
    area = stats(k).Area;
    if area < 1000
        continue
    end
    plot(boundary(:,2),boundary(:,1),'w','LineWidth',2)
    plot(stats(k).Centroid(1), stats(k).Centroid(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

    delta_sq = diff(boundary).^2;
    perimeter = sum(sqrt(sum(delta_sq,2)));

    metric = 4*pi*area/perimeter^2;

    if (metric > 0.5 && metric < 0.7 && area > 100000)
        metric_string = sprintf('%2.2f',metric);
        text(boundary(1,2)-35,boundary(1,1)+13,metric_string,'Color','y',...
            'FontSize',14,'FontWeight','bold')
        found = false;
        cent = round(stats(k).Centroid);
        eq = boundary(:, 2) ~= cent(1);
        newBound = boundary;
        newBound(eq,:) = [];
        pos = [newBound(2,2), newBound(2,1)];
        dist = norm(cent-pos);
        angle = acos(295/dist);
        plot([cent(1) pos(1)], [cent(2) pos(2)]);
%         conv = Coordinate_Converter();
%         if abs(angle) > 0.01
%             newCoord = conv.convertDirection(0, dist, angle);
%         else
%             newCoord = pos - cent;
%         end
%         newCoord(1) = newCoord(1) + cent(1);
%         newCoord(2) = newCoord(2) + cent(2);
% %         newCoord = newCoord + cent
%         plot([cent(1) newCoord(1)], [cent(2) newCoord(2)]);
% 
%         plot(newCoord(1), newCoord(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
% 
%         newCoord = conv.convertDirection(0, dist, -angle);
%         newCoord(1) = newCoord(1) + cent(1);
%         newCoord(2) = newCoord(2) + cent(2);
%         plot(newCoord(1), newCoord(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
%         plot([cent(1) newCoord(1)], [cent(2) newCoord(2)]);

        opp = 100*tan(angle);
        nc = [cent(1)+100, cent(2)-opp];
        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
        yMin = [0 10000];
        xMin = [10000 0];
        yMax = [0 -10000];
        xMax = [-10000 0];
        
        %CORNERS OF THE RECT. SEARCH FOR OTHER COORD USING ARRAY THING USED
        %ABOVE

        yMax = max(boundary(:,1))
        yMin = min(boundary(:,1))
        xMax = max(boundary(:,2))
        xMin = min(boundary(:,2))
%         testing
% d = drawline();
% pos = d.Position;
% diffpos = diff(pos);
% diameter = hypot(diffpos(1), diffpos(2))
% d = drawline();
% pos = d.Position;
% diffpos = diff(pos);
% diameter2 = hypot(diffpos(1), diffpos(2))
% 
% d = drawline();
% pos = d.Position;
% diffpos = diff(pos);
% diameter3 = hypot(diffpos(1), diffpos(2))
% d = drawline();
% pos = d.Position;
% diffpos = diff(pos);
% diameter4 = hypot(diffpos(1), diffpos(2))

    end
end


%
% for k = 1:length(B)
%
%     boundary = B{k};
%     metric = stats(k).Circularity;
%     % display the results
%     metric_string = sprintf('%2.2f',metric);
%
%     % mark objects above the threshold with a black circle
%     if metric > threshold
%         centroid = stats(k).Centroid;
%         plot(centroid(1),centroid(2),'ko');
%     end
%
%     text(boundary(1,2)-35,boundary(1,1)+13,metric_string,'Color','y',...
%         'FontSize',14,'FontWeight','bold')
%
% end
%
% title(['Metrics Closer to 1 Indicate that ',...
%     'the Object is Approximately Round'])
