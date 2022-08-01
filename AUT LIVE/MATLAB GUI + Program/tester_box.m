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
imshow(img)
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

        %CORNERS OF THE RECT. SEARCH FOR OTHER COORD USING ARRAY THING USED
        %ABOVE

        yMax = max(boundary(:,1));
        yMin = min(boundary(:,1));
        xMax = max(boundary(:,2));
        xMin = min(boundary(:,2));

        for h = 1:height(boundary)
                if boundary(h,1) == yMax
                    yMaxCoord = [boundary(h,2), boundary(h,1)];
                elseif boundary(h,1) == yMin
                    yMinCoord = [boundary(h,2), boundary(h,1)];
                elseif boundary(h,2) == xMax
                    xMaxCoord = [boundary(h,2), boundary(h,1)];
                else
                    xMinCoord = [boundary(h,2), boundary(h,1)];
                end
        end
        tilt = 0;
        plot(xMaxCoord(1),xMaxCoord(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);
        plot(xMinCoord(1), xMinCoord(2),'bo', 'MarkerSize', 10, 'LineWidth',5);
        plot(yMaxCoord(1),yMaxCoord(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);
        plot(yMinCoord(1), yMinCoord(2),'bo', 'MarkerSize', 10, 'LineWidth',5);
        if xMinCoord(2) > xMaxCoord(2)
            tilt = 1;
        end
        dist = [norm(yMaxCoord-xMaxCoord); norm(yMaxCoord-xMinCoord)];
        dist = max(dist);
        portrait = 1;
        if round(dist) == round(norm(yMaxCoord-xMaxCoord))
            coordDiff = [0 0];
            coordDiff(1) = abs(yMaxCoord(1)-xMaxCoord(1));
            coordDiff(2) = abs(yMaxCoord(2)-xMaxCoord(2));
            if coordDiff(1) > coordDiff(2)
                portrait = 0;
            end
        else
            coordDiff = [0 0];
            coordDiff(1) = abs(yMaxCoord(1)-xMinCoord(1));
            coordDiff(2) = abs(yMaxCoord(2)-xMinCoord(2));
            if coordDiff(1) > coordDiff(2)
                portrait = 0;
            end
        end
%%      
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
        dist
      
        angle = 0;
        if portrait == 1
            angle = acos(280/dist);
        else
            angle = acos(180/dist);
        end

        if (isreal(angle) == false) && (tilt == 1)
            angle = phase(angle);
            angle = angle - (pi/2)
        elseif (isreal(angle) == false)
            angle = phase(angle);
            angle = angle + (pi/2)
        end

        plot([cent(1) pos(1)], [cent(2) pos(2)]);
        conv = Coordinate_Converter();
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

        if (abs(angle) < 0.05) && (portrait == 1)
            nc = [cent(1)+100, cent(2)];
            plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc2 = [cent(1)+100, cent(2)+100];
            plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc3 = [cent(1)+100, cent(2)-100];
            plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc4 = [cent(1)-100, cent(2)];
            plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc5 = [cent(1)-100, cent(2)+100];
            plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc6 = [cent(1)-100, cent(2)-100];
            plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

        elseif (abs(angle) < 0.05) && (portrait == 0)
            nc = [cent(1), cent(2)+100];
            plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc2 = [cent(1)+200, cent(2)+100];
            plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc3 = [cent(1)-200, cent(2)+100];
            plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc4 = [cent(1), cent(2)-100];
            plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc5 = [cent(1)+200, cent(2)-100];
            plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
            nc6 = [cent(1)-200, cent(2)-100];
            plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
        elseif (tilt == 0) && (portrait == 1)
            %%% PATTERN ONE
            %right side
            opp = 100*tan(angle);
            nc = [cent(1)+100, cent(2)-opp];
            plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

            nc2 = conv.convertDirection(0, 220, ((pi/2)-1.1071) + angle);
            plot(nc2(1)+cent(1), nc2(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
            nc3 = conv.convertDirection(0, -220, -1*((pi/2)-1.1071) + angle);
            plot(nc3(1)+cent(1), nc3(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            %%left side

            nc4 = [cent(1)-100, cent(2)+opp];
            plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            nc5 = conv.convertDirection(0, 220, -1*((pi/2)-1.1071) + angle);
            plot(nc5(1)+cent(1), nc5(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            nc6 = conv.convertDirection(0, -220, ((pi/2)-1.1071) + angle);
            plot(nc6(1)+cent(1), nc6(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
        elseif (tilt == 1) && (portrait == 1)

            %%%%%% PATTERN TWO
            opp = 100*tan(angle);
            nc = [cent(1)+100, cent(2)+opp];
            plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

            nc2 = conv.convertDirection(0, 220, ((pi/2)-1.1071) - angle);
            plot(nc2(1)+cent(1), nc2(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
            nc3 = conv.convertDirection(0, -220, -1*((pi/2)-1.1071) - angle);
            plot(nc3(1)+cent(1), nc3(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            %%left side

            nc4 = [cent(1)-100, cent(2)-opp];
            plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            nc5 = conv.convertDirection(0, 220, -1*((pi/2)-1.1071) - angle);
            plot(nc5(1)+cent(1), nc5(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            nc6 = conv.convertDirection(0, -220, ((pi/2)-1.1071) - angle);
            plot(nc6(1)+cent(1), nc6(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
        elseif (tilt == 0) && (portrait == 0)
            %bottom side
            opp = 100*tan(angle);
            nc = [cent(1)+opp, cent(2)+100];
            plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

            nc2 = conv.convertDirection(220, 0, -1*((pi/2)-1.1071) + angle);
            plot(nc2(1)+cent(1), nc2(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
            nc3 = conv.convertDirection(-220, 0, ((pi/2)-1.1071) + angle);
            plot(nc3(1)+cent(1), nc3(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            %%top side

            nc4 = [cent(1)-opp, cent(2)-100];
            plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            nc5 = conv.convertDirection(220, 0, ((pi/2)-1.1071) + angle);
            plot(nc5(1)+cent(1), nc5(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            nc6 = conv.convertDirection(-220, 0, -1*((pi/2)-1.1071) + angle);
            plot(nc6(1)+cent(1), nc6(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
        else
            %bottom side
            opp = 100*tan(angle);
            nc = [cent(1)-opp, cent(2)+100];
            plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

            nc2 = conv.convertDirection(220, 0, -1*((pi/2)-1.1071) - angle);
            plot(nc2(1)+cent(1), nc2(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
            nc3 = conv.convertDirection(-220, 0, ((pi/2)-1.1071) - angle);
            plot(nc3(1)+cent(1), nc3(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            %%top side

            nc4 = [cent(1)+opp, cent(2)-100];
            plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            nc5 = conv.convertDirection(220, 0, ((pi/2)-1.1071) - angle);
            plot(nc5(1)+cent(1), nc5(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

            nc6 = conv.convertDirection(-220, 0, -1*((pi/2)-1.1071) - angle);
            plot(nc6(1)+cent(1), nc6(2)+cent(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

        end
        %WORDKING OUT THE TILT

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
