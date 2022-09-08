MODULE MainModule
	!Constant positions (Please Do not Change it)
    !-----------New Positions START-----------!
    CONST robtarget Home:=[[1018.612159322,0,1417.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ZeroPos:=[[1030, 0, 1460],[0.70706, 0, 0.70715,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !** Below is Bottle Camera Position - change it if you need to 
    CONST robtarget NewCamPos:= [[215, -680.3, 1300],[0.00163,-0.38344,-0.92356,-0.00115],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !** Below is Box Camera Position - change it if you need to 
    CONST robtarget BoxCamPos:=[[223.0963,844.6431,1550],[0,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxPos:= [[366.1, 366, 1588.4],[0.00192, -0.38294, 0.92377, 0.00293],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget BottleCoord:= [[459.36,-646.084,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; ! This target changes later in the code as MATLAB sends the X,Y
    PERS robtarget BoxCoord:= [[518.817,862.399,1558],[-7E-09,-0.382683,0.92388,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; ! This target changes later in the code as MATLAB sends the X,Y
    ! AboveBoxCoord robtarget x,y should change based on the bottle location
    PERS robtarget AboveBoxCoord:= [[301.544,-974.157, 1588.4],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveTable:= [[550.3, -377.8, 1500],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxCoordOne:= [[473.5,410,1588],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ViaPoint:=[[800.591357786,-502.074175633,1375],[0,0.276417599,0.961037622,0],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AudienceCam:=[[-108.392054445,404.524654327,1593.865850606],[0.306068712,-0.601521785,0.556041018,0.48508955],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !-----------New Positions END------------!
	!-----------RobotWriting Alphabets Coords------------!
    CONST robtarget AbovePen:=[[986.4,794.7,1218],[0,0.38265,-0.9239,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PenLocation:=[[986.4,794.7,1124.8],[0,0.38265,-0.9239,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget SafeWritePos:= [[1219.955689697,0,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SafeWritePosRight:=[[1219.955689697,-750,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SafeWritePosTop:=[[1219.955689697,0,1400],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SafeWritePosBottom:=[[1219.955689697,0,950],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveDuster:=[[743.879676977,-800.509897995,1300.071035327],[0.000000006,0.382683505,0.923879502,0.000000013],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Duster:=[[743.879739272,-800.509937926,866.646225387],[0,0.382683433,0.923879532,0],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !------------------Initialising Variables-----------------------!
	VAR	string data;
    VAR socketdev server;
    VAR socketdev client;
    VAR string x_coordinate;
    VAR string y_coordinate;
    VAR string Box_xCoordinate;
    VAR string Box_yCoordinate;
    VAR string randomString;
    VAR string colour;
    VAR string ang;
    VAR string signal;
    VAR string Letter;
    VAR string Font;
    VAR num X;
    VAR num Y;
    VAR num Z;
    VAR num Box_X;
    VAR num Box_Y;
    VAR num sum;
    VAR num n_syrup:= 0;
    VAR num n_coke:= 0;
    VAR bool objects;
    VAR num found1;
    VAR num found2;
    VAR num found3;
    VAR num found4;
    VAR num found5;
    VAR num found6;
    VAR num angle;
    VAR num gap;
    VAR num line;
    VAR num ZLine;
    VAR num boardYPos;
    VAR num boardZPos;
    VAR num VertORLand;
    VAR num num_of_letters;
    VAR speeddata vBottleRot := [1000, 180, 200, 15]; !1st = LinV (mm/s), 2nd = RotV (deg/s), 3rd,4th = external axes
    VAR speeddata vWrite := [200, 45, 200, 15 ]; !1st = LinV (mm/s), 2nd = RotV (deg/s), 3rd,4th = external axes
    VAR robtarget testWritePos;
    VAR clock clock2;
    VAR num time;
    
    PROC TimingStart()
        ClkReset clock2;
        ClkStart clock2;
    ENDPROC
    
    PROC TimingEnd()
        ClkStop clock2;
        time:=ClkRead(clock2);
    ENDPROC
    
    PROC SafeWrite()
        MoveJ Home,v10,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC main()
		AccSet 20,30;           ! Max Acceleration set to 20mm/s^2 and ramping is 20
        moveToHomeSlow;
!        receiveSignal;         ! Where robot will receive signals to do certain tasks
    ENDPROC
    
    PROC GrabDuster()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        moveToHomeSlow;
        MoveJ AboveDuster,v500,fine,tool0\WObj:=wobj0;
        MoveL Duster,v500,fine,tool0\WObj:=wobj0;
        close_gripper;
        MoveL AboveDuster,v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC Erase()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        SafeWritePos:=[[1377,0,1360],[0.00773263,0.708242,0.0146662,0.705775],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        moveToHomeSlow;
        moveToWritePosStart;
        Y:=750;
        X:= 0;
        IF boardZPos <= 900 THEN
            boardZPos:= 1290;
        ENDIF
        IF Font="L" THEN
            sum:=1360;
            WHILE sum >= boardZPos DO
                MoveL RelTool(SafeWritePos,-X,-40,4),vWrite,fine,tool0\WObj:=wobj0;
                MoveL RelTool(SafeWritePos,-X,Y,-4),vWrite,fine,tool0\WObj:=wobj0;
                X:=X+30;
                sum:=1360-X;
                SafeWritePos:=[[1377.96,0,sum],[0.00773263,0.708242,0.0146662,0.705775],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            ENDWHILE
        ELSE
            sum:=1350;
            WHILE sum >= (boardZPos) DO
                MoveL RelTool(SafeWritePos,-X,-40,4),vWrite,fine,tool0\WObj:=wobj0;
                MoveL RelTool(SafeWritePos,-X,Y,-4),vWrite,fine,tool0\WObj:=wobj0;
                X:=X+30;
                sum:=sum-X;
                SafeWritePos:=[[1377.96,0,sum],[0.00773263,0.708242,0.0146662,0.705775],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            ENDWHILE
        ENDIF
        MoveL RelTool(SafeWritePos,-X,Y,-200),vWrite,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC PutAwayDuster()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        moveToHomeSlow;
        MoveJ AboveDuster,v300,fine,tool0\WObj:=wobj0;
        MoveL Duster,v300,fine,tool0\WObj:=wobj0;
        open_gripper;
        MoveL AboveDuster,v300,fine,tool0\WObj:=wobj0;
        moveToHomeSlow;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC GrabPen()
        MoveJ AbovePen,v500,fine,tool0\WObj:=wobj0;
        MoveL PenLocation,v500,fine,tool0\WObj:=wobj0;
        close_gripper;
        MoveL AbovePen,v500,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC PutAwayPen()
        moveToHomeSlow;
        MoveJ AbovePen,v500,fine,tool0\WObj:=wobj0;
        WaitTime 1;
        open_gripper;
        MoveL AbovePen,v500,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    ! The "receiveSignal" function is where the GUI and RS are 
    ! connected via TCP. 
    ! WaitTime is Max for all socket communication tasks.
    ! This function calls the "signalInstruction" method.
    
    PROC receiveSignal()
        !Close Socket
        SocketClose server;
        SocketClose client;
        !Create Socket
        SocketCreate server;
        SocketBind server,"192.168.0.20", 1025;
        SocketListen server;
        SocketAccept server,client, \Time:=WAIT_MAX;
        !Receive Data
        SocketReceive client,\Str :=signal, \Time:=WAIT_MAX;
        WaitTime 1.5;
        SocketSend client,\Str :="RSConnected";
        SocketReceive client,\Str :=signal, \Time:=WAIT_MAX;
        
        !Move robot based on Signal
        signalInstruction;

        ! Error Handling
        ERROR
            IF ERRNO=ERR_SOCK_CLOSED THEN   ! Close sockets and retry connecting if sockets closed
                receiveSignal;
                RETRY;
            ELSEIF ERRNO=40222 THEN
                receiveSignal;
                RETRY;
            ELSE
                stop;
            ENDIF
    ENDPROC
    
    ! The "signalInstruction" function is where the robot  
    ! does tasks based on the signal sent by GUI.
    !
    ! Signal 1 = CamPos
    ! Signal 2 = Move bottles and Pick and Place them
    ! Signal 3 = End of sending Coords
	! Signal 4 = Move to BoxCamPos
    ! Signal 5 = Writing Routines
    ! Signal 6 = Erasing Routines
    ! Signal 7 = Move to Audience to take photo
    ! Signal 8 = Calibrate the pen for writing - someone needs 
    !            to manually allign whiteboard with pen movement
    !
    ! This function calls "receiveSignal" method after
    ! each signal task is completed
    PROC signalInstruction()        
        WHILE signal <> "0" DO
            IF signal = "1" THEN ! CamPos
                moveToCameraPos;
                SocketSend client,\Str :="CamPos"; ! Sending MATLAB data so it knows to carry on
                receiveSignal;
            ELSEIF signal = "2" THEN  
                ! Move to Bottle and Start Pick and Place
                SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
                TimingStart;
                WHILE data <> "3" DO ! 3 is end of sending Coords. Code runs until 3 is sent by MATLAB
                    colour := StrPart(data,1,1);
                    
                    ! Seperating data by looking for commas
                    found1 := StrFind(data,1,",");
                    found2 := StrFind(data,found1+1,",");
                    found3 := StrFind(data,found2+1,",");
                    found4 := StrFind(data,found3+1,",");
                    found5 := StrFind(data,found4+1,",");
                    found6 := StrFind(data,found5+1,",");
                    x_coordinate := StrPart(data,found1+1,found2-found1-1);
                    y_coordinate := StrPart(data,found2+1,found3-found2-1);
                    Box_xCoordinate := StrPart(data,found3+1,found4-found3-1);
                    Box_ycoordinate := StrPart(data,found4+1,found5-found4-1);
                    ang := StrPart(data,found5+1,found6-found5-1);
                    randomString := StrPart(data,found6+1,StrLen(data)-found6);
                    objects :=StrToVal(ang,angle);
                    objects :=StrToVal(x_coordinate,X);
                    objects := StrToVal(y_coordinate,Y);
                    objects:= StrToVal(Box_xCoordinate,Box_X);
                    objects:= StrToVal(Box_ycoordinate,Box_Y);
                    objects:= StrToVal(randomString,VertORLand);     
                    
                    PickAndPlaceBottles; ! Robot will start picking up bottles and putting into boxes from here
                    SocketSend client,\Str :="SendNext"; ! Sending MATLAB data so it knows to carry on
                    SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
                ENDWHILE
                TimingEnd;
                receiveSignal;   
            ELSEIF signal = "4" THEN 
                ! Move to BoxCamPos
                moveToBoxCamFast;
                SocketSend client,\Str :="AtBox"; ! Sending MATLAB data so it knows to carry on
                receiveSignal;
            ELSEIF signal = "5" THEN
                !Writing Routines - please do not write more than 25 characters (including spaces) 
                SafeWritePos:= [[1219.955689697,0,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
                SocketSend client,\Str :="InFive"; ! Sending MATLAB data so it knows to carry on
                SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
                moveToHomeSlow;
                GrabPen;
                line:=0;
                
                Font := StrPart(data,1,1);
                ! Font Size
                IF Font="S" THEN
                        X:= 40;
                        Y:= 15;
                        Z:= 20;
                        gap:= 40;
                        ZLine:= 50;
                    ELSEIF Font="M" THEN
                        X:= 40;
                        Y:= 30;
                        Z:= 40;
                        gap:= 70;
                        ZLine:= 90;
                    ELSE
                        X:= 40;
                        Y:= 60;
                        Z:= 80;
                        gap:= 130;
                        ZLine:= 170;
                ENDIF
                IF Font ="L" THEN
                    boardYPos:= -40;
                    boardZPos:= 1290;
                ELSE
                    boardYPos:=0;
                    boardZPos:=1320;
                ENDIF
                FOR number FROM 3 TO StrLen(data) DO
                    
                    Letter := StrPart(data,number,1);
                    robotWrite;
                    IF boardYPos <= -710 THEN
                        boardYPos:= 0;
                        IF boardZPos <= 990 THEN
                            break;
                        ELSEIF number <= StrLen(data) THEN
                            boardZPos:= boardZPos - ZLine;
                            line:= line+1;
                        ENDIF
                    ENDIF
                    IF number = (StrLen(data)) THEN
                        randomString:= "LastLetter";
                        MoveL Offs(SafeWritePos,-200,0,0), v100,fine,tool0\WObj:=wobj0;
                    ENDIF
                ENDFOR
                SocketSend client,\Str :="WriteFinished"; ! Sending MATLAB data so it knows to carry on
                SafeWritePos:= [[1219.955689697,0,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
                PutAwayPen;
                moveToHomeSlow;
                receiveSignal;
            ELSEIF signal = "6" THEN
                ! Erasing Routines
                GrabDuster;
                Erase;
                PutAwayDuster;
                SocketSend client,\Str :="InSix"; ! Sending MATLAB data so it knows to carry on
                receiveSignal;
            ELSEIF signal = "7" THEN
                !Taking photo of Audience
                AudienceCamPath;
                SocketSend client,\Str :="InSeven"; ! Sending MATLAB data so it knows to carry on
                receiveSignal;
            ELSEIF signal = "8" THEN
                ! Calibration Routine - someone needs to calibrate whiteboard with the robot in the cage
                calibrate;
                SocketSend client,\Str :="InEight"; ! Sending MATLAB data so it knows to carry on
                receiveSignal;
            ENDIF
            
        ENDWHILE
        moveToHomeSlow;
        
        ! Error Handling
        ERROR
            IF ERRNO=ERR_SOCK_CLOSED THEN   ! Close sockets and retry connecting if sockets closed
                receiveSignal;
                RETRY;
            ELSE
                stop;
            ENDIF
    ENDPROC
    
    !! Method for moving to Audience
    PROC AudienceCamPath()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        MoveJ Home,v200,fine,tool0\WObj:=wobj0;
        MoveL BoxCamPos,v500,z200,tool0\WObj:=wobj0;
        MoveJ AudienceCam,v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE, FALSE;
    ENDPROC
    
    !! Method for Rotating Joint 6 while placing bottles into boxes
    PROC JointSixRot()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        IF colour="R" THEN
            IF angle=0 AND VertORLand=1 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 90), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= 90), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle=0 AND VertORLand=0 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle<>0 AND ((angle) + 90) < 100 AND VertORLand =1 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -90-angle), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= -90-angle), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle<>0 AND ((angle) + 90) < 100 AND VertORLand =0 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -angle), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= -angle), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSE  
                IF VertORLand=0 THEN !If Box Horizontal
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -angle), vBottleRot, z50, tool0\WObj:=wobj0;
                    MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= -angle), vBottleRot, fine, tool0\WObj:=wobj0;
                    open_gripper;
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                ELSEIF VertORLand=1 THEN !If Box Vertical
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 90-angle), vBottleRot, z50, tool0\WObj:=wobj0;
                    MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= 90-angle), vBottleRot, fine, tool0\WObj:=wobj0;
                    open_gripper;
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                ENDIF
            ENDIF
        ELSE
            IF angle=0 AND VertORLand=1 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 90), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= 90), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;

            ELSEIF angle=0 AND VertORLand=0 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;

            ELSEIF angle<>0 AND ((angle) + 90) < 100 AND VertORLand =1 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -90-angle), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= -90-angle), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle<>0 AND ((angle) + 90) < 100 AND VertORLand =0 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -angle), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= -angle), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSE  
                IF VertORLand=0 THEN !If Box Horizontal
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -angle), vBottleRot, z50, tool0\WObj:=wobj0;
                    MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= -angle), vBottleRot, fine, tool0\WObj:=wobj0;
                    open_gripper;
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                ELSEIF VertORLand=1 THEN !If Box Vertical
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 90-angle), vBottleRot, z50, tool0\WObj:=wobj0;
                    MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= 90-angle), vBottleRot, fine, tool0\WObj:=wobj0;
                    open_gripper;
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                ENDIF
            ENDIF
        ENDIF
        PathAccLim FALSE, False;
    ENDPROC
    
    PROC PickAndPlaceBottles()
        moveToAboveTable;
        IF colour = "B" THEN
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            BottleCoord:= [[X,Y,1300],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,fine,tool0\WObj:=wobj0;
            BottleCoord:= [[X,Y,1125],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,fine,tool0\WObj:=wobj0;
            close_gripper;
            BottleCoord:= [[X,Y,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,z50,tool0\WObj:=wobj0;
            n_syrup:= n_syrup + 1;

            !! Putting Syrup Down
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;            
        ELSE
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            BottleCoord:= [[X,Y,1300],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,fine,tool0\WObj:=wobj0;
            BottleCoord:= [[X,Y,1070],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,fine,tool0\WObj:=wobj0;
            close_gripper;      
            n_coke:= n_coke + 1;
            BottleCoord:= [[X,Y,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,z50,tool0\WObj:=wobj0;

            !! Putting Coke Down
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;
        ENDIF
    ENDPROC
    
    PROC PutBottlesDownSyrup()
        IF n_syrup = 1 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;            
        ELSEIF n_syrup = 2 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;         
        ELSEIF n_syrup = 3 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_syrup = 4 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_syrup = 5 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_syrup = 6 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ENDIF
    ENDPROC
    
    PROC PutBottlesDownCoke()
        IF n_coke = 1 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;            
        ELSEIF n_coke = 2 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;                 
        ELSEIF n_coke = 3 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;    
        ELSEIF n_coke = 4 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];        
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ENDIF
    ENDPROC
    
    PROC moveToHomeSlow()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ Home,vWrite,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToHome()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ Home,v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCameraPos()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ NewCamPos,v3000,fine, tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCameraPosFast()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ NewCamPos,v600,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToZeroPos()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ ZeroPos,v50,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveBoxCoord()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBoxCoord,v300,z20,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveTable()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveTable,v3000,z200,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCam()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ BoxCamPos,v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCamFast()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ BoxCamPos,v3000,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC calibrate()
        moveToHomeSlow;
        WaitTime 2;
        GrabPen;
        SafeWritePos:= [[1219.955689697,0,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        MoveJ SafeWritePos,v50,fine,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveL SafeWritePosRight,v50,fine,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveL SafeWritePos,v50,fine,tool0\WObj:=wobj0;
        calibrateWriteVertical;
    ENDPROC
    
    PROC calibrateWriteVertical()
        SafeWritePos:= [[1219.955689697,0,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        MoveJ SafeWritePos,v50,fine,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveL SafeWritePosTop,v50,fine,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveL SafeWritePosBottom,v50,fine,tool0\WObj:=wobj0;
        moveToHomeSlow;
        PutAwayPen;
    ENDPROC
    
!    PROC moveToWritePos()
!        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
!        MoveL Offs(SafeWritePos,-200,0,0), v100,fine,tool0\WObj:=wobj0; 
!        MoveL SafeWritePos,v100,fine,tool0\WObj:=wobj0;
!        PathAccLim FALSE,FALSE;
!    ENDPROC
    
    PROC moveToWritePosStart()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ Offs(SafeWritePos,-100,0,0), vWrite,fine,tool0\WObj:=wobj0; 
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC open_gripper()       
        SetDO D_652_10_OUT1, 1;
        WaitTime 0.5;
        SetDO D_652_10_OUT1, 0;
     ENDPROC

    PROC close_gripper()     
        SetDO D_652_10_OUT0, 1;
        WaitTime 0.5;
        SetDO D_652_10_OUT0, 0;
    ENDPROC
    
    PROC moveToAboveBoxPos()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBoxPos, v3000, z100, tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveBoxCoordOne()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBoxCoordOne, v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
ENDMODULE
