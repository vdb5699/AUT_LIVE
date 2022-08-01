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
    PERS robtarget A:=[[1336,0,1450],[0.706152,0,0.708061,0],[0,0,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
    CONST robtarget Centre:=[[1336.000084226,-0.000105515,1089.999909894],[0.706151707,0.000000011,0.708060567,-0.000000006],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget StartPos:=[[1336.000077935,0,1240.000023955],[0.706151706,0.000000003,0.708060568,0.000000003],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget R_Corner:=[[1336.000063563,-100.000004349,940.00009488],[0.706151705,0.00000002,0.70806057,0.000000015],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget L_Corner:=[[1336.000063563,100.000004349,940.00009488],[0.706151705,0.000000006,0.70806057,0.000000011],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget R_Mid:=[[1336.00007495,-49.999997558,1090.000058219],[0.706151717,0,0.708060557,0.000000002],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget L_Mid:=[[1336.000079835,49.999830008,1090.000048773],[0.706151708,0.000000001,0.708060566,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !-----------New Positions END------------!
	!-----------RobotWriting Alphabets Coords------------!
	CONST robtarget A_Horizontal:= [[1018.612159322,-22.5,1327],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];     
    !------------------Initialising Variables-----------------------!
    
    VAR	socketdev serverSocket;
	VAR	socketdev clientSocket;
	VAR	string data;
    VAR socketdev server;
    VAR socketdev client;
    VAR num found1;
    VAR num found2;
    VAR string x_coordinate;
    VAR string y_coordinate;
    VAR bool posx;
    VAR bool posy;
    VAR num Y;
    VAR num Z;
    VAR num counter:=0;
    
    PROC main()
		AccSet 20,20;           ! Max Acceleration set to 20mm/s^2 and ramping is 20
!        syrup_counter:=0;
!        open_gripper;
!        coke_counter:=0;
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        
        !!-------Test--------!!
        MoveL Centre,v300,fine,tool0\WObj:=wobj0;
        MoveL StartPos,v300,fine,tool0\WObj:=wobj0;
        MoveL R_Corner,v300,fine,tool0\WObj:=wobj0;
        MoveL StartPos,v300,fine,tool0\WObj:=wobj0;
        MoveL L_Corner,v300,fine,tool0\WObj:=wobj0;
        MoveC L_Corner,R_Mid, v300,fine,tool0\WObj:=wobj0;
        MoveL R_Mid,v300,fine,tool0\WObj:=wobj0;
        MoveL L_Mid,v300,fine,tool0\WObj:=wobj0;
        
!        Y:= 50 ;
!        Z:= 0;
        
!        MoveL Offs(WriteStart,0,Y,Z), v80,fine,tool0\WObj:=wobj0;
        !!_______Test________!!
        
!        MoveJ Home,v100,z100,tool0\WObj:=wobj0;
!        MoveJ Via,v80,z100,tool0\WObj:=wobj0;
!        MoveJ WriteStart,v80,fine,tool0\WObj:=wobj0;
!        WaitTime 2;

!         A := [[1336,X, Y],[0.706151696,0,0.708060578,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!!!        MoveL A,v80,fine,tool0\WObj:=wobj0;
!        MoveL Offs(WriteStart,0,0,150), v80,fine,tool0\WObj:=wobj0;
!        MoveL Offs(WriteStart,0,-100,-200), v80,fine,tool0\WObj:=wobj0;
!        MoveL Offs(WriteStart,0,0,150), v80,fine,tool0\WObj:=wobj0;
!        MoveL Offs(WriteStart,0,100,-200), v80,fine,tool0\WObj:=wobj0;
! 
!        WaitTime 5;
!        MoveJ WriteStart,v80,z100,tool0\WObj:=wobj0;
!        WaitTime 5;
!        MoveL Offs(WriteStart,0,100, -150), v80,fine,tool0\WObj:=wobj0;
        !        A := [[1336,100,1150],[0.706151696,0,0.708060578,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        MoveL A,v80,fine,tool0\WObj:=wobj0;
!        A := [[1336,0-100,1150],[0.706151696,0,0.708060578,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        MoveL A,v80,fine,tool0\WObj:=wobj0;
!        A := [[1336,100,1150],[0.706151696,0,0.708060578,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        MoveL A,v80,fine,tool0\WObj:=wobj0;
!        A := [[1336,0+100,1300],[0.706151696,0,0.708060578,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        MoveL A,v80,fine,tool0\WObj:=wobj0;
!        A := [[1336,100,1150],[0.706151696,0,0.708060578,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        MoveL A,v80,fine,tool0\WObj:=wobj0;
        
        
!        moveToHome;             ! Program always starts from Home Pos in case it was left in random pos
!        receiveSignal;         ! Where robot will receive signals to do certain tasks
!        moveToCameraPos;       ! New Cam Pos
!    robotWrite;
    PathAccLim FALSE,FALSE;
!    receiveSignal;
    ENDPROC
    
!    PROC receiveSignal()
!        !Create Socket
!        SocketCreate server;
!        SocketBind server,"192.168.125.1", 1025;
!        SocketListen server;
!        SocketAccept server,client, \Time:=WAIT_MAX;
!    WHILE counter <> 27 DO
!        !Receive Data
!        SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
!        found1 := StrFind(data,1,",");
!        found2 := StrFind(data,found1+1,",");
!        x_coordinate := StrPart(data,found1+1,found2-found1-1);
!        y_coordinate := StrPart(data,found2+1,StrLen(data)-found2);
!        posx :=StrToVal(x_coordinate,X);
!        posy := StrToVal(y_coordinate,Y);
!         A := [[1336,100 + X, 1150 + Y],[0.706151696,0,0.708060578,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        MoveL A,v80,fine,tool0\WObj:=wobj0;
!        SocketSend client,\Str :="next";
!        counter:= counter +1;
!    ENDWHILE

!    ENDPROC

    PROC robotWrite()
		!---Writing A---!!
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
!        moveToZeroPos;
		moveToWritePos;
!		WaitTime 2;
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
        MoveJ Home,v80,fine,tool0\WObj:=wobj0;
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
        MoveL WritePos,v80,fine,tool0\WObj:=wobj0;
    ENDPROC
	
!    PROC moveAboveToCameraPos()
!        MoveL aboveCameraPos,v300,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
!    PROC moveGipperToCameraPos()
!        MoveL GripperInitPos,v100,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
    PROC moveToAboveBoxPos()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBoxPos, v200, fine, tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
!    PROC open_gripper()        
!        SetDO D_652_10_OUT0, 0;
!        WaitTime 1;
!        SetDO D_652_10_OUT1, 1;
!        WaitTime 1;
!     ENDPROC

!    PROC close_gripper()       
!        SetDO D_652_10_OUT0, 1;
!        WaitTime 1;
!        SetDO D_652_10_OUT1, 0;
!        WaitTime 1;
!    ENDPROC    
ENDMODULE