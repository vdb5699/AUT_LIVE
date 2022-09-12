%%
% This class is for detecting colours of detected caps
% Written by Ryuichi
%%

classdef Colour_Detection
    properties (Access = public)
        RB % "R" value boundary for "B"rown caps
        GB % "G" value boundary for "B"rown caps
        BB % "B" value boundary for "B"rown caps
        
        RR % "R" value boundary for "R"ed caps
        GR % "G" value boundary for "R"ed caps
        BR % "B" value boundary for "R"ed caps
    end

    properties (Access = private)
        %%these properties are the same thing as the properties introduced
        %%above, but they are the default values, thus cannot changed by
        %%the users. (if you want to make it so that the users can changes
        %%them, create setter functions)
        defRB
        defGB
        defBB

        defRR
        defGR
        defBR
    end
    
    methods (Access = public)

        %%
        %This is the constructor for this class. No inputs needed.
        %%
        function obj = Colour_Detection()
            %% setting default values for each properties
            obj.defRB = [75 160];
            obj.defGB = [10 120];
            obj.defBB = [0 50];

            obj.defRR = [155 255];
            obj.defGR = [0 100];
            obj.defBR = [0 10];

            obj = restoreDefault(obj);
        end
        
        %%
        % set function for all the boundary values
        %%
        function obj = setBoundaries(obj, rb, gb, bb, rr, gr, br)
            obj.RB = rb;
            obj.GB = gb;
            obj.BB = bb;
            obj.RR = rr;
            obj.GR = gr;
            obj.BR = br;
            return
        end

        %%
        % Function for detecting colours of rach cap. 
        % image should be the image being analysed.
        % caps is the centroids of detected caps (this can be first two columns of output of
        % detectCaps() function from Cap_detection class).
        % rad is the radius of corresponding caps (this can be the third column of output of
        % detectCaps() function from Cap_detection class).
        % diameter is the expected diameter of a cap. This variable can be
        % taken from diameter property from Cap_Detection class.
        %%
        function capList = detectColour(obj, image, caps, rad, diameter)
            % detectBrown and detectRed functions are later in this class.
            brownList = obj.detectBrown(image, caps, rad, diameter, obj.RB, obj.GB, obj.BB);
            redList = obj.detectRed(image, caps, rad, diameter, obj.RR, obj.GR, obj.BR);
            
            %combine the brown list and red list
            capList = [brownList, redList];
            return
        end

        %%
        % Function for detecting colours of rach cap.
        % Same functionality as the function above, but the users get to
        % input boundary values in a form of arrays i.e. rb can be
        % something like [100 255], indicating that rb ranges from 100 to
        % 255.
        % image should be the image being analysed.
        % caps is the centroids of detected caps (this can be first two columns of output of
        % detectCaps() function from Cap_detection class).
        % rad is the radius of corresponding caps (this can be the third column of output of
        % detectCaps() function from Cap_detection class).
        % diameter is the expected diameter of a cap. This variable can be
        % taken from diameter property from Cap_Detection class.
        %%
        function capList = tempDetectColour(obj, image, caps, rad, diameter,rb, gb, bb, rr, gr, br)
            brownList = obj.detectBrown(image, caps, rad, diameter, rb, gb, bb);
            redList = obj.detectRed(image, caps, rad, diameter, rr, gr, br);

            capList = [brownList, redList];
        end

        %%
        % function for eliminating unnecessary caps.
        % capList can be the output of detectColour() function
        % range is the how close the caps have to be, to be considered as a
        % duplicate. (default is 100 but change them if needed)
        %%
        function newCapList = eliminateDuplicate(obj, capList, range)
            % set the centre of the image (change the next line if
            %% resolution of the image when detecting changes)
            centre = [960 540];
            %%


            % cutoff for caps, if there are caps detected below this line
            % would be deleted. (set this to the maximum y value of image
            % if cutoff is not needed)
            cutoff = 0.92*1080;

            % return empty list if caplist is empty.
            if width(capList) == 1
                newCapList = [];
                return
            else
                % delete caps below cutoff
                for l = 1:width(capList)
                    if capList(l).y > cutoff
                        capList = [capList(1:l-1), capList(l+1:end)];
                        break
                    end
                end

                % create dummy list
                newCapList = [Cap([0,0], 0, "Unknown"), Cap([0,0], 0,"Unknown")];


                %% change w and h to the used resolution of image if needed 
                w = 1920;
                h = 1080;
                %% 
                counter = 1;

                %% eliminate duplicate caps
                for ind = 1:width(capList)
                    for ind2 = 1:width(newCapList)
                        MaxX = capList(ind).x + range;
                        MinX = capList(ind).x - range;
                        MaxY = capList(ind).y + range;
                        MinY = capList(ind).y - range;
                        newX = newCapList(ind2).x;
                        newY = newCapList(ind2).y;
                        % eliminate caps that are too close to each other
                        % (the cap that is closer to the centre is
                        % eliminated)
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
                        % add the cap that is further from the centre to
                        % the capList.
                        if ind2 == width(newCapList)
                            newCapList(counter) = Cap(capList(ind).centreCoord, capList(ind).radius, capList(ind).colour);
                            counter = counter + 1;
                        end
                    end
                end
                return
            end
        end

        %%
        % This functions is for visualising the detected caps, their coordinate, and RGB values.
        % the caplist (output of eliminateDuplicate() or detectColour()
        % funtions
        %%
        function newImage = visualiseAnalysis(obj, capList, image)
            % return original image if caplist is empty
            if width(capList) < 1
                newImage = image;
                return
            else
                %create figure and display image on it
                fig = figure(Visible="off");
                imshow(image);
                hold on
               
                % diaplay detected caps with their coordinate and RGB
                % values
                for h = 1:width(capList)
                        str = capList(h).toString();
                        C = strsplit(str,", ");
                        [r, g, b] = obj.getColour(image, capList(h).x, capList(h).y);
                        str = str + newline + "R: " + num2str(r) + ", G: " + num2str(g) + ", B: " + num2str(b); 
                        plot(str2double(C(1)), str2double(C(2)), 'bo', 'MarkerSize', capList(h).radius, 'LineWidth',5);
                        text(str2double(C(1)), str2double(C(2)), str, Color=[0 1 0], FontSize=16, FontWeight="bold");
                end

                %turn figure into image and trim it.
                f = getframe(fig);
                hold off
                newImage = frame2im(f);
                newImage = newImage(29:750,86:1367,:);
                return
            end
        end
        
        %%
        % this function is for getting the RGB value of a pixel.
        % x, and y values are the coordinate of desired pixel.
        %%
        function [R, G, B] = getColour(obj, image,x, y)
            try
                %%
                % both the 1920 should be changed if the image resolution
                % is not 1920x1080.
                %%
                if x > 1920
                    x = 1920;
                elseif x < 0
                    x = 0;
                end
                %%
                % both the 1080 should be changed if the image resolution
                % is not 1920x1080.
                %%
                if y > 1080
                    y = 1080;
                elseif y < 0
                    y = 0;
                end

                %get the rgb value of a pixel and return it
                x = round(x);
                y = round(y);
                R = image(y, x, 1);
                G = image(y, x, 2);
                B = image(y, x, 3);
                return
            catch
                R = 0;
                G = 0;
                B = 0;
                return
            end
        end
        
        %%
        % this function is a getter for all the default values
        %%
        function obj = restoreDefault(obj)
            obj.RB = obj.defRB;
            obj.GB = obj.defGB;
            obj.BB = obj.defBB;

            obj.RR = obj.defRR;
            obj.GR = obj.defGR;
            obj.BR = obj.defBR;
        end
        
        %%
        % this function is a getter for all the current values
        %%
        function vars = getDefVars(obj)
            vars = [obj.defRB; obj.defGB; obj.defBB; obj.defRR; obj.defGR; obj.defBR];
            return
        end
    end

    methods (Access = private)
        %%
        %function to detect brown coloured caps
        %%
        function brownList = detectBrown(obj, image, caps, rad, diameter, rb, gb, bb)
            brownCount = 0;
            %brown cap radius range, please change when lab environment is
            %changed
            radRange = [(diameter/2)+1, (diameter/2)+5];

            % go trough all the caps to see if there are any brown caps
            for index = 1:height(caps)

                %get centroid of current cap
                xPos = caps(index, 1);
                yPos = caps(index, 2);
                
                %xS = x start, and xE = x end. These are surrounding pixels
                %of centroid of the cap
                xS = xPos - 3;
                xE = xPos + 3;
                
                %yS = y start, and yE = y end. These are surrounding pixels
                %of centroid of the cap
                yS = yPos - 3;
                yE = yPos + 3;


                brown = 0;
                maybe = 0;
                notBrown = 0;   
                radius = rad(index);

                % search surrounding pixels as well as the centroid pixels
                % to see if they are brown
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

                % if it is more likely to be a brown cap than anything
                % else, consider it brown, otherwise, discard the cap
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
        %%
        %function to detect red coloured caps, 
        %as the algorithm is the same thing as the brown cap function, the
        %comments redundand
        %%
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