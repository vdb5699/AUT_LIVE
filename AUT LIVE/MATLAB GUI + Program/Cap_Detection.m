%% 
% class for cap detection.
% Written by Ryuichi
%%


classdef Cap_Detection
    properties (Access = public)
        sens % detection sensitivity
        edge % detection edge threshold
        dia % detection diameter 
    end

    properties (Access = private)
        %%these properties are the same thing as the properties introduced
        %%above, but they are the default values, thus cannot changed by
        %%the users. (if you want to make it so that the users can changes
        %%them, create setter functions)
        defSens
        defEdge
        defDia
    end

    methods
        %%
        %This is a contructor for this calss, these default values should be
        %changed when the robot location or camera position changes
        %%
        function obj = Cap_Detection()
            obj.defDia = 86.5;
            obj.defEdge = 0.03;
            obj.defSens = 0.96;

            obj = restoreDefault(obj);
        end
        
        %%
        % This function is for detecting circles withtin input image using properties within this
        % class. input image should be the image of bottles captured from
        % above
        %%
        function caps = detectCaps(obj, image)
            %round diamter so it can be used later
            radius = round(obj.dia/2);
            %detect circles within image
            [centres, radii] = imfindcircles(image, [radius-8 radius+8], Sensitivity=obj.sens, EdgeThreshold=obj.edge);
            caps = [round(centres), radii];
            return
        end
        
        %%
        % this function is for detecting circles withtin input image using input values sen is the sensitivity, and edg is the edge threshold. input image should be the image of bottles captured from
        % above
        %%
        function caps = tempDetectCaps(obj, image, sen, edg)
            radius = round(obj.dia/2);
            [centres, radii] = imfindcircles(image, [radius-8 radius+8], Sensitivity=sen, EdgeThreshold=edg);
            caps = [round(centres), radii];
            return
        end
        
        %%
        % This functions is for visualising the detected caps (or circles).
        % given their centroid coordinate and radius
        %%
        function img = visualiseCaps(obj, image, caps)
            %return orifinal iamge if there are no cap input
            if height(caps) == 0
                img = image;
                return
            else
                %create figure to display image
                fig = figure(Visible="off");
                radii = caps(:,3);
                imshow(image);
                hold on;

                %display circles
                viscircles(caps(:,1:2), radii);
                f = getframe(fig);
                hold off

                %trim the image to fit the image
                img = frame2im(f);
                img = img(29:750,86:1367,:);
                return
            end
        end

        %%
        %this function is for obtaining the dimeter of the caps. please use
        %this when the lab environment changes. 
        %%
        function diameter = obtainDiameter(obj, image)
            flag = 0;
            while flag == 0
                try
                    fig = figure("Name", "draw a line to determine the diameter of caps");
                    imshow(image)
                    hold on
                    text(1,1,"draw a line to determine the diameter of caps", "Color",[0 1 0], "FontWeight","bold");
                    d = drawline;
                    pos = d.Position;
                catch
                    continue
                end
                flag = 1;
            end
            diffpos = diff(pos);
            diameter = hypot(diffpos(1), diffpos(2));
            close(fig)
            return
        end

        %%
        % This function is for eliminating unncessary caps. It is never
        % used, as eliminateDuplicate() function in Colour_Detection class
        % works better. Algorithm is explained in the abovementioned
        % function.
        %%
        function shortenedCaps = eliminateDup(obj, caps, range)
            caps = unique(caps,'rows');
            counter = 1;
            %dummy data
            shortenedCaps = [0 0];
            for x = 1:height(caps)
                for y = 1:height(shortenedCaps)
                    if (shortenedCaps(y, 1) < caps(x, 1)+range && shortenedCaps(y, 1) > caps(x, 1)-range) && (shortenedCaps(y, 2) < caps(x, 2)+range && shortenedCaps(y, 2) > caps(x, 2)-range)
                        if (caps(x, 1) > 1104)
                            shortenedCaps(y, 1) = caps(x, 1);
                            shortenedCaps(y, 2) = caps(x, 2);
                        else
                            break
                        end
                    end
                    if y == height(shortenedCaps)
                        shortenedCaps(counter,1) = caps(x, 1);
                        shortenedCaps(counter,2) = caps(x, 2);
                        counter = counter + 1;
                    end
                end
            end
            return
        end

        %%
        % set function for sensitivity and edge threshold
        %%
        function obj = setVariables(obj, newSens, newThresh)
            obj.sens = newSens;
            obj.edge = newThresh;
        end
        
        %%
        % set function for diameter 
        %%
        function obj = setDia(obj, newDia)
            obj.dia = newDia;
        end

        %%
        % get functions for the properties of this class
        %%
        function vars = getDefVars(obj)
            vars = [obj.defDia, obj.defSens, obj.defEdge];
            return
        end
        
        %% 
        % set all properties for this class back to default
        %%
        function obj = restoreDefault(obj)
            obj.edge = obj.defEdge;
            obj.sens = obj.defSens;
            obj.dia = obj.defDia;
        end
    end
end