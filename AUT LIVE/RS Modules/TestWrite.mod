MODULE Write
	!Constant positions (Please Do not Change it)
    !-----------New Positions START-----------!
!    CONST robtarget Home:=[[1018.612159322,0,1417.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget ZeroPos:=[[1030, 0, 1460],[0.70706, 0, 0.70715,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget NewGripperPosManual:= [[369.6, -766.5, 1214.4],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget OldOldCameraPos:= [[552.8, -553.6, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget OldCamPos:= [[556.4, -557.2, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget OldNewCamPos:= [[326.9438,-581.9982,1300],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget NewCamPos:= [[215, -680.3, 1300],[0.00163,-0.38344,-0.92356,-0.00115],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget AboveBoxPos:= [[366.1, 366, 1588.4],[0.00192, -0.38294, 0.92377, 0.00293],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PERS robtarget TemporaryCam:= [[315.629,-721.49,1160],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget WritePos:=[[1118.762959576,0,936.635523609],[0.701584454,0,0.712586314,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
!	CONST robtarget A_Horizontal:= [[1018.612159322,-22.5,1327],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];     
    
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
    

    VAR num Z;
 
    VAR num counter:=0;
    
    PROC WriteMain()
		AccSet 20,20;           ! Max Acceleration set to 20mm/s^2 and ramping is 20
!        close_gripper;
!!        syrup_counter:=0;
!        open_gripper;
!!        coke_counter:=0;
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        
        MoveJ Home,v100,fine,tool0\WObj:=wobj0;
!!!        MoveJ Via,v80,z100,tool0\WObj:=wobj0;

!!        !!___________Test______________!!
!        MoveJ WriteStart,v80,fine,tool0\WObj:=wobj0;
!!        WriteLetterB;
!!        WaitTime 1;
!        WriteLetterD;
!        WriteLetterA;
!        WaitTime 1;
!        WriteLetterE;
!        WaitTime 1;
!        WriteLetterF;
!        WaitTime 1;
!        WriteLetterH;
!        WaitTime 1;
!        WriteLetterI;
!        WaitTime 1;
!        WriteLetterK;
!        WaitTime 1;
!        WriteLetterL;
!        WaitTime 1;
!        WriteLetterM;
!        WaitTime 1;
!        WriteLetterN;
!        WaitTime 1;
!        WriteLetterT;
!        WaitTime 1;
!        WriteLetterV;
!        WaitTime 1;
!        WriteLetterW;
!        WaitTime 1;
!        WriteLetterX;
!        WaitTime 1;
!        WriteLetterY;
!        WaitTime 1;
!        WriteLetterZ;
        
        
!!        Y:= 0;
!!        Z:= 150;
!!        WriteLetterA_Fixed;
        
!!        !_________Test End____________!!
        
!!        moveToHome;             ! Program always starts from Home Pos in case it was left in random pos
!!        receiveSignal;         ! Where robot will receive signals to do certain tasks
!!        moveToCameraPos;       ! New Cam Pos
!!    robotWrite;
        PathAccLim FALSE,FALSE;
!!    receiveSignal;
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
    
    
	PROC moveToWritePos()
        MoveL WriteStart,v80,fine,tool0\WObj:=wobj0;
    ENDPROC
	
!    PROC moveAboveToCameraPos()
!        MoveL aboveCameraPos,v1000,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
!    PROC moveGipperToCameraPos()
!        MoveL GripperInitPos,v100,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
    
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
    ENDPROC
    
    PROC WriteLetterB()
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
    ENDPROC
    
    PROC WriteLetterD()
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
        MoveL Offs(WriteStart,0,-Y,Z), v1000,z200,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterV()
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