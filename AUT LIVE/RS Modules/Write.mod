MODULE Write
!    PERS robtarget SafeWritePos:=[[1219.955689697,0,1197.415659316],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

!    PROC WriteLetterA_Fixed()
!        MoveL Centre,v300,fine,tool0\WObj:=wobj0;
!        MoveL StartPos,v300,fine,tool0\WObj:=wobj0;
!        MoveL R_Corner,v300,fine,tool0\WObj:=wobj0;
!        MoveL StartPos,v300,fine,tool0\WObj:=wobj0;
!        MoveL L_Corner,v300,fine,tool0\WObj:=wobj0;
!        A:= [[1200,-25,1015],[0.706151705,0.000000006,0.70806057,0.000000011],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        MoveJ A, v300,z100,tool0\WObj:=wobj0;
!        WaitTime 3;
!        MoveJ R_Mid, v300,fine,tool0\WObj:=wobj0;
!        MoveL L_Mid,v300,fine,tool0\WObj:=wobj0;
!    ENDPROC

    PROC robotWrite()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        SafeWritePos:= [[1219.955689697,boardYPos,boardZPos],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        IF Letter="A" THEN
            moveToWritePosStart;
            WriteLetterA;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="B" THEN
            moveToWritePosStart;
            WriteLetterB;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="C" THEN
            moveToWritePosStart;
            WriteLetterC;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="D" THEN
            moveToWritePosStart;
            WriteLetterD;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="E" THEN
            moveToWritePosStart;
            WriteLetterE;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="F" THEN
            moveToWritePosStart;
            WriteLetterF;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="G" THEN
            moveToWritePosStart;
            WriteLetterG;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="H" THEN
            moveToWritePosStart;
            WriteLetterH;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="I" THEN
            moveToWritePosStart;
            WriteLetterI;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="J" THEN
            moveToWritePosStart;
            WriteLetterJ;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="K" THEN
            moveToWritePosStart;
            WriteLetterK;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="L" THEN
            moveToWritePosStart;
            WriteLetterL;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="M" THEN
            moveToWritePosStart;
            WriteLetterM;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="N" THEN
            moveToWritePosStart;
            WriteLetterN;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="O" THEN
            moveToWritePosStart;
            WriteLetterO;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="P" THEN
            moveToWritePosStart;
            WriteLetterP;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="Q" THEN
            moveToWritePosStart;
            WriteLetterQ;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="R" THEN
            moveToWritePosStart;
            WriteLetterR;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="S" THEN
            moveToWritePosStart;
            WriteLetterS;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="T" THEN
            moveToWritePosStart;
            WriteLetterT;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="U" THEN
            moveToWritePosStart;
            WriteLetterU;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="V" THEN
            moveToWritePosStart;
            WriteLetterV;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="W" THEN
            moveToWritePosStart;
            WriteLetterW;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="X" THEN
            moveToWritePosStart;
            WriteLetterX;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="Y" THEN
            moveToWritePosStart;
            WriteLetterY;
            boardYPos := boardYPos-gap;
        ELSEIF Letter="Z" THEN
            moveToWritePosStart;
            WriteLetterZ;
            boardYPos := boardYPos-gap;
        ELSEIF Letter=" " THEN
            WaitTime 2;
            boardYPos := boardYPos-gap;
            randomString:= "In Gap";
        ELSEIF Letter="," THEN
            WaitTime 2;
            boardZPos := boardZPos-ZLine;
            boardYPos := 0;
            randomString:= "In Comma";
            moveToWritePosStart;
        ENDIF
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterA()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Start
        MoveL Offs(SafeWritePos,-X,0,Z), v300,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,0,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Start
        MoveL Offs(SafeWritePos,0,0,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Off Board
        MoveL Offs(SafeWritePos,-X,-Y,0), v300,z50,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v300,fine,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterB()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v300,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v300,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v300,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterC()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Right
        MoveL Offs(SafeWritePos,-X,-Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,z200,tool0\WObj:=wobj0;
		! Bott Left
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterD()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Mid
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
		! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,z200,tool0\WObj:=wobj0;
		! Top Mid
		MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
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
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Off RB - LM
        MoveL Offs(SafeWritePos,-X,Y,0), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,0), v300,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v300,fine,tool0\WObj:=wobj0;
        ! Off RM - Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Top Right
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC

	    
    PROC WriteLetterF()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Bottom Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Off RB - LM
        MoveL Offs(SafeWritePos,-X,Y,0), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,0), v300,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC

	PROC WriteLetterG()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Start Top Right
        MoveL Offs(SafeWritePos,-X,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v300,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;   
		! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v300,z200,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v300,z200,tool0\WObj:=wobj0;
		! Centre 
		MoveL SafeWritePos, v300,z200,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC

	PROC WriteLetterH()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Off RB - LM
        MoveL Offs(SafeWritePos,-X,Y,0), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,0), v300,fine,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v300,fine,tool0\WObj:=wobj0;
        !Right Top Corner
        MoveL Offs(SafeWritePos,-X,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC


	PROC WriteLetterI()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Off RT - TM
        MoveL Offs(SafeWritePos,-X,0,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,0,Z), v300,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Off BM - LB
        MoveL Offs(SafeWritePos,-X,Y,-Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC

	PROC WriteLetterJ()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Mid
        MoveL Offs(SafeWritePos,-X,0,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,0,Z), v300,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v300,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,z200,tool0\WObj:=wobj0;
		! Left Mid
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterK()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Bott Left Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Off BL - TR
        MoveL Offs(SafeWritePos,-X,-Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v300,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterL()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterM()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Centre
        MoveL SafeWritePos, v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        !Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterN()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        !Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC

	PROC WriteLetterO()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Mid
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,z200,tool0\WObj:=wobj0;
		! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,z200,tool0\WObj:=wobj0;
		! Top Mid
		MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC

	PROC WriteLetterP()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v300,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC

	PROC WriteLetterQ()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Mid
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,z200,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,z200,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,z200,tool0\WObj:=wobj0;
		! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,z200,tool0\WObj:=wobj0;
		! Top Mid
		MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
		! Off Top Mid - Centre
		MoveL Offs(SafeWritePos,-X,0,0), v300,z80,tool0\WObj:=wobj0;
		MoveL SafeWritePos, v300,fine,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC

	PROC WriteLetterR()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Start Bott Left
        MoveL Offs(SafeWritePos,-X,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,z200,tool0\WObj:=wobj0;
        ! Right Mid
        MoveL Offs(SafeWritePos,0,-Y,0), v300,z200,tool0\WObj:=wobj0;
        ! Left Mid
        MoveL Offs(SafeWritePos,0,Y,0), v300,fine,tool0\WObj:=wobj0;
		! Centre
        ! MoveL SafeWritePos, v300,z200,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterS()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Right
        MoveL Offs(SafeWritePos,-X,-Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Top Corner
        MoveL Offs(SafeWritePos,0,Y,Z), v300,z200,tool0\WObj:=wobj0;
        ! Left Mid 
        MoveL Offs(SafeWritePos,0,Y,0), v300,z200,tool0\WObj:=wobj0;
        ! Right Mid 
        MoveL Offs(SafeWritePos,0,-Y,0), v300,z200,tool0\WObj:=wobj0;
        ! Bott Right
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,z200,tool0\WObj:=wobj0;
		! Bott Left
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterT()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Off RT - TM
        MoveL Offs(SafeWritePos,-X,0,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,0,Z), v300,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC

	PROC WriteLetterU()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Left Top
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,z200,tool0\WObj:=wobj0;
		! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v300,z200,tool0\WObj:=wobj0;
		! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,z200,tool0\WObj:=wobj0;
		! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterV()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC WriteLetterW()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Half LB Mid
        MoveL Offs(SafeWritePos,0,Y/2,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Centre
        MoveL SafeWritePos, v300,fine,tool0\WObj:=wobj0;
        ! Half RB Mid
        MoveL Offs(SafeWritePos,0,-Y/2,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterX()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,-X,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterY()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Centre
        MoveL SafeWritePos, v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Off RT - Centre
        MoveL Offs(SafeWritePos,-X,0,0), v300,fine,tool0\WObj:=wobj0;
        MoveL SafeWritePos, v300,fine,tool0\WObj:=wobj0;
        ! Bott Mid
        MoveL Offs(SafeWritePos,0,0,-Z), v300,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC WriteLetterZ()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        ! Off Centre - Start Top Left
        MoveL Offs(SafeWritePos,-X,Y,Z), v300,z80,tool0\WObj:=wobj0;
        MoveL Offs(SafeWritePos,0,Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Top Corner
        MoveL Offs(SafeWritePos,0,-Y,Z), v300,fine,tool0\WObj:=wobj0;
        ! Left Bott Corner
        MoveL Offs(SafeWritePos,0,Y,-Z), v300,fine,tool0\WObj:=wobj0;
        ! Right Bott Corner
        MoveL Offs(SafeWritePos,0,-Y,-Z), v300,fine,tool0\WObj:=wobj0;
    ENDPROC

ENDMODULE