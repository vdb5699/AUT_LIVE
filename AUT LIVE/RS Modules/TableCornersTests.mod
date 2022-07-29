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
    ! AboveBottleCoord robtarget x,y should change based on the bottle location
    PERS robtarget AboveBottleCoord:= [[301.544,-974.157, 1588.4],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveTable:= [[550.3, -377.8, 1588.4],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxCoordOne:= [[473.5,410,1410],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BoxCoordOne:= [[473.5,410,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordTwo:= [[399.2538,484.2462,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordThree:= [[547.7462,484.2462,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordFour:= [[473.5000,558.4924,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordFive:= [[621.9924,558.4924,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordSix:= [[547.7462,632.7386,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget WritePos:= [[1018.612159322,0,1417.5],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    !-----------New Positions END------------!
	!-----------RobotWriting Alphabets Coords------------!
	CONST robtarget A_Horizontal:= [[1018.612159322,-22.5,1327],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];     
    !------------------Initialising Variables-----------------------!
    
    
    PROC main()
		AccSet 20,20;           ! Max Acceleration set to 20mm/s^2 and ramping is 20
!        syrup_counter:=0;
!        open_gripper;
!        coke_counter:=0;
!        moveToHome;             ! Program always starts from Home Pos in case it was left in random pos
!        receiveSignal;         ! Where robot will receive signals to do certain tasks
!        moveToCameraPos;       ! New Cam Pos
    robotWrite;
    ENDPROC

    PROC robotWrite()
		!---Writing A---!!
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        moveToZeroPos;
!		moveToWritePos;
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
        MoveJ ZeroPos,v50,fine,tool0\WObj:=wobj0;
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
    
    PROC moveGipperToCameraPos()
        MoveL GripperInitPos,v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC moveToAboveBottleCoord()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBottleCoord,v200,z20,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveTable()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveTable,v200,z10,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveBoxPos()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBoxPos, v200, fine, tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
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