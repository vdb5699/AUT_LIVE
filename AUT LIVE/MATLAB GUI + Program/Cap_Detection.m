classdef Cap_Detection
    properties (Access = public)
        sens
        edge
        dia
    end

    properties (Access = private)
        defSens
        defEdge
        defDia
    end

    methods
        function obj = Cap_Detection()
            obj.defDia = 86.5;
            obj.defEdge = 0.03;
            obj.defSens = 0.96;

            obj = restoreDefault(obj);
        end

        function caps = detectCaps(obj, image)
            radius = round(obj.dia/2);
            [centres, radii] = imfindcircles(image, [radius-6 radius+6], Sensitivity=obj.sens, EdgeThreshold=obj.edge);
            caps = [round(centres), radii];
            return
        end

        function caps = tempDetectCaps(obj, image, sen, edg)
            radius = round(obj.dia/2);
            [centres, radii] = imfindcircles(image, [radius-8 radius+8], Sensitivity=sen, EdgeThreshold=edg);
            caps = [round(centres), radii];
            return
        end
        
        function img = visualiseCaps(obj, image, caps)
            caps
            if height(caps) == 0
                img = image;
                return
            else
                fig = figure(Visible="off");
    %             fig = figure(Visible="on");
                radii = caps(:,3);
                imshow(image);
                hold on;
                viscircles(caps(:,1:2), radii);
                f = getframe(fig);
                hold off
                img = frame2im(f);
                img = img(29:750,86:1367,:);
                return
            end
        end

        function diameter = obtainDiameter(obj, image)
            flag = 0;
            while flag == 0
                try
                    fig = figure("Name", "draw a line to determine the diameter of caps");
                    imshow(image)
                    hold on
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

        function obj = setVariables(obj, newSens, newThresh)
            obj.sens = newSens;
            obj.edge = newThresh;
        end

        function obj = setDia(obj, newDia)
            obj.dia = newDia;
        end

        function vars = getDefVars(obj)
            vars = [obj.defDia, obj.defSens, obj.defEdge];
            return
        end

        function obj = restoreDefault(obj)
            obj.edge = obj.defEdge;
            obj.sens = obj.defSens;
            obj.dia = obj.defDia;
        end
    end
end