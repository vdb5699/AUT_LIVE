classdef Box_Detection
    properties(Access = public)
        pToEdge;
        lToEdge;
        brightness;
        edgeConnecter;
        shortDist2slot;
        longDist2slot;
    end
    properties(Access = private)
        converter
        defp
        defl
        defb
        defe
        defsh
        deflo
    end

    methods
        function obj = Box_Detection()
%             obj.pToEdge = 295;
            obj.pToEdge = 280;
            obj.defp = obj.pToEdge;
%             obj.lToEdge = 205;
            obj.lToEdge = 191;
            obj.defl = obj.lToEdge;
%             obj.brightness = 40;
            obj.brightness = 5;
            obj.defb = obj.brightness;
            obj.edgeConnecter = 8;
            obj.defe = obj.edgeConnecter;
            obj.shortDist2slot = 85;
            obj.defsh = obj.shortDist2slot;
            obj.longDist2slot = 185;
            obj.deflo = obj.longDist2slot;
            obj.converter = Coordinate_Converter();
        end

        function boxes = detectBox(obj, image)
            boxes = [];
            %% noise deletion
            bw = rgb2gray(image) > obj.brightness;
            se = strel('square', obj.edgeConnecter);
            bw = imclose(bw, se);
            bw = (bw == false);
            obj.edgeConnecter = round(obj.edgeConnecter);
            se = strel('square', obj.edgeConnecter);
            bw = imclose(bw, se);
            bw = bwareaopen(imfill(bw, 'holes'),50);
            %% edge detection
            [B,L] = bwboundaries(bw,'noholes');
            stats = regionprops(L,'Area','Centroid');
            figure(Visible="on");
            imshow(image);
            hold on
            %% edge analysis
            for k = 1:length(B)
                boundary = B{k};
                area = stats(k).Area;
                if area < 50000
                    continue
                end
                plot(boundary(:,2),boundary(:,1),'w','LineWidth',2);
                plot(stats(k).Centroid(1), stats(k).Centroid(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);

                delta_sq = diff(boundary).^2;
                perimeter = sum(sqrt(sum(delta_sq,2)));
                circularity = 4*pi*area/perimeter^2;

                if (circularity >= 0.4 && circularity <= 0.8)
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
                    
                    cent = round(stats(k).Centroid);
                    eq = boundary(:, 2) ~= cent(1);
                    eq2 = boundary(:,1) ~= cent(2);
                    nb = boundary;
                    nb(eq2,:) = [];
                    poss = [nb(2,2), nb(2,1)];
                    dist = norm(cent-poss);

                    newBound = boundary;
                    newBound(eq,:) = [];
                    pos = [newBound(2,2), newBound(2,1)];
                    dist2 = norm(cent-pos);
                    portrait = 1;
                    tilt = 0;

  
                    if dist2 <= obj.lToEdge
                        portrait = 0;
                    elseif (yMaxCoord(2)-yMinCoord(2) > (2*obj.pToEdge)-20) && (yMaxCoord(2)-yMinCoord(2) < (2*obj.pToEdge)+20)
                        
                        if pos(2) > yMaxCoord(2)-20 && pos(2) < yMaxCoord(2)+20
                            portrait = 1;
                        else 
                            if (yMaxCoord(1) > yMinCoord(1)) && (xMinCoord(2) > xMaxCoord(2)) && (yMaxCoord(1) > pos(1)) && dist > dist2
                                tilt = 0;
                            else
                                tilt = 1;
                            end
                            portrait = 0;
                        end
                    elseif ((yMaxCoord(2)-yMinCoord(2) < (2*obj.lToEdge)+20) && (yMaxCoord(2)-yMinCoord(2) > (2*obj.pToEdge)-20))
                        portrait = 0;
                    else
                        if (yMaxCoord(1) < yMinCoord(1)) && (xMinCoord(2) < xMaxCoord(2)) && (yMaxCoord(1) < pos(1)) && dist > dist2
                            disp("a")
                            tilt = 1;
                            portrait = 0;
                        elseif (yMaxCoord(1) > yMinCoord(1)) && (xMinCoord(2) > xMaxCoord(2)) && (yMaxCoord(1) > pos(1)) && dist > dist2
                            disp("b")
                            tilt = 0;
                            portrait = 0;
                        elseif yMaxCoord(1) < pos(1)

                            if xMinCoord(2) < xMaxCoord(2) 
                                tilt = 0;
                                portrait = 1;
                            else
                                disp("c")
                                tilt = 1;
                                portrait = 0;
                            end
                        else
                           if xMinCoord(2) > xMaxCoord(2)
                               tilt = 1;
                               portrait = 1;
                           else
                               disp("d")
                               tilt = 0;
                               portrait = 0;
                           end
                        end
                    end

                    angle = 0;
                    if portrait == 1
                        if (dist2 < obj.pToEdge) && ((yMaxCoord(2)-yMinCoord(2) >= (2*obj.pToEdge)-5) && (yMaxCoord(2)-yMinCoord(2) <= (2*obj.pToEdge)+5))
                            z = 1;
                        else
                            z = obj.pToEdge/dist2;
                            if abs(z) > 1
                                z = dist2/obj.pToEdge;
                            end
                        end
                        angle = acos(z);
                    else
                        if (dist2 < obj.lToEdge) && ((yMaxCoord(2)-yMinCoord(2) < (2*obj.lToEdge)+5) && (yMaxCoord(2)-yMinCoord(2) > (2*obj.lToEdge)-5))
                            z = 1;

                        else
                            z = obj.lToEdge/dist2;
                            if abs(z) > 1
                                z = dist2/obj.lToEdge;
                            end
                        end
                        angle = acos(z);
                    end
%                     angle
                    tilt
                    pos
%                     dist2
                    portrait
                    phi = acos(obj.shortDist2slot/obj.longDist2slot);
                    smallAngle = false;
                    if (abs(angle) < 0.05) && (portrait == 1)
                        disp("a")
                        smallAngle = true;
                        nc = [cent(1)+obj.shortDist2slot, cent(2), 0, 1];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc2 = [cent(1)+obj.shortDist2slot, cent(2)+obj.longDist2slot, 0, 1];
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc3 = [cent(1)+obj.shortDist2slot, cent(2)-obj.longDist2slot, 0, 1];
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc4 = [cent(1)-obj.shortDist2slot, cent(2), 0, 1];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc5 = [cent(1)-obj.shortDist2slot, cent(2)+obj.longDist2slot, 0, 1];
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc6 = [cent(1)-obj.shortDist2slot, cent(2)-obj.longDist2slot, 0, 1];
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                    elseif (abs(angle) < 0.05) && (portrait == 0)
                        disp("b")
                        smallAngle = true;
                        nc = [cent(1), cent(2)+obj.shortDist2slot, 0, 0];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc2 = [cent(1)+obj.longDist2slot, cent(2)+obj.shortDist2slot, 0, 0];
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc3 = [cent(1)-obj.longDist2slot, cent(2)+obj.shortDist2slot, 0, 0];
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc4 = [cent(1), cent(2)-obj.shortDist2slot, 0, 0];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc5 = [cent(1)+obj.longDist2slot, cent(2)-obj.shortDist2slot, 0, 0];
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc6 = [cent(1)-obj.longDist2slot, cent(2)-obj.shortDist2slot, 0, 0];
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                    elseif (tilt == 0) && (portrait == 1)
                        disp("c")
                        %%% PATTERN ONE
                        %right side
                        opp = obj.shortDist2slot*sin(angle);
                        adj = obj.shortDist2slot*cos(angle);
                        nc = [cent(1)+adj, cent(2)-opp, angle, 1];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(0, obj.longDist2slot, ((pi/2)-phi) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        nc2(3) = angle;
                        nc2(4) = 1;
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -obj.longDist2slot, -1*((pi/2)-phi) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        nc3(3) = angle;
                        nc3(4) = 1;
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        
                        %%left side

                        nc4 = [cent(1)-adj, cent(2)+opp, angle, 1];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, obj.longDist2slot, -1*((pi/2)-phi) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        nc5(3) = angle;
                        nc5(4) = 1;
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -obj.longDist2slot, ((pi/2)-phi) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        nc6(3) = angle;
                        nc6(4) = 1;
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 1) && (portrait == 1)
                        disp("d")

                        %%%%%% PATTERN TWO
                        opp = obj.shortDist2slot*sin(angle);
                        adj = obj.shortDist2slot*cos(angle);
                        nc = [cent(1)+adj, cent(2)+opp, -angle, 1];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(0, obj.longDist2slot, ((pi/2)-phi) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        nc2(3) = -angle;
                        nc2(4) = 1;
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -obj.longDist2slot, -1*((pi/2)-phi) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        nc3(3) = -angle;
                        nc3(4) = 1;
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%left side

                        nc4 = [cent(1)-adj, cent(2)-opp, -angle, 1];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, obj.longDist2slot, -1*((pi/2)-phi) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        nc5(3) = -angle;
                        nc5(4) = 1;
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -obj.longDist2slot, ((pi/2)-phi) - angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        nc6(3) = -angle;
                        nc6(4) = 1;
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 1) && (portrait == 0)
                        disp("e")
                        %bottom side
                        opp = obj.shortDist2slot*sin(angle);
                        adj = obj.shortDist2slot*cos(angle);
                        nc = [cent(1)+opp, cent(2)+adj, angle, 0];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(obj.longDist2slot, 0, -1*((pi/2)-phi) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        nc2(3) = angle;
                        nc2(4) = 0;
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-obj.longDist2slot, 0, ((pi/2)-phi) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        nc3(3) = angle;
                        nc3(4) = 0;
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)-opp, cent(2)-adj, angle, 0];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(obj.longDist2slot, 0, ((pi/2)-phi) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        nc5(3) = angle;
                        nc5(4) = 0;
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-obj.longDist2slot, 0, -1*((pi/2)-phi) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        nc6(3) = angle;
                        nc6(4) = 0;
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    else
                        disp("f")
                        %bottom side
                        opp = obj.shortDist2slot*sin(angle);
                        adj = obj.shortDist2slot*cos(angle);
                        nc = [cent(1)-opp, cent(2)+adj, -angle, 0];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(obj.longDist2slot, 0, -1*((pi/2)-phi) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        nc2(3) = -angle;
                        nc2(4) = 0;
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-obj.longDist2slot, 0, ((pi/2)-phi) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        nc3(3) = -angle;
                        nc3(4) = 0;
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)+opp, cent(2)-adj, -angle, 0];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(obj.longDist2slot, 0, ((pi/2)-phi) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        nc5(3) = -angle;
                        nc5(4) = 0;
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-obj.longDist2slot, 0, -1*((pi/2)-phi) - angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        nc6(3) = -angle;
                        nc6(4) = 0;
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

        function boxes = tempDetectBox(obj, image, pE, lE, brig, eC, sh, lo,mode)
            boxes = [];
            %% noise deletion
            bw = rgb2gray(image) > brig;
            if mode == 1
                boxes = bw;
                return
            end
            eC = round(eC);
            se = strel('square', eC);
            bw = imclose(bw, se);
            bw = (bw == false);

            se = strel('square', eC);
            bw = imclose(bw, se);
            bw = bwareaopen(imfill(bw, 'holes'),50);
            if mode == 2
                boxes = bw;
                return
            end
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

                if (circularity >= 0.4 && circularity <= 0.8)
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
                    if dist2 <= lE
                        portrait = 0;
                    elseif (yMaxCoord(2)-yMinCoord(2) > (2*pE)-5) && (yMaxCoord(2)-yMinCoord(2) < (2*pE)+5)
                        portrait = 1;
                    elseif ((yMaxCoord(2)-yMinCoord(2) < (2*lE)+5) && (yMaxCoord(2)-yMinCoord(2) > (2*lE)-5))
                        portrait = 0;
                    else
                        if tilt == 1
                            if yMaxCoord(1) > pos(1)
                                portrait = 0;
                            else
                                portrait = 1;
                            end
                        else
                            if yMaxCoord(1) < pos(1)
                                portrait = 0;
                            else
                                portrait = 1;
                            end
                        end
                    end

                    angle = 0;
                    if portrait == 1
                        if (dist2 < pE+5 && dist2 > pE-5) && ((yMaxCoord(2)-yMinCoord(2) >= (2*pE)-5) && (yMaxCoord(2)-yMinCoord(2) <= (2*pE)+5))
                            z = 1;
                        else
                            z = pE/dist2;
                            if abs(z) > 1
                                z = dist2/pE;
                            end
                        end
                        angle = acos(z);
                    else
                        if (dist2 < lE+5 && dist2 > lE-5) && ((yMaxCoord(2)-yMinCoord(2) < (2*lE)+5) && (yMaxCoord(2)-yMinCoord(2) > (2*lE)-5))
                            z = 1;

                        else
                            z = lE/dist2;
                            if abs(z) > 1
                                z = dist2/lE;
                            end
                        end
                        angle = acos(z);
                    end
%                     angle
%                     tilt
%                     dist2
%                     portrait
                    phi = acos(sh/lo);
                    smallAngle = false;
                    if (abs(angle) < 0.08) && (portrait == 1)
                        smallAngle = true;
                        nc = [cent(1)+sh, cent(2)];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc2 = [cent(1)+sh, cent(2)+lo];
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc3 = [cent(1)+sh, cent(2)-lo];
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc4 = [cent(1)-sh, cent(2)];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc5 = [cent(1)-sh, cent(2)+lo];
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc6 = [cent(1)-sh, cent(2)-lo];
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                    elseif (abs(angle) < 0.08) && (portrait == 0)
                        smallAngle = true;
                        nc = [cent(1), cent(2)+sh];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc2 = [cent(1)+lo, cent(2)+sh];
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc3 = [cent(1)-lo, cent(2)+sh];
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc4 = [cent(1), cent(2)-sh];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc5 = [cent(1)+lo, cent(2)-sh];
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                        nc6 = [cent(1)-lo, cent(2)-sh];
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)
                    elseif (tilt == 0) && (portrait == 1)
                        %%% PATTERN ONE
                        %right side
                        opp = sh*tan(angle);
                        adj = sh*cos(angle);
                        nc = [cent(1)+adj, cent(2)-opp];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(0, lo, ((pi/2)-phi) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -lo, -1*((pi/2)-phi) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        
                        %%left side

                        nc4 = [cent(1)-adj, cent(2)+opp];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, lo, -1*((pi/2)-phi) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -lo, ((pi/2)-phi) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 1) && (portrait == 1)

                        %%%%%% PATTERN TWO
                        opp = sh*tan(angle);
                        adj = sh*cos(angle);
                        nc = [cent(1)+adj, cent(2)+opp];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(0, lo, ((pi/2)-phi) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(0, -lo, -1*((pi/2)-phi) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%left side

                        nc4 = [cent(1)-adj, cent(2)-opp];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(0, lo, -1*((pi/2)-phi) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(0, -lo, ((pi/2)-phi) - angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    elseif (tilt == 0) && (portrait == 0)
                        %bottom side
                        opp = sh*sin(angle);
                        adj = sh*cos(angle);
                        nc = [cent(1)+opp, cent(2)+adj];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(lo, 0, -1*((pi/2)-phi) + angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-lo, 0, ((pi/2)-phi) + angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)-opp, cent(2)-adj];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(lo, 0, ((pi/2)-phi) + angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-lo, 0, -1*((pi/2)-phi) + angle);
                        nc6(1) = nc6(1)+cent(1);
                        nc6(2) = nc6(2)+cent(2);
                        plot(nc6(1), nc6(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                    else
                        %bottom side
                        opp = sh*sin(angle);
                        adj = sh*cos(angle);
                        nc = [cent(1)-opp, cent(2)+adj];
                        plot(nc(1), nc(2), 'bo', 'MarkerSize', 10, 'LineWidth',5)

                        nc2 = obj.converter.convertDirection(lo, 0, -1*((pi/2)-phi) - angle);
                        nc2(1) = nc2(1)+cent(1);
                        nc2(2) = nc2(2)+cent(2);
                        plot(nc2(1), nc2(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);
                        nc3 = obj.converter.convertDirection(-lo, 0, ((pi/2)-phi) - angle);
                        nc3(1) = nc3(1)+cent(1);
                        nc3(2) = nc3(2)+cent(2);
                        plot(nc3(1), nc3(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        %%top side

                        nc4 = [cent(1)+opp, cent(2)-adj];
                        plot(nc4(1), nc4(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc5 = obj.converter.convertDirection(lo, 0, ((pi/2)-phi) - angle);
                        nc5(1) = nc5(1)+cent(1);
                        nc5(2) = nc5(2)+cent(2);
                        plot(nc5(1), nc5(2), 'bo', 'MarkerSize', 10, 'LineWidth',5, Color=[1 0 0]);

                        nc6 = obj.converter.convertDirection(-lo, 0, -1*((pi/2)-phi) - angle);
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


        function obj = setParam(obj, loValue, shValue, bValue, eValue)
            obj.shortDist2slot = shValue;
            obj.longDist2slot = loValue;
            obj.brightness = bValue;
            obj.edgeConnecter = eValue;
            return
        end
        
        function [p, l, b, e, lo, sh] = getDefaultVal(obj)
            p = obj.defp;
            l = obj.defl;
            b = obj.defb;
            e = obj.defe;
            lo = obj.deflo;
            sh = obj.defsh;
            return
        end
        
        function obj = setDist2Edge(obj, newp, newl)
            obj.pToEdge = newp;
            obj.lToEdge = newl;
            return
        end
       
        function [p, l] = obtainNewDist(obj, image)
            bw = rgb2gray(image) > obj.brightness;
            se = strel('square', obj.edgeConnecter);
            bw = imclose(bw, se);
            bw = (bw == false);

            se = strel('square', obj.edgeConnecter);
            bw = imclose(bw, se);
            bw = bwareaopen(imfill(bw, 'holes'),50);

            [B,L] = bwboundaries(bw,'noholes');
            stats = regionprops(L,'Area','Centroid');
            figure(Visible="off");
            imshow(image);
            hold on
            for k = 1:length(B)
                boundary = B{k};
                area = stats(k).Area;
                if area < 100000
                    continue
                end
                plot(boundary(:,2),boundary(:,1),'w','LineWidth',2);
                plot(stats(k).Centroid(1), stats(k).Centroid(2), 'bo', 'MarkerSize', 10, 'LineWidth',5);

            end
            flag = 0;
            while flag == 0
                try
                    fig = figure("Name", "draw a line to determine the diameter of caps");
                    imshow(image)
                    hold on
                    text(1,1,"draw a vertical line from centroid of a box to the edge, then draw another line horizontally from centroid to edge", "Color",[0 1 0], "FontWeight","bold");
                    d = drawline;
                    pos = d.Position;
                    diffpos = diff(pos);
                    p = hypot(diffpos(1), diffpos(2));
                    d = drawline;
                    pos = d.Position;
                    diffpos = diff(pos);
                    l = hypot(diffpos(1), diffpos(2));
                catch
                    continue
                end
                flag = 1;
            end
            
            close(fig)
            return
        end
    end



end