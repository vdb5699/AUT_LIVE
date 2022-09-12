%%
% this is a class for converting slot/bottle coordinates to robot
% coordinate.
% written by Ryuichi
%%

classdef Coordinate_Converter
    methods
        %%
        %function for converting brown capped bottle coordinate
        %%
        function [newX, newY] = convertBrown(obj, x, y)
            %%
            % newX = x coordinate of camera coordinate (in mm), x =
            % x coordinate of bottle in pixels.
            % newY = y coordinate of camera coordinate (in mm), y =
            % y coordinate of bottle in pixels.
            % THIS EQUATION SHOULD BE CHANGED IF LAB ENVIRONMENT CHANGES
            %%
            newX = 0.3085*x - 294.79;
            newY = (-0.3018*y) +162.89; 

            % convert direction of the coordinate (by 3/4*pi) from camera
            % coorinate to robot
            newc = obj.convertDirection(newX, newY, ((3*pi)/4));

            
            %calculate error using error function. 
            %THIS EQUATION SHOULD BE CHANGED IF LAB ENVIRONMENT CHANGES
            extrax = 0.0356*newX + 15.128;
            extray = -0.085*newX - 18.706;
            extrax = extrax - (-0.0818*newY + 2.0184);
            extray = extray - (-0.0515*newY - 1.7187);

            % convert direction of the coordinate (by 3/4*pi) from camera
            % coorinate to robot
            extra = obj.convertDirection(extrax, extray, ((3*pi)/4));
            newX = newc(1) + extra(1);
            newY = newc(2) + extra(2);
            return
        end
        %%
        %function for converting red capped bottle coordinate
        %comments are not written as it has the same logic as the previous
        %function
        %%
        function [newX, newY] = convertRed(obj, x, y)

            newX = 0.3085*x - 294.79;
            newY = -0.3018*y +162.89;

            newc = obj.convertDirection(newX, newY, ((3*pi)/4));

            extrax = (0.0356*newX + 15.128) + newX*(0.1294);
            extray = (-0.085*newX - 18.706) + (-0.0125*newX - 4.2288);
            extrax = extrax - (-0.0818*newY + 2.0184);
            extray = extray - (-0.0515*newY - 1.7187) + (0.1104*newY + 2.99);
     
            extra = obj.convertDirection(extrax, extray, ((3*pi)/4));

            newX = newc(1) + extra(1);
            newY = newc(2) + extra(2);

        end
        %%
        %function for converting box coordinate
        %comments are not written as it has the same logic as the previous
        %function
        %%
        function [newX, newY] = convertBox(obj, x, y)
            newX = 0.5649*x-545.74 + 3.4360;
            newY = (-0.5632*y) +301.16 + 2.9680;
          
            newc = obj.convertDirection(newX, newY, (pi/4)+((2/180)*pi));


            extrax = (-7e-5)*newX*newX - 0.0125*newX + 0.1236;
            if newY < 0
                extrax = extrax + 0.065*newY - 0.14;
            end
            extray = -0.0573*newX - 4.3147;

            extra = obj.convertDirection(extrax, extray, (pi/4)+((2/180)*pi));


            newX = newc(1) + extra(1);
            newY = newc(2) + extra(2);
        end

        %%
        % This function is for convertin direction of a coordinate system
        % to another. This only takes account of rotation
        %%
        function newCoord = convertDirection(obj, x, y, angle)
            newCoord = [cos(angle), sin(angle); -1*sin(angle), cos(angle)]*[x;y];
            return
        end
    end
end