MODULE MainModule
        CONST robtarget Home:=[[1018.612159322,0,1417.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxTable:=[[668.215948776,668.215899509,1375.000048879],[0.000000027,-0.382683415,0.92387954,0.000000016],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Table:=[[668.219951637,668.219980846,848.000007427],[-0.00000002,-0.382683422,0.923879537,-0.000000008],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TableCornerTest1:=[[478.0083,254.5625,848.000032297],[-0.000000007,-0.382683415,0.92387954,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TableCorner:=[[478.0083,254.5625,848.000032297],[-0.000000007,-0.382683415,0.92387954,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TableBottomRightCorner:=[[456.795088175,275.775662061,848],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TableTopRightMATLAB:=[[1054.3,809.6413,848],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TestTableBottomLeftMATLAB:=[[-395.2686,1127.8,848],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TableBottomLeftMATLAB:=[[-324.5579,1156.1,848.000103665],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TestTableTopLeftMATLAB:=[[241.1275,1721.8,950],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TestBottomCentreMATLABFIG:=[[66.1186,715.938,848],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget TestBottomCentreMATLABANG:=[[90.8673,740.6984,848],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget BoxCamPos:=[[223.0963,844.6431,1550],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Low_TestCamTableCentreMATLABANG:=[[223.0963,844.6431,848],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	
	PROC main()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
!        MoveL Home,v200,z100,tool0\WObj:=wobj0;
!        MoveL Home,v200,z100,tool0\WObj:=wobj0;
!        MoveL AboveBoxTable,v200,fine,tool0\WObj:=wobj0;
!        MoveL Table,v200,fine,tool0\WObj:=wobj0;
!        MoveL TableCorner,v100,fine,tool0\WObj:=wobj0;
!        WaitTime 1;
!        MoveL TableCornerTest1,v100,fine,tool0\WObj:=wobj0;
!        WaitTime 1;
!        MoveL TableBottomRightCorner,v200,fine,tool0\WObj:=wobj0;
!        WaitTime 1;
!        MoveL TableTopRightMATLAB,v200,fine,tool0\WObj:=wobj0;
!        WaitTime 1;
!        MoveL TestTableBottomLeftMATLAB,v200,fine,tool0\WObj:=wobj0;
!        WaitTime 1;
        MoveL TableBottomLeftMATLAB,v200,fine,tool0\WObj:=wobj0;
!        WaitTime 1;
!        MoveL TestTableTopLeftMATLAB,v50,fine,tool0\WObj:=wobj0;
		MoveL BoxCamPos,v50,fine,tool0\WObj:=wobj0;
		MoveL Low_TestCamTableCentreMATLABANG,v50,fine,tool0\WObj:=wobj0;
        MoveJ AboveBoxPos, v200, fine, tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
ENDMODULE