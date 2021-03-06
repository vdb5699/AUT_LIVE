classdef cap_detection
    properties
        sensitivity
        edgethresh
        diameter

        defSens
        defThre
        defDia
    end

    methods
        function obj = cap_detection(defSens, defThresh, defDia)
            obj.sensitivity = defSens;
            obj.edgethresh = defThresh;
            obj.diameter = defDia;

            obj.defDia = defDia;
            obj.defSens = defSens;
            obj.defThre = defThresh;
        end

        function caps = automaticDetection(obj, image)
            radius = round(obj.diameter/2);
            [centres, radii] = imfindcircles(image, [radius-8 radius+8], 'Sensitivity', obj.sensitivity, 'EdgeThreshold', obj.edgethresh);
            [centres2, radii2] = imfindcircles(image, [radius-8 radius+8], "EdgeThreshold", obj.edgethresh, Sensitivity=obj.sensitivity, ObjectPolarity="dark");
            centres = [centres; centres2];
            radii = [radii; radii2]
            caps = round(centres)
%             fig = figure("Name", "detected caps", Visible="off");
            fig = figure("Name", "detected caps");
            imshow(image);
            viscircles(centres, radii);
            hold on 
            for i = 1:height(caps)
                str = num2str(caps(i,1)) + ", "+ num2str(caps(i,2));
                text(centres(i,1), centres(i,2), str, 'color', 'cyan');
            end
            return
        end

        function image = tempDetection(obj, img, sens, edge)
            radius = round(obj.diameter/2);
            [centres, radii] = imfindcircles(img, [radius-8 radius+8], 'Sensitivity', sens, 'EdgeThreshold', edge);
            [centres2, radii2] = imfindcircles(img, [radius-8 radius+8], "EdgeThreshold", edge, Sensitivity=sens, ObjectPolarity="dark");
            centres = [centres; centres2];
            radii = [radii; radii2];
            caps = round(centres);
            fig = figure;
            imshow(img);
            hold on
%             fig = figure("Name", "detected caps", Visible="off");
            viscircles(centres, radii); 
            for i = 1:height(caps)
                str = num2str(caps(i,1)) + ", "+ num2str(caps(i,2));
                text(centres(i,1), centres(i,2), str, 'color', 'cyan');
            end
            f = getframe(fig);
            image = frame2im(f);
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


        function newDia = obtainDiameter(obj, image)
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
            newDia = hypot(diffpos(1), diffpos(2))
            close(fig)
            return
        end

        function obj = setVariables(obj, newSens, newThresh)
            obj.sensitivity = newSens;
            obj.edgethresh = newThresh;
        end

        function obj = setDia(obj, newDia)
            obj.diameter = newDia;
        end

        function obj = restoreSens(obj)
            obj.edgethresh = obj.defThre;
            obj.sensitivity = obj.defSens;
        end
    end
end