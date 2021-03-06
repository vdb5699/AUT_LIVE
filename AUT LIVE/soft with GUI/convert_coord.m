classdef convert_coord
    methods
        function [newX, newY]= convertBrown(obj, x, y, flag)
%             newX = (1e-9*(x^3)) - (4e-6*(x^2)) + 0.0354*x - 35.343;
%             newY = -1*(1e-9*(y^3)) + (3e-6*(y^2)) -0.0325*y + 17.602;
            newX = (4e-7*(x*x)) + (0.0301*x) - 33.946;
            newY = -1*(7e-7*(y*y)) - (0.0301*y) + 18.543;
            newX = newX*10;
            newY = newY*10;
            if flag == 1
                newX = newX - ((3e-5*(newX*newX)) + 0.0153*newX + 2)
            end
            newCoord = obj.convertDirection(newX, newY, ((3*pi)/4));
            newX = newCoord(1);
            newY = newCoord(2);
            return
        end

        function [newX, newY] = convertRed(obj, x, y, flag)
%             newX = 0.0368*x - 40.511;
%             newY = -0.0368*y + 22.257;
%             newX = (4e-9*(x^3)) - (1e-6*(x^2)) + 0.0379*x - 40.481;
%             newY = -1*(4e-9*(y^3)) + (8e-6*(y^2)) - 0.0412*y +21.453; 
%             newX = (1e-9*(x^3)) - (4e-6*(x^2)) + 0.0354*x - 35.343;
%             newY = -1*(1e-9*(y^3)) + (3e-6*(y^2)) -0.0325*y + 17.602;
            newX = -1*(3e-7*(x*x)) + (0.0319*x) - 39.087;
            newY = -1*(6e-7*(y*y)) - (0.0304*y) + 18.211;
            newX = newX*10*1.0672;
            newY = newY*10*1.0672;
            %new bit, delete if necessary
            if flag == 2
                newX = newX - ((1e-05*(newX^2)) - (0.01*newX) +2);
                newY = newY + 5 ;
            end
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