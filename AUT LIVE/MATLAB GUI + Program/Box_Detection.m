classdef Box_Detection
    properties(Access = public)
        pToEdge;
        lToEdge;
        brightness;
    end
    properties(Access = private)
        converter
    end

    methods
        function obj = Box_Detection()
            obj.pToEdge = 298;
            obj.lToEdge = 205;
            obj.brightness = 50;
            obj.converter = Coordinate_Converter();
        end

        function [boxes] = detectBox(obj, image)
            boxes = [];
            %% noise deletion
            bw = rgb2gray(image) > obj.brightness;
            se = strel('square', 8);
            bw = imclose(bw, se);
            bw = (bw == false);

            se = strel('square', 5);
            bw = imclose(bw, se);
            bw = bwareaopen(imfill(bw, 'holes'),50);
            %% edge detection
            [B,L] = bwboundaries(bw,'noholes');
            stats = regionprops(L,'Area','Centroid');
            figure
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
                        if dist2 < obj.pToEdge+10 && dist2 > obj.pToEdge-10
                            z = 1;
                        else
                            z = obj.pToEdge/dist2;
                        end
                        angle = acos(z);
                        if isreal(angle) == false
                            portrait = 0;
                            angle = acos(obj.lToEdge/dist2)
                        end
                    else
                        if dist2 < obj.lToEdge+10 && dist2 > obj.lToEdge-10
                            z = 1;
                        else
                            z = obj.lToEdge/dist2;
                        end
                        angle = acos(z);
                    end
                    smallAngle = false;
                    if (abs(angle) < 0.125) && (portrait == 1)
                        smallAngle = true;
                        nc = [cent(1)+100, cent(2)];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc2 = [cent(1)+100, cent(2)+200];
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc3 = [cent(1)+100, cent(2)-200];
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc4 = [cent(1)-100, cent(2)];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc5 = [cent(1)-100, cent(2)+200];
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc6 = [cent(1)-100, cent(2)-200];
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                    elseif (abs(angle) < 0.125) && (portrait == 0)
                        smallAngle = true;
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

                        nc2 = obj.converter.convertDirection(0, 220, ((pi/2)-1.1071) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -220, -1*((pi/2)-1.1071) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        
                        %%left side

                        nc4 = [cent(1)-100, cent(2)+opp];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, 220, -1*((pi/2)-1.1071) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -220, ((pi/2)-1.1071) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 1) && (portrait == 1)

                        %%%%%% PATTERN TWO
                        opp = 100*tan(angle);
                        nc = [cent(1)+100, cent(2)+opp];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(0, 220, ((pi/2)-1.1071) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -220, -1*((pi/2)-1.1071) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%left side

                        nc4 = [cent(1)-100, cent(2)-opp];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, 220, -1*((pi/2)-1.1071) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -220, ((pi/2)-1.1071) - angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 0) && (portrait == 0)
                        %bottom side
                        opp = 100*tan(angle);
                        nc = [cent(1)+opp-30, cent(2)+100-30];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(220, 0, -1*((pi/2)-1.1071) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-220, 0, ((pi/2)-1.1071) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)-opp+30, cent(2)-100+30];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(220, 0, ((pi/2)-1.1071) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-220, 0, -1*((pi/2)-1.1071) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    else
                        %bottom side
                        opp = 100*tan(angle);
                        nc = [cent(1)-opp+30, cent(2)+100-30];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(220, 0, -1*((pi/2)-1.1071) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-220, 0, ((pi/2)-1.1071) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)+opp-30, cent(2)-100+30];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(220, 0, ((pi/2)-1.1071) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-220, 0, -1*((pi/2)-1.1071) - angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    end
                    nc
                    nc2
                    nc3
                    nc4
                    nc5
                    nc6
                    if smallAngle == true
                        boxes = [boxes; nc; nc2; nc3; nc4; nc5; nc6];
                    else
                        boxes = [boxes; nc; (nc2'); (nc3'); nc4; (nc5'); (nc6')];
                    end
                end
            end
            return
        end

        function obj = setParam(pValue, lValue)
            obj.pToEdge = pValue;
            obj.lToEdge = lValue;
            return
        end

    end



end