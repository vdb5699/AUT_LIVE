classdef Colour_Detection
    properties (Access = public)
        RB
        GB
        BB
        
        RR
        GR
        BR
    end

    properties (Access = private)
        defRB
        defGB
        defBB

        defRR
        defGR
        defBR
    end
    
    methods (Access = public)
        function obj = Colour_Detection()
            obj.defRB = [75 160];
            obj.defGB = [10 120];
            obj.defBB = [0 50];

            obj.defRR = [155 255];
            obj.defGR = [0 100];
            obj.defBR = [0 10];

            obj = restoreDefault(obj);
        end
        
        function obj = setBoundaries(obj, rb, gb, bb, rr, gr, br)
            obj.RB = rb;
            obj.GB = gb;
            obj.BB = bb;
            obj.RR = rr;
            obj.GR = gr;
            obj.BR = br;
            return
        end

        function capList = detectColour(obj, image, caps, rad, diameter)
            brownList = obj.detectBrown(image, caps, rad, diameter, obj.RB, obj.GB, obj.BB);
            redList = obj.detectRed(image, caps, rad, diameter, obj.RR, obj.GR, obj.BR);

            capList = [brownList, redList];
            return
        end

        function capList = tempDetectColour(obj, image, caps, rad, diameter,rb, gb, bb, rr, gr, br)
            brownList = obj.detectBrown(image, caps, rad, diameter, rb, gb, bb);
            redList = obj.detectRed(image, caps, rad, diameter, rr, gr, br);

            capList = [brownList, redList];
        end

        function newCapList = eliminateDuplicate(obj, capList, range)
            centre = [960 540];
            cutoff = 0.92*1080;
            if width(capList) == 1
                newCapList = [];
                return
            else
                for l = 1:width(capList)
                    if capList(l).y > cutoff
                        capList = [capList(1:l-1), capList(l+1:end)];
                    end
                end
                newCapList = [Cap([0,0], 0, "Unknown"), Cap([0,0], 0,"Unknown")];
                w = 1920;
                h = 1080;
                counter = 1;
                for ind = 1:width(capList)
                    for ind2 = 1:width(newCapList)
                        MaxX = capList(ind).x + range;
                        MinX = capList(ind).x - range;
                        MaxY = capList(ind).y + range;
                        MinY = capList(ind).y - range;
                        newX = newCapList(ind2).x;
                        newY = newCapList(ind2).y;
                        if ((MaxX > newX) && (MinX < newX)) && ((newY < MaxY) && (newY > MinY))
                            if (capList(ind).x < centre(1)+range && capList(ind).x > centre(1)-range) && (capList(ind).y < centre(2)+range && capList(ind).y > centre(2)-range)
                                if sqrt((centre(1)-capList(ind).x)^2+(centre(2)-capList(ind).y)^2) < sqrt((centre(1)-newCapList(ind2).x)^2+(centre(2)-newCapList(ind2).y)^2)
                                    newCapList(ind2) = Cap(capList(ind).centreCoord, capList(ind).radius, capList(ind).colour);
                                end
                                break 
                            elseif (capList(ind).x >= w/2 && capList(ind).y >= h/2)
                                if sqrt((1920-capList(ind).x)^2+(1080-capList(ind).y)^2) < sqrt((1920-newCapList(ind2).x)^2+(1080-newCapList(ind2).y)^2)
                                    newCapList(ind2) = Cap(capList(ind).centreCoord, capList(ind).radius, capList(ind).colour);
                                end
                                break
                            elseif (capList(ind).x <= w/2 && capList(ind).y <= h/2)
                                if sqrt(((capList(ind).x)^2)+((capList(ind).y)^2)) < sqrt(((newCapList(ind2).x)^2)+((newCapList(ind2).y)^2))
                                    newCapList(ind2) = Cap(capList(ind).centreCoord, capList(ind).radius, capList(ind).colour);
                                end
                                break
                            elseif (capList(ind).x > w/2 && capList(ind).y < h/2)
                                if sqrt((1920-capList(ind).x)^2+(capList(ind).y)^2) < sqrt((1920-newCapList(ind2).x)^2+(newCapList(ind2).y)^2)
                                    newCapList(ind2) = Cap(capList(ind).centreCoord, capList(ind).radius, capList(ind).colour);
                                end
                                break
                            elseif (capList(ind).x < w/2 && capList(ind).y > h/2)
                                if sqrt((capList(ind).x)^2+(1080-capList(ind).y)^2) < sqrt((newCapList(ind2).x)^2+(1080-newCapList(ind2).y)^2)
                                    newCapList(ind2) = Cap(capList(ind).centreCoord, capList(ind).radius, capList(ind).colour);
                                end
                                break
                            end
    
                        end
                        if ind2 == width(newCapList)
                            newCapList(counter) = Cap(capList(ind).centreCoord, capList(ind).radius, capList(ind).colour);
                            counter = counter + 1;
                        end
                    end
                end
                return
            end
        end

        function newImage = visualiseAnalysis(obj, capList, image)
            if width(capList) < 1
                newImage = image;
                return
            else
                fig = figure(Visible="off");
                imshow(image);
                hold on
               
                for h = 1:width(capList)
                        str = capList(h).toString();
                        C = strsplit(str,", ");
                        [r, g, b] = obj.getColour(image, capList(h).x, capList(h).y);
                        str = str + newline + "R: " + num2str(r) + ", G: " + num2str(g) + ", B: " + num2str(b); 
                        plot(str2double(C(1)), str2double(C(2)), 'bo', 'MarkerSize', capList(h).radius, 'LineWidth',5);
                        text(str2double(C(1)), str2double(C(2)), str, Color=[0 1 0], FontSize=16, FontWeight="bold");
                end
                f = getframe(fig);
                hold off
                newImage = frame2im(f);
                newImage = newImage(29:750,86:1367,:);
    %             figure
    %             imshow(newImage);
                return
            end
        end

        function [R, G, B] = getColour(obj, image,x, y)
            if x > 1920
                x = 1920;
            elseif x < 0
                x = 0;
            end

            if y > 1080
                y = 1080;
            elseif y < 0
                y = 0;
            end
            x = round(x);
            y = round(y);
            R = image(y, x, 1);
            G = image(y, x, 2);
            B = image(y, x, 3);
            return
        end

        function obj = restoreDefault(obj)
            obj.RB = obj.defRB;
            obj.GB = obj.defGB;
            obj.BB = obj.defBB;

            obj.RR = obj.defRR;
            obj.GR = obj.defGR;
            obj.BR = obj.defBR;
        end

        function vars = getDefVars(obj)
            vars = [obj.defRB; obj.defGB; obj.defBB; obj.defRR; obj.defGR; obj.defBR];
            return
        end
    end

    methods (Access = private)
        function brownList = detectBrown(obj, image, caps, rad, diameter, rb, gb, bb)
            brownCount = 0;
            radRange = [(diameter/2)+1, (diameter/2)+5];
            for index = 1:height(caps)
                xPos = caps(index, 1);
                yPos = caps(index, 2);

                xS = xPos - 3;
                xE = xPos + 3;

                yS = yPos - 3;
                yE = yPos + 3;

                brown = 0;
                maybe = 0;
                notBrown = 0;   
                radius = rad(index);

                for y = yS:yE
                    for x = xS:xE
                        [r, g, b] = obj.getColour(image, x, y);
                        if (r >= rb(1) && r <= rb(2)) && (g >= gb(1) && g <= gb(2)) && (b >= bb(1) && b <= bb(2)) %&& (radius > radRange(1) && radius < radRange(2))
                            if (radius > radRange(1) && radius < radRange(2))
                                brown = brown + 1;
                            else
                                maybe = maybe + 0.5;
                            end
                        elseif (r >= rb(1) && r <= rb(2)) && (g >= gb(1) && g <= gb(2)) && (b > bb(2) && b <= bb(2)+50) && (radius > radRange(1) && radius < radRange(2))   
                            maybe = maybe + 0.5;
                        else
                            notBrown = notBrown + 1;
                        end
                    end
                end
                if (brown+maybe) >= notBrown
                    brownCount = brownCount + 1;
                    brownList(brownCount) = Cap([caps(index, 1), caps(index,2)], radius, "Brown");
                end
            end
            if brownCount == 0
                brownList = [];
            end
            return
        end

        function redList = detectRed(obj, image, caps, rad, diameter,rr, gr, br)
            redCount = 0;
            radRange = [(diameter/2)-4, (diameter/2)-1];
            for index = 1:height(caps)
                xPos = caps(index, 1);
                yPos = caps(index, 2);

                xS = xPos - 3;
                xE = xPos + 3;

                yS = yPos - 3;
                yE = yPos + 3;

                red = 0;
                maybe = 0;
                notRed = 0;   
                radius = rad(index);

                for y = yS:yE
                    for x = xS:xE
                        [r, g, b] = obj.getColour(image, x, y);
                        if (r >= rr(1) && r <= rr(2)) && (g >= gr(1) && g <= gr(2)) && (b >= br(1) && b <= br(2)) %&& (radius > radRange(1) && radius < radRange(2))
                            if (radius > radRange(1) && radius < radRange(2))
                                red = red + 1;
                            else 
                                maybe = maybe + 0.5;
                            end
                        elseif (r <= rr(2)-95 && r >= rr(2)-60) && (g <= gr(2) && g >= gr(1)+50) && (b >= br(1)+40 && b <= br(2)+75) && (radius > radRange(1) && radius < radRange(2))   
                            maybe = maybe + 0.5;
                        else
                            notRed = notRed + 1;
                        end
                    end
                end
                if (red+maybe) >= notRed
                    redCount = redCount + 1;
                    redList(redCount) = Cap([caps(index, 1), caps(index,2)], radius, "Red");
                end
            end
            if redCount == 0
                redList = [];
            end
            return
        end
    end

end