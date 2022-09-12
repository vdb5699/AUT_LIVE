%% 
% This class is for using the usb camera. please ensure that the MATLAB
% webcam support package is installed
% Written by Ryuichi
%% 


classdef Camera
    properties (Access = public)
        res %resolution of camera
        bright %brightness setting of camera
        sharp %sharpness setting of camera
        cont %contrast setting of camera
        sat %saturation setting of camera
        gam %gamma setting of camera
    end

    properties (Access = private)
        %%these properties are the same thing as the properties introduced
        %%above, but they are the default values, thus cannot changed by
        %%the users. (if you want to make it so that the users can changes
        %%them, create setter functions)
        defRes
        defBright
        defSharp
        defCont
        defSat
        defGam
    end

    methods (Access = public)
        %% 
        %constructor for this calss, no input needed
        %%
        function obj = Camera()
            %set default value for properties. change them if needed.
            obj.defRes = '3840x1080';
            obj.defBright = 0;
            obj.defCont = 0;
            obj.defSharp = 0;
            obj.defSat = 8;
            obj.defGam = 1;
            obj = restoreDefault(obj);
     
        end
        %%
        %This function is for setting all variables to default
        %%
        function obj = restoreDefault(obj)
            obj.res = obj.defRes;
            obj.bright = obj.defBright;
            obj.cont = obj.defCont;
            obj.sharp = obj.defSharp;
            obj.sat = obj.defSat;
            obj.gam = obj.defGam;
            return
        end
        
        %%
        %This function is for setting all variables to input values
        %%
        function obj = changeSettings(obj, newRes, newBr, newCon, newSat, newSharp, newGam)
            obj.res = newRes;
            obj.bright = newBr;
            obj.cont = newCon;
            obj.sharp = newSharp;
            obj.sat = newSat;
            obj.gam = newGam;
            return
        end

        %% 
        %this function is for acquiring the images. camID should be
        %camera's ID number or camera name displayed on MATLAB. the side
        %should be "left" or "right"
        %%
         
        function image = imageAcq(obj, camID, side)
            try
                %create webcam object.
                camera = webcam(camID);

                %set webcam parameters
                camera.Resolution = obj.res;
                camera.Brightness = obj.bright;
                camera.Contrast = obj.cont;
                camera.Saturation = obj.sat;
                camera.Sharpness = obj.sharp;
                camera.Gamma = obj.gam;

                %give webcam time to change settings, make it longer if not
                %working properly.
                pause(0.5)

                %acquire image
                image = snapshot(camera);
                [height, width, channels] = size(image);
                
                %extract right or left side of the entire image based on
                %input.
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
             % catching any errors
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
        
        %% 
        %this function is for acquiring the images. It has the same functionality as the one above, 
        % but this one allows user to input the camera parameters. 
        % camID should be camera's ID number or camera name displayed on MATLAB. 
        % the side should be "left" or "right"
        % for resolution please look at camera's available resolutions
        %brightness, contrast, saturation, and sharpness values vary from 0
        %to 8, and gamma vary from 1 to 500.
        % as the functionalities of the function are the same, there are no
        % comments for how the algorithm works
        %%
        function image = tempImageAcq(obj, camID, side, res, bri, cont, sat, shar, gam)
            try
                camera = webcam(camID);
                camera.Resolution = res;
                camera.Brightness = bri;
                camera.Contrast = cont;
                camera.Saturation = sat;
                camera.Sharpness = shar;
                camera.Gamma = gam;
                pause(0.5)
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