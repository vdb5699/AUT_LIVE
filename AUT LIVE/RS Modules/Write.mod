MODULE Write
!    PERS robtarget SafeWritePos:=[[1219.955689697,0,1197.415659316],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

!    PROC WriteLetterA_Fixed()
!        MoveL Centre,v100,fine,tool0\WObj:=wobj0;
!        MoveL StartPos,v100,fine,tool0\WObj:=wobj0;
!        MoveL R_Corner,v100,fine,tool0\WObj:=wobj0;
!        MoveL StartPos,v100,fine,tool0\WObj:=wobj0;
!        MoveL L_Corner,v100,fine,tool0\WObj:=wobj0;
!        A:= [[1200,-25,1015],[0.706151705,0.000000006,0.70806057,0.000000011],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        MoveJ A, v100,z100,tool0\WObj:=wobj0;
!        WaitTime 3;
!        MoveJ R_Mid, v100,fine,tool0\WObj:=wobj0;
!        MoveL L_Mid,v100,fine,tool0\WObj:=wobj0;
!    ENDPROC

    PROC robotWrite()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        SafeWritePos:= [[1219.955689697,boardYPos,boardZPos],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        moveToWritePos;
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
            WriteLetterS;
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
        
    ENDPROC
    
    PROC WriteLetterA()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        Y:= 30;
        Z:= 40;
        ! Start
        MoveL Offs(SafeWritePos,-X,0,Z), v200,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,0,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Start
        MoveL Offs(SafeWritePos,0,0,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Off Board
        MoveL Offs(SafeWritePos,-X,-Y,0), v100,z50,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,fine,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterB()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        Y:= 30;
        Z:= 40;
        ! Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v200,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v100,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterC()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Right
        MoveL Offs(SafeWritePos,-X,-Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,z200,tool0\WObj:=wobj0;
		! Bott Left
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterD()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v200,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Top Mid
        MoveL Offs(SafeWritePos,0,0,Z), v100,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,z200,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v100,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;   
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
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Off RB - LM
        MoveL Offs(SafeWritePos,-X,Y,0), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,0), v100,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,fine,tool0\WObj:=wobj0;
        ! Off RM - Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Top Right
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC

	    
    PROC WriteLetterF()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Bottom Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Off RB - LM
        MoveL Offs(SafeWritePos,-X,Y,0), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,0), v100,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterG()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Start Top Right
        MoveL Offs(SafeWritePos,-X,-Y,Z), v200,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v100,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;   
		! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v100,z200,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,z200,tool0\WObj:=wobj0;
		! Centre 
		MoveL SafeWritePos, v100,z200,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterH()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Off RB - LM
        MoveL Offs(SafeWritePos,-X,Y,0), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,0), v100,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,fine,tool0\WObj:=wobj0;
        !Right Top Corner
        MoveL Offs(SafeWritePos,-X,-Y,Z), v200,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC


	PROC WriteLetterI()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Off RT - TM
        MoveL Offs(SafeWritePos,-X,0,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,0,Z), v100,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Off BM - LB
        MoveL Offs(SafeWritePos,-X,Y,-Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterJ()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Mid
        MoveL Offs(SafeWritePos,-X,0,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,0,Z), v100,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v100,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,z200,tool0\WObj:=wobj0;
		! Left Mid
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterK()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Bott Left Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Off BL - TR
        MoveL Offs(SafeWritePos,-X,-Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v100,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterL()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterM()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Centre
        MoveL SafeWritePos, v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        !Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterN()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        !Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterO()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Mid
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
		! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,z200,tool0\WObj:=wobj0;
		! Top Mid
		MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterP()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v200,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v100,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterQ()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Mid
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
		! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,z200,tool0\WObj:=wobj0;
		! Top Mid
		MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
		! Off Top Mid - Centre
		MoveL Offs(SafeWritePos,-X,0,0), v200,z80,tool0\WObj:=wobj0;
		MoveL SafeWritePos, v200,fine,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterR()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v200,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v100,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v100,fine,tool0\WObj:=wobj0;
		! Centre
        ! MoveL SafeWritePos, v100,z200,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,z200,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterS()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Right
        MoveL Offs(SafeWritePos,-X,-Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v100,z200,tool0\WObj:=wobj0;
        ! Left Mid 
        MoveL Offs(SafeWritePos,0,Y,0), v100,z200,tool0\WObj:=wobj0;
        ! Right Mid 
        MoveL Offs(SafeWritePos,0,-Y,0), v100,z200,tool0\WObj:=wobj0;
        ! Bott Right
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,z200,tool0\WObj:=wobj0;
		! Bott Left
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterT()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Off RT - TM
        MoveL Offs(SafeWritePos,-X,0,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,0,Z), v100,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC

	PROC WriteLetterU()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Left Top
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,z200,tool0\WObj:=wobj0;
		! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v100,z200,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,z200,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterV()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterW()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Half LB Mid
        MoveL Offs(SafeWritePos,0,Y/2,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Centre
        MoveL SafeWritePos, v100,fine,tool0\WObj:=wobj0;
        ! Half RB Mid
        MoveL Offs(SafeWritePos,0,-Y/2,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterX()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,-X,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterY()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Centre
        MoveL SafeWritePos, v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Off RT - Centre
        MoveL Offs(SafeWritePos,-X,0,0), v100,fine,tool0\WObj:=wobj0;
        MoveL SafeWritePos, v100,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterZ()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        X:= 40;
        
        Y:= 30;
        Z:= 40;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v200,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v100,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v100,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v100,fine,tool0\WObj:=wobj0;
    ENDPROC

ENDMODULE