classdef Camera
    properties (Access = public)
        res
        bright
        sharp
        cont
        sat
        gam
    end

    properties (Access = private)
        defRes
        defBright
        defSharp
        defCont
        defSat
        defGam
    end

    methods (Access = public)
        function obj = Camera()
            obj.defRes = '3840x1080';
            obj.defBright = 0;
            obj.defCont = 0;
            obj.defSharp = 0;
            obj.defSat = 8;
            obj.defGam = 1;
            obj = restoreDefault(obj);
     
        end
        
        function obj = restoreDefault(obj)
            obj.res = obj.defRes;
            obj.bright = obj.defBright;
            obj.cont = obj.defCont;
            obj.sharp = obj.defSharp;
            obj.sat = obj.defSat;
            obj.gam = obj.defGam;
            return
        end

        function obj = changeSettings(obj, newRes, newBr, newCon, newSat, newSharp, newGam)
            obj.res = newRes;
            obj.bright = newBr;
            obj.cont = newCon;
            obj.sharp = newSharp;
            obj.sat = newSat;
            obj.gam = newGam;
            return
        end

        function image = imageAcq(obj, camID, side)
%             try
                camera = webcam(camID);
                camera.Resolution = obj.res;
                camera.Brightness = obj.bright;
                camera.Contrast = obj.cont;
                camera.Saturation = obj.sat;
                camera.Sharpness = obj.sharp;
                camera.Gamma = obj.gam;
                image = snapshot(camera);
                [height, width, channels] = size(image);
    
                if side == 'l' || side == "left"
                    image = image(:, 1:(width/2),:);
                elseif side == 'r' || side == "right"
                    image = image(:, (width/2):width,:);
                else
                    errorID = 'camera:inputError';
                    msg = 'Not acceptable input. Accepted inputs are: left, l, right, and r.';
                    me = MException(errorID,msg);
                    throw(me);
                end
                clear('camera')
                return
%             catch ME
%                 if (strcmp(ME.identifier, 'camera:inputError'))
%                     disp('Error Message: ')
%                     disp(ME.message);
%                 else
%                     f = warndlg("Ensure that the camera is connected to PC and not used in other software.");
%                 end
%                 image = false;
%                 return 
%             end
        end

        function image = tempImageAcq(obj, camID, side, res, bri, cont, sat, shar, gam)
            try
                camera = webcam(camID);
                camera.Resolution = res;
                camera.Brightness = bri;
                camera.Contrast = cont;
                camera.Saturation = sat;
                camera.Sharpness = shar;
                camera.Gamma = gam;
                image = snapshot(camera);
                [height, width, channels] = size(image);
    
                if side == 'l' || side == "left"
                    image = image(:, 1:(width/2),:);
                elseif side == 'r' || side == "right"
                    image = image(:, (width/2):width,:);
                else
                    errorID = 'camera:inputError';
                    msg = 'Not acceptable input. Accepted inputs are: left, l, right, and r.';
                    me = MException(errorID,msg);
                    throw(me);
                end
                clear('camera');
                return
            catch ME
                if (strcmp(ME.identifier, 'camera:inputError'))
                    disp('Error Message: ')
                    disp(ME.message);
                else
                    f = warndlg("Ensure that the camera is connected to PC and not used in other software.");
                end
                image = false;
                return 
            end
        end

        function res = getDefRes(obj)
            res = obj.defRes;
            return
        end
           
        function vars = getDefVars(obj)
            vars = [obj.defBright, obj.defCont, obj.defSat, obj.defSharp, obj.defGam];
            return
        end
    end
end