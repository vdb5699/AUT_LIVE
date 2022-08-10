MODULE Write
        ! The "receiveSignal" function is where the GUI and RS are 
    ! connected via TCP. 
    ! WaitTime is Max for all socket communication tasks.
    ! This function calls the "signalInstruction" method.
    
    
!    PROC WriteLetterA_Fixed()
!        MoveL Centre,v1000,fine,tool0\WObj:=wobj0;
!        MoveL StartPos,v1000,fine,tool0\WObj:=wobj0;
!        MoveL R_Corner,v1000,fine,tool0\WObj:=wobj0;
!        MoveL StartPos,v1000,fine,tool0\WObj:=wobj0;
!        MoveL L_Corner,v1000,fine,tool0\WObj:=wobj0;
!        A:= [[1200,-25,1015],[0.706151705,0.000000006,0.70806057,0.000000011],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        MoveJ A, v1000,z100,tool0\WObj:=wobj0;
!        WaitTime 3;
!        MoveJ R_Mid, v1000,fine,tool0\WObj:=wobj0;
!        MoveL L_Mid,v1000,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
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
    
!    PROC WriteB_Fixed()
!        MoveL BottLeftNew,v300,fine,tool0\WObj:=wobj0;
!        MoveL TopLeftNew,v300,fine,tool0\WObj:=wobj0;
!        MoveL TopMidNew,v300,fine,tool0\WObj:=wobj0;
!        MoveL TopRightNew,v300,z200,tool0\WObj:=wobj0;
!        MoveL RightMidNew,v300,z200,tool0\WObj:=wobj0;
!        MoveL Centre,v300,z200,tool0\WObj:=wobj0;
!        MoveL LeftMidNew,v300,fine,tool0\WObj:=wobj0;
!        MoveL RightMidNew,v300,z200,tool0\WObj:=wobj0;
!        MoveL RightBottNew,v300,z200,tool0\WObj:=wobj0;
!        MoveL BottMidNew,v300,z200,tool0\WObj:=wobj0;
!        MoveL BottLeftNew,v300,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
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

ENDMODULE