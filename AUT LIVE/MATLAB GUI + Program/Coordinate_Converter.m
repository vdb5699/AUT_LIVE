classdef Coordinate_Converter
    methods
        function [newX, newY] = convertBrown(obj, x, y)
            %% write func when calibration is done
           

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