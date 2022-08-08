
%% Euler to Quarts Conversion
NewCamPos = [0.00163,-0.38344,-0.92356,-0.00115];
BoxCamPos = [-0.000000007,-0.382683401,0.923879546,0];
eulCam = quat2eul( NewCamPos)
eulCam = rad2deg(eulCam)
eulBoxCam = quat2eul( BoxCamPos)
eulBoxCam = rad2deg(eulBoxCam)

eulBottomOrRight = [180 pi/2 0];
qZYX = eul2quat(eul)