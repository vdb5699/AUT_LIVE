classdef cap
   properties
       centreCoord
       colour
   end
    
   methods
       function obj = cap(cent, colour)
          obj.centreCoord = cent;
          obj.colour = colour;
       end

       function str = toString(obj)
           str = num2str(obj.centreCoord(1)) + ", " + num2str(obj.centreCoord(2)) + ", " + obj.colour;
           return
       end
   end
    
end