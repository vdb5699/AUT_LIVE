classdef Coordinate_Converter
    methods
        function [newX, newY] = convertBrown(obj, x, y)
            %% write func when calibration is done
            newX = 0.0306*x - 29.464;
            newX = newX*10;
            newY = -1*((7e-7)*y*y) - 0.0299*y + 17.235;
            newY = newY*10;
            erX = (((9e-5)*newX*newX) + 0.037*newX + 3);
            if erX < 0 
                erX = 0;
            end
            newX = newX + erX;
            newY = newY + (((-1e-5)*newX*newX) - 0.0873*newX - 25);
%             newX = newX - ((0.0015*newX*newX) + 0.0577*newX + 0.5);
            newc = obj.convertDirection(newX, newY, ((3*pi)/4));
            newX = newc(1);
%             a = obj.convertDirection(0, -15, ((3*pi)/4));
            newY = newc(2);
            return
        end

        function [newX, newY] = convertRed(obj, x, y)
            %% write func when calibration is done


        end

        function newCoord = convertDirection(obj, x, y, angle)
            newCoord = [cos(angle), sin(angle); -1*sin(angle), cos(angle)]*[x;y];
            return
        end
    end
end