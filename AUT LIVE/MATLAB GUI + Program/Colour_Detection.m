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
            obj.defRB = [75 150];
            obj.defGB = [30 120];
            obj.defBB = [0 50];

            obj.defRR = [155 255];
            obj.defGR = [0 100];
            obj.defBR = [0 10];

            obj = restoreDefault(obj);
        end

        function capList = detectColour(obj, image, caps, rad, diameter)
            brownList = obj.detectBrown(image, caps, rad, diameter, obj.RB, obj.GB, obj.BB);
            redList = obj.detectRed(image, caps, rad, diameter, obj.RR, obj.GR, obj.BR);

            capList = [brownList, redList];
            return
        end

        function capList = tempDetectColour(obj, image, caps, rad, diameter,rb, gb, bb, rr, gr, br)
            brownList = obj.detectBrown(image, caps, rad, diameter, rb, gb, bb);
            redList = obj.detectRed(image, caps, rad, diamter, rr, gr, br);

            capList = [brownList, redList];
        end

        function capList = eliminateDuplicate(obj, capList)

        end

        function image = visualiseAnalysis(obj, capList, image)

        end

        function [R, G, B] = getColour(obj, image,x, y)
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
                            brown = brown + 1;
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
                            red = red + 1;
                        % estimated values, make them general later
                        elseif (r <= 160 && r >= 95) && (g <= 100 && g >= 50) && (b >= 40 && b <= 85) && (radius > radRange(1) && radius < radRange(2))   
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