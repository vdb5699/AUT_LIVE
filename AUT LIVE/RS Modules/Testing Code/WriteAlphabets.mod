MODULE MainModule
	!Constant positions (Please Do not Change it)
    !-----------New Positions START-----------!
    CONST robtarget Home:=[[1018.612159322,0,1417.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ZeroPos:=[[1030, 0, 1460],[0.70706, 0, 0.70715,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget NewGripperPosManual:= [[369.6, -766.5, 1214.4],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldOldCameraPos:= [[552.8, -553.6, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldCamPos:= [[556.4, -557.2, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldNewCamPos:= [[326.9438,-581.9982,1300],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget NewCamPos:= [[215, -680.3, 1300],[0.00163,-0.38344,-0.92356,-0.00115],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxPos:= [[366.1, 366, 1588.4],[0.00192, -0.38294, 0.92377, 0.00293],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TemporaryCam:= [[315.629,-721.49,1160],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget WritePos:=[[1118.762959576,0,936.635523609],[0.701584454,0,0.712586314,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Via:=[[1299.925263731,0,969.956556898],[0.295536241,0,0.955331529,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget WriteStart:=[[1336,0,1090],[0.706151696,0,0.708060578,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget A:=[[1200,-25,1015],[0.706152,6E-9,0.708061,1.1E-8],[0,0,-1,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
    
    CONST robtarget StartPos:=[[1336.000077935,0,1240.000023955],[0.706151706,0.000000003,0.708060568,0.000000003],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget R_Corner:=[[1336.000063563,-100.000004349,940.00009488],[0.706151705,0.00000002,0.70806057,0.000000015],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget L_Corner:=[[1336.000063563,100.000004349,940.00009488],[0.706151705,0.000000006,0.70806057,0.000000011],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget R_Mid:=[[1336.00007495,-49.999997558,1090.000058219],[0.706151717,0,0.708060557,0.000000002],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget L_Mid:=[[1336.000074936,49.999998053,1090.000053177],[0.706151696,0.000000009,0.708060578,0.00000001],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !-----------New Positions END------------!
    
    
	!-----------RobotWriting Alphabets Coords------------!
	CONST robtarget A_Horizontal:= [[1018.612159322,-22.5,1327],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];     
    
    PERS robtarget BottLeftNew:=[[1335.999946186,29.999998495,1049.999996829],[0.70618058,0,0.708031771,-0.000000001],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TopLeftNew:=[[1335.999940596,29.999998408,1130.000046425],[0.706180582,-0.000000002,0.708031768,-0.000000001],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TopMidNew:=[[1335.999958569,0,1130.00001521],[0.706180572,0,0.708031779,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TopRightNew:=[[1335.999940596,-29.999998408,1130.000046425],[0.706180582,0.000000002,0.708031768,0.000000001],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget RightMidNew:=[[1335.999945541,-29.99999842,1090.000077422],[0.706180574,-0.000000001,0.708031776,-0.000000001],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget Centre:=[[1336.000068323,0,1090.000067718],[0.706151716,0,0.708060558,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget LeftMidNew:=[[1335.999945541,29.99999842,1090.000077422],[0.706180574,0.000000001,0.708031776,0.000000001],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget RightBottNew:=[[1335.999946186,-29.999998495,1049.999996829],[0.70618058,0,0.708031771,0.000000001],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget BottMidNew:=[[1335.999950892,0,1049.999988651],[0.706180578,0,0.708031773,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !------------------Initialising Variables-----------------------!
    
    VAR	socketdev serverSocket;
	VAR	socketdev clientSocket;
	VAR	string data;
    VAR socketdev server;
    VAR socketdev client;
    VAR string num_objects;
    VAR string x_coordinate;
    VAR string y_coordinate;
    VAR string Box_xCoordinate;
    VAR string Box_yCoordinate;
    VAR string row;
    VAR string column;
    VAR string tcpX;
    VAR string tcpY;
    VAR string colour;
    VAR string signal;
    VAR string Letter;
    VAR num retry_no;
    VAR num num_objs;
    VAR num X;
    VAR num Y;
    VAR num Z;
    VAR num Box_X;
    VAR num Box_Y;
    VAR num sum;
    VAR num number;
    VAR num n_syrup:= 0;
    VAR num n_coke:= 0;
    VAR num syrup_counter;
    VAR num coke_counter;
    VAR num tcpXValue;
    VAR num tcpYValue;
    VAR bool objects;
    VAR bool syrup;
    VAR bool coke;
    VAR bool posx;
    VAR bool posy;
    VAR bool BoxPosXBool;
    VAR bool BoxPosYBool;    
    PERS string socketArray{3,1}:=[[""], [""], [""]];
    PERS string socketArrayTest;
    VAR num found1;
    VAR num found2;
    VAR num found3;
    VAR num found4;
    VAR robtarget CurRobT2;
    VAR speeddata vTest := [100, 45, 200, 15 ];
    
    PROC main()
		AccSet 20,30;           ! Max Acceleration set to 20mm/s^2 and ramping is 20
!        syrup_counter:=0;
!        open_gripper;
!        WaitTime 2;
!        close_gripper;
!!        coke_counter:=0;
!        moveToQuartenionTest;
!        moveToBoxCam;
!        moveToAboveBoxPos;
!         moveToWritePos;
!        moveToHome;             ! Program always starts from Home Pos in case it was left in random pos
        receiveSignal;         ! Where robot will receive signals to do certain tasks
!!        moveToCameraPos;       ! New Cam Pos
!!!        moveToCokeCoordOne;
!!!!!!        testpos;
!        Waittime 10;
!!!        moveToQuartenionTest;
!!!!        moveToAboveBoxPos;
!!!!        testingBoxCoords;
!        moveToAboveBoxPos;
!        moveToBoxCam;
!        tcpipTempCam;
!        close_gripper;
!        open_gripper;
!!!        tcpipBottle;
!        moveToAboveBoxPos;
!        moveToHome;
!        Waittime 3;
!        WHILE sum<num_objs DO
!            !Move to object
!            receiveData;
!            !Gripper function
!            close_gripper;
!            moveAboveToCameraPos;
!            boxAbvpos;+
!            !Place bottle into box
!            placeBottle2box;
!            open_gripper;
!            boxAbvpos;
!            moveToCameraPos;
!            SocketSend client,\Str :="Y";
!            sum:=sum+1;
!        ENDWHILE
!        stackBox;
!        moveToHome;
!        SocketClose server;
!        SocketClose client;
!    robotWrite;
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
        WaitTime 1;
        SocketSend client,\Str :="RSConnected";
        SocketReceive client,\Str :=signal, \Time:=WAIT_MAX;
        
        !Move robot based on Signal
        signalInstruction;

        ! Error Handling
        ERROR
            IF ERRNO=ERR_SOCK_CLOSED THEN   ! Close sockets and retry connecting if sockets closed
                SocketClose server;
                SocketClose client;
                SocketCreate server;
                SocketBind server,"192.168.0.20", 1025;
                SocketListen server;
                SocketAccept server,client, \Time:=WAIT_MAX;
                RETRY;
            ELSE
                stop;
            ENDIF
    ENDPROC
    
    ! The "signalInstruction" function is where the robot  
    ! does tasks based on the signal sent by GUI.
    ! Signal 1 = CamPos
    ! Signal 2 = Move to bottle
    ! Signal 3 = End of sending Coords
	! Signal 4 = Move to BoxCamPos
    ! This function calls "receiveSignal" method after
    ! each signal task is completed
    PROC signalInstruction()        
        WHILE signal <> "0" DO
            IF signal = "1" THEN
                moveToCameraPos;
                SocketSend client,\Str :="CamPos";
                receiveSignal;
            ELSEIF signal = "2" THEN
                SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
                WHILE data <> "3" DO
!                    colour := StrPart(data,1,1);
!                    found1 := StrFind(data,1,",");
!                    found2 := StrFind(data,found1+1,",");
!                    found3 := StrFind(data,found2+1,",");
!                    found4 := StrFind(data,found3+1,",");
!                    x_coordinate := StrPart(data,found1+1,found2-found1-1);
!                    y_coordinate := StrPart(data,found2+1,found3-found2-1);
!                    Box_xCoordinate := StrPart(data,found3+1,found4-found3-1);
!                    Box_ycoordinate := StrPart(data,found4+1,StrLen(data)-found4);
!                    objects :=StrToVal(x_coordinate,X);
!                    objects := StrToVal(y_coordinate,Y);
!                    objects:= StrToVal(Box_xCoordinate,Box_X);
!                    objects:= StrToVal(Box_ycoordinate,Box_Y);
!                    PickUpBottles;
!               !     TestPos:= [[552.8+X, -553.6+Y, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!!                    moveToTestPos;
!                    SocketSend client,\Str :="SendNext";
!                    SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
                ENDWHILE
                receiveSignal;   
            ELSEIF signal = "4" THEN
!                moveToBoxCam;
!                SocketSend client,\Str :="AtBox";
!                receiveSignal;
            ELSEIF signal = "5" THEN
                moveToWritePos;
                SocketSend client,\Str :="InFive";
                SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
!                number:=1;
                FOR number FROM 1 TO StrLen(data) DO
                    Letter := StrPart(data,number,1);
                    PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
                    IF Letter="A" THEN
                        WriteLetterA;
                    ELSEIF Letter="B" THEN
                        WriteLetterB;
                    ELSEIF Letter="C" THEN
                        WriteLetterC;
                    ELSEIF Letter="D" THEN
                        WriteLetterD;
                    ELSEIF Letter="E" THEN
                        WriteLetterE;
                    ELSEIF Letter="F" THEN
                        WriteLetterF;
                    ELSEIF Letter="G" THEN
                        WriteLetterG;
                    ELSEIF Letter="H" THEN
                        WriteLetterH;
                    ELSEIF Letter="I" THEN
                        WriteLetterI;
                    ELSEIF Letter="J" THEN
                        WriteLetterJ;
                    ELSEIF Letter="K" THEN
                        WriteLetterK;
                    ELSEIF Letter="L" THEN
                        WriteLetterL;
                    ELSEIF Letter="M" THEN
                        WriteLetterM;
                    ELSEIF Letter="N" THEN
                        WriteLetterN;
                    ELSEIF Letter="O" THEN
                        WriteLetterO;
                    ELSEIF Letter="P" THEN
                        WriteLetterP;
                    ELSEIF Letter="Q" THEN
                        WriteLetterQ;
                    ELSEIF Letter="R" THEN
                        WriteLetterR;
                    ELSEIF Letter="S" THEN
!                        WriteLetterS;
                    ELSEIF Letter="T" THEN
                        WriteLetterT;
                    ELSEIF Letter="U" THEN
                        WriteLetterU;
                    ELSEIF Letter="V" THEN
                        WriteLetterV;
                    ELSEIF Letter="W" THEN
                        WriteLetterW;
                    ELSEIF Letter="X" THEN
                        WriteLetterX;
                    ELSEIF Letter="Y" THEN
                        WriteLetterY;
                    ELSEIF Letter="Z" THEN
                        WriteLetterZ;
                    PathAccLim FALSE,FALSE;
                    ENDIF
                ENDFOR
                SocketSend client,\Str :="WriteFinished";
                receiveSignal;
            ENDIF
        ENDWHILE
        moveToHome;
        
        ! Error Handling
        ERROR
            IF ERRNO=ERR_SOCK_CLOSED THEN   ! Close sockets and retry connecting if sockets closed
                SocketClose server;
                SocketClose client;
                SocketCreate server;
                SocketBind server,"192.168.0.20", 1025;
                SocketListen server;
                SocketAccept server,client, \Time:=WAIT_MAX;
                RETRY;
            ELSE
                stop;
            ENDIF
    ENDPROC

    PROC robotWrite()
		!---Writing A---!!
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
!        moveToZeroPos;
		moveToWritePos;
        WriteLetterA;
!        WriteLetterB;
!		WaitTime 1;
!		MoveL Offs (moveToWritePos, 0, -50, -200), v80, fine, tool0\WObj:=wobj0;
!		moveToWritePos;
!		MoveL Offs (moveToWritePos, 0, 50, -200), v80, fine, tool0\WObj:=wobj0;
!		moveToWritePos;
!		moveToA_Horizontal;
!		MoveL Offs (moveToWritePos, 0, 22.5, 0), v80, fine, tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToHome()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ Home,v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCameraPos()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ NewCamPos,v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToZeroPos()
!        ! get the current location
!        CurRobT2:=CRobT();
!        IF RobtToRobtDist(Location,CurRobT2) THEN            
!        ENDIF

        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL ZeroPos,v50,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
	
	PROC moveToA_Horizontal()
        MoveL A_Horizontal,v80,fine,tool0\WObj:=wobj0;
    ENDPROC
    
	PROC moveToWritePos()
        MoveJ WriteStart,v200,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC moveToAboveBoxPos()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBoxPos, v200, fine, tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterA_Fixed()
        MoveL Centre,v1000,fine,tool0\WObj:=wobj0;
        MoveL StartPos,v1000,fine,tool0\WObj:=wobj0;
        MoveL R_Corner,v1000,fine,tool0\WObj:=wobj0;
        MoveL StartPos,v1000,fine,tool0\WObj:=wobj0;
        MoveL L_Corner,v1000,fine,tool0\WObj:=wobj0;
        A:= [[1200,-25,1015],[0.706151705,0.000000006,0.70806057,0.000000011],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        MoveJ A, v1000,z100,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveJ R_Mid, v1000,fine,tool0\WObj:=wobj0;
        MoveL L_Mid,v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterA()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        Y:= 30;
        Z:= 40;
        ! Start
        MoveL Offs(WriteStart,-X,0,Z), v1500,fine,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,0,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Start
        MoveL Offs(WriteStart,0,0,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Off Board
        MoveL Offs(WriteStart,-X,-Y,0), v1000,z50,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,fine,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(WriteStart,0,Y,0), v1000,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterB()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Start Bott Left
        MoveL Offs(WriteStart,-X,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(WriteStart,0,Y,0), v1000,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterC()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Right
        MoveL Offs(WriteStart,-X,-Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,z200,tool0\WObj:=wobj0;
		! Bott Left
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterD()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Start Bott Left
        MoveL Offs(WriteStart,-X,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Top Mid
        MoveL Offs(WriteStart,0,0,Z), v1000,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,z200,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(WriteStart,0,0,-Z), v1000,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;   
    ENDPROC
    
    PROC WriteB_Fixed()
        MoveL BottLeftNew,v300,fine,tool0\WObj:=wobj0;
        MoveL TopLeftNew,v300,fine,tool0\WObj:=wobj0;
        MoveL TopMidNew,v300,fine,tool0\WObj:=wobj0;
        MoveL TopRightNew,v300,z200,tool0\WObj:=wobj0;
        MoveL RightMidNew,v300,z200,tool0\WObj:=wobj0;
        MoveL Centre,v300,z200,tool0\WObj:=wobj0;
        MoveL LeftMidNew,v300,fine,tool0\WObj:=wobj0;
        MoveL RightMidNew,v300,z200,tool0\WObj:=wobj0;
        MoveL RightBottNew,v300,z200,tool0\WObj:=wobj0;
        MoveL BottMidNew,v300,z200,tool0\WObj:=wobj0;
        MoveL BottLeftNew,v300,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterE()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Off RB - LM
        MoveL Offs(WriteStart,-X,Y,0), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,0), v1000,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,fine,tool0\WObj:=wobj0;
        ! Off RM - Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Top Right
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC

	    
    PROC WriteLetterF()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Bottom Left
        MoveL Offs(WriteStart,-X,Y,-Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Off RB - LM
        MoveL Offs(WriteStart,-X,Y,0), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,0), v1000,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterG()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Start Top Right
        MoveL Offs(WriteStart,-X,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(WriteStart,0,Y,0), v1000,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;   
		! Bott Mid
        MoveL Offs(WriteStart,0,0,-Z), v1000,z200,tool0\WObj:=wobj0;
		! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,z200,tool0\WObj:=wobj0;
		! Centre 
		MoveL WriteStart, v1000,z200,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterH()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Off RB - LM
        MoveL Offs(WriteStart,-X,Y,0), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,0), v1000,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,fine,tool0\WObj:=wobj0;
        !Right Top Corner
        MoveL Offs(WriteStart,-X,-Y,Z), v1500,fine,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC


	PROC WriteLetterI()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Off RT - TM
        MoveL Offs(WriteStart,-X,0,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,0,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(WriteStart,0,0,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Off BM - LB
        MoveL Offs(WriteStart,-X,Y,-Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterJ()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Mid
        MoveL Offs(WriteStart,-X,0,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,0,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(WriteStart,0,0,-Z), v1000,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,z200,tool0\WObj:=wobj0;
		! Left Mid
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterK()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Bott Left Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Off BL - TR
        MoveL Offs(WriteStart,-X,-Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(WriteStart,0,Y,0), v1000,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterL()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterM()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Bott Left
        MoveL Offs(WriteStart,-X,Y,-Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Centre
        MoveL WriteStart, v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        !Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterN()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Bott Left
        MoveL Offs(WriteStart,-X,Y,-Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        !Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterO()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Mid
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
		! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,z200,tool0\WObj:=wobj0;
		! Top Mid
		MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterP()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Start Bott Left
        MoveL Offs(WriteStart,-X,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(WriteStart,0,Y,0), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterQ()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Mid
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
		! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,z200,tool0\WObj:=wobj0;
		! Top Mid
		MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
		! Off Top Mid - Centre
		MoveL Offs(WriteStart,-X,0,0), v1500,z80,tool0\WObj:=wobj0;
		MoveL WriteStart, v1500,fine,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterR()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Start Bott Left
        MoveL Offs(WriteStart,-X,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(WriteStart,0,-Y,0), v1000,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(WriteStart,0,Y,0), v1000,fine,tool0\WObj:=wobj0;
		! Centre
        ! MoveL WriteStart, v1000,z200,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,z200,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterT()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Off RT - TM
        MoveL Offs(WriteStart,-X,0,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,0,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(WriteStart,0,0,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterU()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Left Top
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,z200,tool0\WObj:=wobj0;
		! Bott Mid
        MoveL Offs(WriteStart,0,0,-Z), v1000,z200,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,z200,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterV()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(WriteStart,0,0,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterW()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Half LB Mid
        MoveL Offs(WriteStart,0,Y/2,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Centre
        MoveL WriteStart, v1000,fine,tool0\WObj:=wobj0;
        ! Half RB Mid
        MoveL Offs(WriteStart,0,-Y/2,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterX()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,-X,-Y,Z), v1500,fine,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterY()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Centre
        MoveL WriteStart, v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Off RT - Centre
        MoveL Offs(WriteStart,-X,0,0), v1500,fine,tool0\WObj:=wobj0;
        MoveL WriteStart, v1000,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(WriteStart,0,0,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterZ()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(WriteStart,-X,Y,Z), v1500,z80,tool0\WObj:=wobj0;
        MoveL Offs(WriteStart,0,Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(WriteStart,0,-Y,Z), v1000,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(WriteStart,0,Y,-Z), v1000,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(WriteStart,0,-Y,-Z), v1000,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC open_gripper()        
        SetDO D_652_10_OUT0, 0;
        WaitTime 1;
        SetDO D_652_10_OUT1, 1;
        WaitTime 1;
     ENDPROC

    PROC close_gripper()       
        SetDO D_652_10_OUT0, 1;
        WaitTime 1;
        SetDO D_652_10_OUT1, 0;
        WaitTime 1;
    ENDPROC    

ENDMODULE