classdef Coordinate_Converter
    methods
        function [newX, newY] = convertBrown(obj, x, y)
            %% write func when calibration is done
%             newX = ((1e-8)*x*x*x) - ((3e-5)*x*x) + 0.3287*x -296.9;
            newX = 0.3085*x - 294.79;
            newY = (-0.3018*y) +162.89; 
            newc = obj.convertDirection(newX, newY, ((3*pi)/4));
%             extrax = ((-3e-10)*(newX^4)) + ((6e-8)*(newX^3)) + ((2e-5)*(newX^2)) + 0.0319*x + 15;
%             extray = ((8e-10)*(newX^4)) + ((-5e-7)*(newX^3)) + ((4e-5)*(newX^2)) - 0.0536*x -22;
            extrax = 0.0356*newX + 15.128;
            extray = -0.085*newX - 18.706;
            extrax = extrax - (-0.0818*newY + 2.0184);
            extray = extray - (-0.0515*newY - 1.7187);
            extra = obj.convertDirection(extrax, extray, ((3*pi)/4));
            newX = newc(1) + extra(1);
            newY = newc(2) + extra(2);
            return
        end

        function [newX, newY] = convertRed(obj, x, y)
            %% write func when calibration is done
            newX = 0.3085*x - 294.79;
            newY = -0.3018*y +162.89;
            newc = obj.convertDirection(newX, newY, ((3*pi)/4));
            %             extrax = ((-3e-10)*(newX^4)) + ((6e-8)*(newX^3)) + ((2e-5)*(newX^2)) + 0.0319*x + 15;
            %             extray = ((8e-10)*(newX^4)) + ((-5e-7)*(newX^3)) + ((4e-5)*(newX^2)) - 0.0536*x -22;
            extrax = (0.0356*newX + 15.128) + newX*(0.1294);
            extray = (-0.085*newX - 18.706) + (-0.0125*newX - 4.2288);
            extrax = extrax - (-0.0818*newY + 2.0184);
            extray = extray - (-0.0515*newY - 1.7187) + (0.1104*newY + 2.99);
            extra = obj.convertDirection(extrax, extray, ((3*pi)/4));
            newX = newc(1) + extra(1);
            newY = newc(2) + extra(2);

        end
        
        function [newX, newY] = convertBox(obj, x, y)
            newX = 0.5331*x - 501.22;
            newY = (-0.5632*y) +301.16; 
            newc = obj.convertDirection(newX, newY, pi/4);
            newX = newc(1);
            newY = newc(2);
        end

        function newCoord = convertDirection(obj, x, y, angle)
            newCoord = [cos(angle), sin(angle); -1*sin(angle), cos(angle)]*[x;y];
            return
        end
    end
end