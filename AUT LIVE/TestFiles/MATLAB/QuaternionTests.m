
%% Euler to Quarts Conversion
NewCamPos = [0.00163,-0.38344,-0.92356,-0.00115];
BoxCamPos = [-0.000000007,-0.382683401,0.923879546,0];
eulCam = quat2eul(NewCamPos);
eulCamDeg = rad2deg(eulCam)
eulBoxCam = quat2eul(BoxCamPos);
eulBoxCamDeg = rad2deg(eulBoxCam)

%% Testing Output values - Degrees and Rads give same output
eulCamPos = [ 2.3546 -0.0039  3.1407];
% eulCamPos= deg2rad(eulCamPos)
qCam = eul2quat(eulCamPos)

eulCamPos = [135 -0 180];
eulCamPosDeg= deg2rad(eulCamPos);
qCamDeg = eul2quat(eulCamPosDeg)

eulBoxCamPos = [-2.3562   -0.0000    3.1416];
qBoxCam = eul2quat(eulBoxCamPos);

eulBoxCamPos = [-135 -0 180];
eulBoxCamPosDeg = deg2rad(eulBoxCamPos);
qBoxCamDeg = eul2quat(eulBoxCamPosDeg);

%% 
eulCamPos = [135 -0 180]; %ZYX
eulCamPosDeg= deg2rad(eulCamPos);
qCamDeg = eul2quat(eulCamPosDeg);

eulOppCamPos = [-45 0 180]; %ZYX
eulOppCamPos= deg2rad(eulOppCamPos);
qCam = eul2quat(eulOppCamPos)