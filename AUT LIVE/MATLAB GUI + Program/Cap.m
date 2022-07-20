classdef Cap
    properties(Access = public)
        centreCoord
        colour
        radius
        x
        y
    end
    
    methods
        function obj = Cap(centre, radius, colour)
            obj.centreCoord = centre;
            obj.radius = radius;
            obj.colour = colour;
            obj.x = centre(1);
            obj.y = centre(2);
        end

        function str = toString(obj)
            str = num2str(obj.x) + ", " + num2str(obj.y) + ", " + obj.colour;
            return
        end
    end
end