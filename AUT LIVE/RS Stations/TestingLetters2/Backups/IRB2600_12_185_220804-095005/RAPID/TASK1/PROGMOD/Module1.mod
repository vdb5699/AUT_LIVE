MODULE Module1
!    PERS robtarget BottLeftNew:=[[1335.999946186,29.999998495,1049.999996829],[0.70618058,0,0.708031771,-0.000000001],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PERS robtarget TopLeftNew:=[[1335.999940596,29.999998408,1130.000046425],[0.706180582,-0.000000002,0.708031768,-0.000000001],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PERS robtarget TopMidNew:=[[1335.999958569,0,1130.00001521],[0.706180572,0,0.708031779,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PERS robtarget TopRightNew:=[[1335.999940596,-29.999998408,1130.000046425],[0.706180582,0.000000002,0.708031768,0.000000001],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PERS robtarget RightMidNew:=[[1335.999945541,-29.99999842,1090.000077422],[0.706180574,-0.000000001,0.708031776,-0.000000001],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PERS robtarget Centre:=[[1336.000068323,0,1090.000067718],[0.706151716,0,0.708060558,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PERS robtarget LeftMidNew:=[[1335.999945541,29.99999842,1090.000077422],[0.706180574,0.000000001,0.708031776,0.000000001],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PERS robtarget RightBottNew:=[[1335.999946186,-29.999998495,1049.999996829],[0.70618058,0,0.708031771,0.000000001],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PERS robtarget BottMidNew:=[[1335.999950892,0,1049.999988651],[0.706180578,0,0.708031773,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    PROC WriteB()
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
ENDMODULE