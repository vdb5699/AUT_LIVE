classdef colour_detection
    properties (Access = public)
       RboundB
       GboundB
       BboundB
       
       RboundR
       GboundR
       BboundR
    end
    
    properties (Access = private)
        defRB
        defGB
        defBB
        
        defRR
        defGR
        defBR
    end
    
    methods
        function obj = colour_detection(defRboundB, defGboundB, defBboundB, defBoundRR, defBoundGR, defBoundBR)
            obj.RboundB = defRboundB;
            obj.defRB = defRboundB;
            obj.GboundB = defGboundB;
            obj.defGB = defGboundB;
            obj.BboundB = defBboundB;
            obj.defBB = defBboundB;
            
            obj.RboundR = defBoundRR;
            obj.defRR = defBoundRR;
            obj.GboundR = defBoundGR;
            obj.defGR = defBoundGR;
            obj.BboundR = defBoundBR;
            obj.defBR = defBoundBR;
        end
        %%basic colour detection function
        function capList = detectColour(image, caps)
            for index = 1:height(caps)
               xPos = caps(index,1);
               yPos = caps(index,2);
               
               xS = xPos-2;
               xE = xPos+2;
               
               yS = yPos-2;
               yE = yPos+2;
               
               red = 0;
               brown = 0;
               neither = 0;
               
               for y = yS:yE
                   for x = xS:xE
                        [r, g, b] = obj.getColour(image, x, y);
                        if (r >= obj.RboundB(1) && r <= obj.RboundB(2)) && (g >= obj.GboundB(1) && g <= obj.GboundB(2)) && (b >= obj.BboundB(1) && b <= obj.BboundB(2))
                            brown = brown + 1;
                        elseif (r >= obj.RboundR(1) && r <= obj.RboundR(2)) && (g >= obj.GboundR(1) && g <= obj.GboundR(2)) && (b >= obj.BboundR(1) && b <= obj.BboundR(2))
                            red = red + 1;
                        else
                            neither = neither + 1;
                        end
                   end
               end
               
               if brown > (red + neither)
                   capList(index) = cap([caps(index, 1), caps(index,2)], "Brown");
               elseif red > (brown + neither)
                   capList(index) = cap([caps(index, 1), caps(index,2)], "Red");
               else
                   capList(index) = cap([caps(index, 1), caps(index,2)], "Unknown");
               end
            end
            return
        end
        
        %%advanced one
        function capList = detectColourAdv(obj, brightImage, darkImage, caps)
            %%%%%%%%%FIND A WAY TO REDUCE CAPS WHEN DETECTED AS A BROWN, SO
            %%%%%%%%%THERE IS NO DULICATE.
            brownList = obj.detectBrown(brightImage, caps);
            redList = obj.detectRed(darkImage, caps);

            capList = [brownList, redList];
        end
         
        function brownList = detectBrown(obj, brightImage, caps)
            brownCount = 0;
            for index = 1:height(caps)
                xPos = caps(index,1);
                yPos = caps(index,2);
               
                xS = xPos-3;
                xE = xPos+3;
               
                yS = yPos-3;
                yE = yPos+3;
               
                brown = 0;
                white = 0;
                notBrown = 0;
               
                for y = yS:yE
                    for x = xS:xE
                         [r, g, b] = obj.getColour(brightImage, x, y);
                         if (r >= obj.RboundB(1) && r <= obj.RboundB(2)) && (g >= obj.GboundB(1) && g <= obj.GboundB(2)) && (b >= obj.BboundB(1) && b <= obj.BboundB(2))
                             brown = brown + 1;
                         else
                             notBrown = notBrown + 1;
                         end
                    end
                end
                if brown >= notBrown
                    brownCount = brownCount + 1;
                    brownList(brownCount) = cap([caps(index, 1), caps(index,2)], "Brown");
                end
            end
            return
        end

        function redList = detectRed(obj, darkImage, caps)
            redCount = 0;
            for index = 1:height(caps)
                xPos = caps(index,1);
                yPos = caps(index,2);
               
                xS = xPos-3;
                xE = xPos+3;
               
                yS = yPos-3;
                yE = yPos+3;
               
                red = 0;
                maybe = 0;
                notRed = 0;
               
                for y = yS:yE
                    for x = xS:xE
                         [r, g, b] = obj.getColour(darkImage, x, y);
                         if (r >= obj.RboundR(1) && r <= obj.RboundR(2)) && (g >= obj.GboundR(1) && g <= obj.GboundR(2)) && (b >= obj.BboundR(1) && b <= obj.BboundR(2))
                             red = red + 1;
                         elseif ((r <= 160 && r >= 95) && (g <= 100 && g >= 50) && (b >= 40 && b <= 85))
                             maybe = maybe+0.5;
                         else
                             notRed = notRed+1;
                         end
                    end
                end
                if red+maybe >= notRed
                    redCount = redCount + 1;
                    redList(redCount) = cap([caps(index, 1), caps(index,2)], "Red");
                end
            end
            return
        end
        function [R, G, B] = getColour(obj, image,x, y)
            R = image(y, x, 1);
            G = image(y, x, 2);
            B = image(y, x, 3);
            return
        end
        
        function defR = getdefRB(obj)
            defR = obj.defRB; 
            return
        end
        
        function defG = getdefGB(obj)
            defG = obj.defGB;
            return
        end
        
        function defB = getdefBB(obj)
            defB = obj.defBB;
            return
        end
       
        function defR = getdefRR(obj)
            defR = obj.defRR;
            return
        end
        
        function defG = getdefGR(obj)
            defG = obj.defGR;
            return
        end
        
        function defB = getdefBR(obj)
            defB = obj.defBR;
            return
        end
        
        function obj = setBound(obj, newRB, newGB, newBB, newRR, newGR, newBR)
            obj.RboundB = newRB;
            obj.GboundB = newGB;
            obj.BboundB = newBB;
            
            obj.RboundR = newRR;
            obj.GboundR = newGR;
            obj.BboundR = newBR;
            return
        end
    end
    
end