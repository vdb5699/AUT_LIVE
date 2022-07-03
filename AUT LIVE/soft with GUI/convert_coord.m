classdef convert_coord
    methods
        function [newX, newY]= convertBrown(obj, x, y)
%             newX = 0.0319*x - 34.986;
%             newY = -0.0318*y + 18.779;
            newX = (1e-9*(x^3)) - (4e-6*(x^2)) + 0.0354*x - 35.343;
            newY = -1*(1e-9*(y^3)) + (3e-6*(y^2)) -0.0325*y + 17.602;
            newX = newX*10;
            newY = newY*10;
            newCoord = obj.convertDirection(newX, newY, ((3*pi)/4));
            newX = newCoord(1);
            newY = newCoord(2);
            return
        end

        function [newX, newY] = convertRed(obj, x, y)
%             newX = 0.0368*x - 40.511;
%             newY = -0.0368*y + 22.257;
            newX = (2e-9*(x^3)) - (6e-6*(x^2)) + 0.042*x - 41.574;
            newY = -1*(2e-9*(y^3)) + (3e-6*(y^2)) - 0.0373*x +19.889; 
            newX = newX*10;
            newY = newY*10;
            newCoord = obj.convertDirection(newX, newY, ((3*pi)/4));
            newX = newCoord(1);
            newY = newCoord(2);
            return
        end

        function newCoord = convertDirection(obj, x, y, angle)
            newCoord = [cos(angle), sin(angle); -1*sin(angle), cos(angle)]*[x;y];
            return
        end
    end
end