classdef photo_acquisition
    properties (Access = public)
       resolution
       brightness
       sharpness
       contrast
       saturation
       gamma
       
       webcamID

       %%sat 8
       %shar 8
       %bright 8
       %cont 3
       %resolution 2k
       
    end
    
    properties (Access = private)
       defResolution
       defBrightness
       defSharpness
       defContrast
       defSaturation
       defGamma
    end
    
    methods
        function obj = photo_acquisition(defResolution, webcamID)
            obj.defResolution = defResolution;
            obj.resolution = defResolution;
            
            obj.defBrightness = 4;
            obj.brightness = 4;
            
            obj.defContrast = 4;
            obj.contrast = 4;
            
            obj.defSharpness = 4;
            obj.sharpness = 4;
            
            obj.defSaturation = 4;
            obj.saturation = 4;
            
            obj.defGamma = 5;
            obj.gamma = 5;
            obj.webcamID = webcamID;

            camera = webcam(obj.webcamID);
            camera.Brightness = obj.brightness;
            camera.Resolution = obj.resolution;
            camera.Contrast = obj.contrast;
            camera.Saturation = obj.saturation;
            camera.Sharpness = obj.sharpness;
            camera.Gamma = obj.gamma;
        end
        
        function image = manualImageAcq(obj)
            camera = webcam(obj.webcamID);
            camera.Brightness = obj.brightness;
            camera.Resolution = obj.resolution;
            camera.Contrast = obj.contrast;
            camera.Saturation = obj.saturation;
            camera.Sharpness = obj.sharpness;
            camera.Gamma = obj.gamma;
            pause(1);
            image = snapshot(camera);
            [height, width, channels] = size(snapshot(camera));
            image = image(:,(width/2):width,:);
            return
        end

        function image = tempImage(obj, bright, res, cont, sat, shar, gamma)
            camera = webcam(obj.webcamID);
            camera.Brightness = bright;
            camera.Resolution = res;
            camera.Contrast = cont;
            camera.Saturation = sat;
            camera.Sharpness = shar;
            camera.Gamma = gamma;
            pause(1);
            image = snapshot(camera);
            [height, width, channels] = size(image);
            image = image(:,(width/2):width,:);
        end

        function image = tempImageLeft(obj, bright, res, cont, sat, shar, gamma)
            camera = webcam(obj.webcamID);
            camera.Brightness = bright;
            camera.Resolution = res;
            camera.Contrast = cont;
            camera.Saturation = sat;
            camera.Sharpness = shar;
            camera.Gamma = gamma;
            pause(1);
            image = snapshot(camera);
            [height, width, channels] = size(image);
            image = image(:,1:(width/2),:);
        end
        
        function obj = setVars(obj, newRes, newBri,newCont, newSat, newShar, newGam)
            obj.brightness = newBri;
            obj.resolution = newRes;
            obj.contrast = newCont;
            obj.saturation = newSat;
            obj.sharpness = newShar;
            obj.gamma = newGam;
            return
        end
        
        function bri = getDefBri(obj)
            bri = obj.defBrightness;
            return
        end
        
        function res = getDefRes(obj)
           res = obj.defResolution;
           return
        end
        
        function cont = getDefCont(obj)
            cont = obj.defContrast;
            return
        end
        
        function shar = getDefShar(obj)
            shar = obj.defSharpness;
            return
        end
        
        function sat = getDefSat(obj)
            sat = obj.defSaturation;
            return
        end

        function gam = getDefGam(obj)
            gam = obj.defGamma;
            return
        end
        
    end
end