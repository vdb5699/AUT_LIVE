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
    
    methods
        function obj = Colour_Detection()
            obj.defRB = [75 150];
            obj.defGB = [30 120];
            obj.defBB = [0 50];

            obj.defRR = [155 255];
            obj.defGR = [0 120];
            obj.defBR = [0 10];

            obj = restoreDefault(obj);
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

end