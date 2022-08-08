classdef Box_Detection
    properties(Access = public)
        pToEdge;
        lToEdge;
        brightness;
        edgeConnecter;
    end
    properties(Access = private)
        converter
        defp
        defl
        defb
        defe
    end

    methods
        function obj = Box_Detection()
            obj.pToEdge = 295;
            obj.defp = obj.pToEdge;
            obj.lToEdge = 205;
            obj.defl = obj.lToEdge;
            obj.brightness = 50;
            obj.defb = obj.brightness;
            obj.edgeConnecter = 8;
            obj.defe = obj.edgeConnecter;
            obj.converter = Coordinate_Converter();
        end

        function boxes = detectBox(obj, image)
            boxes = [];
            %% noise deletion
            bw = rgb2gray(image) > obj.brightness;
            se = strel('square', obj.edgeConnecter);
            bw = imclose(bw, se);
            bw = (bw == false);

            se = strel('square', obj.edgeConnecter);
            bw = imclose(bw, se);
            bw = bwareaopen(imfill(bw, 'holes'),50);
            %% edge detection
            [B,L] = bwboundaries(bw,'noholes');
            stats = regionprops(L,'Area','Centroid');
            figure(Visible="off");
            imshow(image);
            hold on
            %% edge analysis
            for k = 1:length(B)
                boundary = B{k};
                area = stats(k).Area;
                if area < 100000
                    continue
                end
                plot(boundary(:,2),boundary(:,1),'w','LineWidth',2);
                plot(stats(k).Centroid(1), stats(k).Centroid(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);

                delta_sq = diff(boundary).^2;
                perimeter = sum(sqrt(sum(delta_sq,2)));
                circularity = 4*pi*area/perimeter^2;

                if (circularity >= 0.4 && circularity <= 0.75)
                    %% get corners of detected box
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
                    %plot corners
                    plot(xMaxCoord(1),xMaxCoord(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);
                    plot(xMinCoord(1), xMinCoord(2),'bo', 'MarkerSize', 10, 'LineWidth',5);
                    plot(yMaxCoord(1),yMaxCoord(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);
                    plot(yMinCoord(1), yMinCoord(2),'bo', 'MarkerSize', 10, 'LineWidth',5);
                    
                    tilt = 0;
                    if xMinCoord(2) > xMaxCoord(2)
                        tilt = 1;
                    end
                    cent = round(stats(k).Centroid);
                    eq = boundary(:, 2) ~= cent(1);
                    newBound = boundary;
                    newBound(eq,:) = [];
                    pos = [newBound(2,2), newBound(2,1)];
                    dist2 = norm(cent-pos);

                    portrait = 1;
                    if dist2 <= obj.lToEdge+50
                        portrait = 0;
                    elseif (yMaxCoord(2)-yMinCoord(2) > 555) && (yMaxCoord(2)-yMinCoord(2) < 610)
                        portrait = 1;
                    elseif ((yMaxCoord(2)-yMinCoord(2) < 445) && (yMaxCoord(2)-yMinCoord(2) > 395))
                        portrait = 0;
                    else
                        if tilt == 1
                            if yMaxCoord(1) < pos(1)
                                portrait = 0;
                                tilt = 0;
                            else
                                portrait = 1;
                            end
                        else
                            if yMaxCoord(1) > pos(1)
                                portrait = 0;
                                tilt = 1;
                            else
                                portrait = 1;
                            end
                        end
                    end

                    angle = 0;
                    if portrait == 1
                        if (dist2 < obj.pToEdge+20 && dist2 > obj.pToEdge-20) && ((yMaxCoord(2)-yMinCoord(2) >= 555) && (yMaxCoord(2)-yMinCoord(2) <= 610))
                            z = 1;
                        else
                            z = obj.pToEdge/dist2;
                            if abs(z) > 1
                                z = dist2/obj.pToEdge;
                            end
                        end
                        angle = acos(z);
                    else
                        if (dist2 < obj.lToEdge+12 && dist2 > obj.lToEdge-12) && ((yMaxCoord(2)-yMinCoord(2) < 445) && (yMaxCoord(2)-yMinCoord(2) > 395))
                            z = 1;

                        else
                            z = obj.lToEdge/dist2;
                            if abs(z) > 1
                                z = dist2/obj.lToEdge;
                            end
                        end
                        angle = acos(z);
                    end
                    angle
                    tilt
                    dist2
                    portrait
                    smallAngle = false;
                    if (abs(angle) < 0.08) && (portrait == 1)
                        smallAngle = true;
                        nc = [cent(1)+85, cent(2)];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc2 = [cent(1)+85, cent(2)+185];
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc3 = [cent(1)+85, cent(2)-185];
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc4 = [cent(1)-85, cent(2)];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc5 = [cent(1)-85, cent(2)+185];
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc6 = [cent(1)-85, cent(2)-185];
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                    elseif (abs(angle) < 0.08) && (portrait == 0)
                        smallAngle = true;
                        nc = [cent(1), cent(2)+85];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc2 = [cent(1)+185, cent(2)+85];
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc3 = [cent(1)-185, cent(2)+85];
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc4 = [cent(1), cent(2)-85];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc5 = [cent(1)+185, cent(2)-85];
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc6 = [cent(1)-185, cent(2)-85];
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                    elseif (tilt == 0) && (portrait == 1)
                        %%% PATTERN ONE
                        %right side
                        opp = 85*tan(angle);
                        nc = [cent(1)+80, cent(2)-opp];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(0, 200, ((pi/2)-1.1071) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -200, -1*((pi/2)-1.1071) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        
                        %%left side

                        nc4 = [cent(1)-80, cent(2)+opp];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, 200, -1*((pi/2)-1.1071) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -200, ((pi/2)-1.1071) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 1) && (portrait == 1)

                        %%%%%% PATTERN TWO
                        opp = 80*tan(angle);
                        nc = [cent(1)+80, cent(2)+opp];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(0, 200, ((pi/2)-1.1071) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -200, -1*((pi/2)-1.1071) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%left side

                        nc4 = [cent(1)-80, cent(2)-opp];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, 200, -1*((pi/2)-1.1071) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -200, ((pi/2)-1.1071) - angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 0) && (portrait == 0)
                        %bottom side
                        opp = 80*tan(angle);
                        nc = [cent(1)+opp, cent(2)+80];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(200, 0, -1*((pi/2)-1.1071) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-200, 0, ((pi/2)-1.1071) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)-opp, cent(2)-80];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(200, 0, ((pi/2)-1.1071) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-200, 0, -1*((pi/2)-1.1071) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    else
                        %bottom side
                        opp = 80*tan(angle);
                        nc = [cent(1)-opp, cent(2)+80];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(200, 0, -1*((pi/2)-1.1071) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-200, 0, ((pi/2)-1.1071) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)+opp, cent(2)-80];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(200, 0, ((pi/2)-1.1071) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-200, 0, -1*((pi/2)-1.1071) - angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    end
%                     nc
%                     nc2
%                     nc3
%                     nc4
%                     nc5
%                     nc6
                    if smallAngle == true
                        boxes = [boxes; nc; nc2; nc3; nc4; nc5; nc6];
                    else
                        boxes = [boxes; nc; (nc2'); (nc3'); nc4; (nc5'); (nc6')];
                    end
                end
            end
            return
        end

        function boxes = tempDetectBox(obj, image, pE, lE, brig, eC)
            boxes = [];
            %% noise deletion
            bw = rgb2gray(image) > brig;
            se = strel('square', eC);
            bw = imclose(bw, se);
            bw = (bw == false);

            se = strel('square', eC);
            bw = imclose(bw, se);
            bw = bwareaopen(imfill(bw, 'holes'),50);
            %% edge detection
            [B,L] = bwboundaries(bw,'noholes');
            stats = regionprops(L,'Area','Centroid');
            figure(Visible="off")
            imshow(image);
            hold on
            %% edge analysis
            for k = 1:length(B)
                boundary = B{k};
                area = stats(k).Area;
                if area < 100000
                    continue
                end
                plot(boundary(:,2),boundary(:,1),'w','LineWidth',2);
                plot(stats(k).Centroid(1), stats(k).Centroid(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);

                delta_sq = diff(boundary).^2;
                perimeter = sum(sqrt(sum(delta_sq,2)));
                circularity = 4*pi*area/perimeter^2;

                if (circularity >= 0.4 && circularity <= 0.75)
                    %% get corners of detected box
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
                    %plot corners
                    plot(xMaxCoord(1),xMaxCoord(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);
                    plot(xMinCoord(1), xMinCoord(2),'bo', 'MarkerSize', 10, 'LineWidth',5);
                    plot(yMaxCoord(1),yMaxCoord(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);
                    plot(yMinCoord(1), yMinCoord(2),'bo', 'MarkerSize', 10, 'LineWidth',5);
                    
                    tilt = 0;
                    if xMinCoord(2) > xMaxCoord(2)
                        tilt = 1;
                    end
                    cent = round(stats(k).Centroid);
                    eq = boundary(:, 2) ~= cent(1);
                    newBound = boundary;
                    newBound(eq,:) = [];
                    pos = [newBound(2,2), newBound(2,1)];
                    dist2 = norm(cent-pos);

                    portrait = 1;
                    if dist2 <= lE+50
                        portrait = 0;
                    elseif (yMaxCoord(2)-yMinCoord(2) > 555) && (yMaxCoord(2)-yMinCoord(2) < 610)
                        portrait = 1;
                    elseif ((yMaxCoord(2)-yMinCoord(2) < 445) && (yMaxCoord(2)-yMinCoord(2) > 395))
                        portrait = 0;
                    else
                        if tilt == 1
                            if yMaxCoord(1) < pos(1)
                                portrait = 0;
                                tilt = 0;
                            else
                                portrait = 1;
                            end
                        else
                            if yMaxCoord(1) > pos(1)
                                portrait = 0;
                                tilt = 1;
                            else
                                portrait = 1;
                            end
                        end
                    end

                    angle = 0;
                    if portrait == 1
                        if (dist2 < pE+20 && dist2 > pE-20) && ((yMaxCoord(2)-yMinCoord(2) >= 555) && (yMaxCoord(2)-yMinCoord(2) <= 610))
                            z = 1;
                        else
                            z = pE/dist2;
                            if abs(z) > 1
                                z = dist2/pE;
                            end
                        end
                        angle = acos(z);
                    else
                        if (dist2 < lE+12 && dist2 > lE-12) && ((yMaxCoord(2)-yMinCoord(2) < 445) && (yMaxCoord(2)-yMinCoord(2) > 395))
                            z = 1;

                        else
                            z = lE/dist2;
                            if abs(z) > 1
                                z = dist2/lE;
                            end
                        end
                        angle = acos(z);
                    end
                    angle
                    tilt
                    dist2
                    portrait
                    smallAngle = false;
                    if (abs(angle) < 0.08) && (portrait == 1)
                        smallAngle = true;
                        nc = [cent(1)+85, cent(2)];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc2 = [cent(1)+85, cent(2)+185];
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc3 = [cent(1)+85, cent(2)-185];
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc4 = [cent(1)-85, cent(2)];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc5 = [cent(1)-85, cent(2)+185];
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc6 = [cent(1)-85, cent(2)-185];
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                    elseif (abs(angle) < 0.08) && (portrait == 0)
                        smallAngle = true;
                        nc = [cent(1), cent(2)+85];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc2 = [cent(1)+185, cent(2)+85];
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc3 = [cent(1)-185, cent(2)+85];
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc4 = [cent(1), cent(2)-85];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc5 = [cent(1)+185, cent(2)-85];
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc6 = [cent(1)-185, cent(2)-85];
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                    elseif (tilt == 0) && (portrait == 1)
                        %%% PATTERN ONE
                        %right side
                        opp = 85*tan(angle);
                        nc = [cent(1)+80, cent(2)-opp];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(0, 200, ((pi/2)-1.1071) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -200, -1*((pi/2)-1.1071) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        
                        %%left side

                        nc4 = [cent(1)-80, cent(2)+opp];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, 200, -1*((pi/2)-1.1071) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -200, ((pi/2)-1.1071) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 1) && (portrait == 1)

                        %%%%%% PATTERN TWO
                        opp = 80*tan(angle);
                        nc = [cent(1)+80, cent(2)+opp];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(0, 200, ((pi/2)-1.1071) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -200, -1*((pi/2)-1.1071) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%left side

                        nc4 = [cent(1)-80, cent(2)-opp];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, 200, -1*((pi/2)-1.1071) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -200, ((pi/2)-1.1071) - angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 0) && (portrait == 0)
                        %bottom side
                        opp = 80*tan(angle);
                        nc = [cent(1)+opp, cent(2)+80];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(200, 0, -1*((pi/2)-1.1071) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-200, 0, ((pi/2)-1.1071) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)-opp, cent(2)-80];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(200, 0, ((pi/2)-1.1071) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-200, 0, -1*((pi/2)-1.1071) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    else
                        %bottom side
                        opp = 80*tan(angle);
                        nc = [cent(1)-opp, cent(2)+80];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(200, 0, -1*((pi/2)-1.1071) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-200, 0, ((pi/2)-1.1071) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)+opp, cent(2)-80];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(200, 0, ((pi/2)-1.1071) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-200, 0, -1*((pi/2)-1.1071) - angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    end
%                     nc
%                     nc2
%                     nc3
%                     nc4
%                     nc5
%                     nc6
                    if smallAngle == true
                        boxes = [boxes; nc; nc2; nc3; nc4; nc5; nc6];
                    else
                        boxes = [boxes; nc; (nc2'); (nc3'); nc4; (nc5'); (nc6')];
                    end
                end
            end
            return

        end
        
        function newImage = visualiseSlots(obj, imBox, slots)
            fig = figure(Visible="off");
            imshow(imBox);
            hold on
            for h = 1: height(slots)
                plot(slots(h,1), slots(h,2), 'bo', 'MarkerSize', 10, 'LineWidth',5);
            end
            f = getframe(fig);
            hold off
            newImage = frame2im(f);
            newImage = newImage(29:750,86:1367,:);
            clear fig
            return
        end


        function obj = setParam(obj, pValue, lValue, bValue, eValue)
            obj.pToEdge = pValue;
            obj.lToEdge = lValue;
            obj.brightness = bValue;
            obj.edgeConnecter = eValue;
            return
        end
        
        function [p, l, b, e] = getDefaultVal(obj)
            p = obj.defp;
            l = obj.defl;
            b = obj.defb;
            e = obj.defe;
            return
        end


    end



end