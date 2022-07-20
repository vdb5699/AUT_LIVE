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
    
    methods (Access = public)
        function obj = Colour_Detection()
            obj.defRB = [75 150];
            obj.defGB = [30 120];
            obj.defBB = [0 50];

            obj.defRR = [155 255];
            obj.defGR = [0 100];
            obj.defBR = [0 10];

            obj = restoreDefault(obj);
        end

        function capList = detectColour(obj, image, caps, rad)
            brownList = obj.detectBrown(image, caps, rad,obj.RB, obj.GB, obj.BB);
            redList = obj.detectRed(image, caps, rad, obj.RR, obj.GR, obj.BR);

            capList = [brownList, redList];
            return
        end

        function capList = tempDetectColour(obj, image, cap, rad, rb, gb, bb, rr, gr, br)

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

    methods (Access = private)
        function brownList = detectBrown(obj, image, caps, rad,rb, gb, bb)

        end

        function redList = detectRed(obj, image, caps, rad,rr, gr, br)

        end
    end

end