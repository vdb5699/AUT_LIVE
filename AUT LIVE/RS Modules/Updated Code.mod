MODULE MainModule
	!Constant positions (Please Do not Change it)
    
    !-----------Test Positions - can be deleted once Postions Finalised-----------!
    !PERS robtarget TestGripperToCam:= [[556.4+38.5373+114.3314,-557.2-188.4440+55.1777, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !PERS robtarget TestGripperToBottle:= [[556.4+30.4056-64.7264, -557.2-193.0402-157.4380, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToCam:= [[599.0562,-741.7018,  1156.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToCamLow:= [[596.6697, -743.5580, 1156.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToSyrupBottleAbove:= [[301.544,-974.157, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToSyrupBottle:= [[301.544,-974.157, 1120],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToCokeBottleAbove:= [[412.693,-899.473,1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToCokeBottle:= [[412.693,-899.473,1070],[0.00163976,-0.383409,-0.923576,-0.00114218],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestingGUIPos:= [[400.619,-637.294,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget CameraPos:=[[888.647981627,-3.101979233,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget CameraPos:=[[595.6,-367-628.37,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !-----------New Positions START-----------!
	CONST robtarget AboveBoxTable:=[[668.215948776,668.215899509,1375.000048879],[0.000000027,-0.382683415,0.92387954,0.000000016],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Home:=[[1018.612159322,0,1417.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ZeroPos:=[[1030, 0, 1460],[0.70706, 0, 0.70715,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget NewGripperPosManual:= [[369.6, -766.5, 1214.4],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldOldCameraPos:= [[552.8, -553.6, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldCamPos:= [[556.4, -557.2, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldNewCamPos:= [[326.9438,-581.9982,1300],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget NewCamPos:= [[215, -680.3, 1300],[0.00163,-0.38344,-0.92356,-0.00115],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget NewCamPos:= [[215, -680.3, 1300],[-0.00163,0.38344,0.92356,0.00115],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxPos:= [[366.1, 366, 1588.4],[0.00192, -0.38294, 0.92377, 0.00293],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BoxCamPos:=[[223.0963,844.6431,1550],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    Test
    !CONST robtarget BoxCamPos:=[[223.0963,844.6431,1550],[0,0.923879546,-0.382683401,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TemporaryCam:= [[471.943,684.788,1558],[-7E-09,-0.382683,0.92388,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    ! AboveBottleCoord robtarget x,y should change based on the bottle location
    PERS robtarget AboveBottleCoord:= [[301.544,-974.157, 1588.4],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveTable:= [[550.3, -377.8, 1500],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxCoordOne:= [[473.5,410,1588],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BoxCoordOne:= [[473.5,410,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget AboveBoxCoordTwo:= [[399.2538,484.2462,1588],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordTwo:= [[399.2538,484.2462,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget AboveBoxCoordThree:= [[547.7462,484.2462,1588],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordThree:= [[547.7462,484.2462,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget AboveBoxCoordFour:= [[473.5000,558.4924,1588],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordFour:= [[473.5000,558.4924,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget AboveBoxCoordFive:= [[621.9924,558.4924,1588],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordFive:= [[621.9924,558.4924,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget AboveBoxCoordSix:= [[547.7462,632.7386,1588],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordSix:= [[547.7462,632.7386,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget WritePos:= [[1018.612159322,0,1417.5],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokePos1:= [[240.8, 693.9, 1060.7],[0.00191, -0.34877, 0.93720,  0.00298],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokePos2:= [[183.4, 762.5, 1060.7],[0.00191, -0.34877, 0.93720,  0.00298],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TestCokePos2:= [[141.1598, 742.3402, 1060.7],[0.00191, -0.34877, 0.93720,  0.00298],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ViaPoint:=[[800.591357786,-502.074175633,1375],[0,0.276417599,0.961037622,0],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TestOrientation:=[[223.0963,844.6431,1550],[-0, 0.3827, 0.9239,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !-----------New Positions END------------!
    !-----------Sarat Demo Positions------------!
    CONST robtarget AboveCokeBox:= [[258.5, 819.8, 1454.6],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveBox1:= [[490, 462, 1454.6],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveSyrupBottle1:= [[315, -712.5, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget SyrupBottle1:= [[315, -712.5, 1125],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveSyrupBottle2:= [[545.9, -701.3, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget SyrupBottle2:= [[545.9, -701.3, 1125],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveSyrupBottle3:= [[519, -561.7, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget SyrupBottle3:= [[519, -561.7, 1125],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveSyrupBottle4:= [[399.7, -831.4, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget SyrupBottle4:= [[399.7, -831.4, 1125],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveCokeBottle1:= [[248.3, -842.8, 1600],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokeBottle1:= [[248.3, -842.8, 1069],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveCokeBottle2:= [[248.3, -842.8, 1600],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokeBottle2:= [[435.1, -671.5, 1069],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveCokeBottle3:= [[399.2, -986.6, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokeBottle3:= [[399.2, -986.6, 1069],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveCokeBottle4:= [[579.8, -848.3, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokeBottle4:= [[579.8, -848.3, 1069],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokeBoxCoordOne:= [[240.1548,643.3452,1065],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokeBoxCoordTwo:= [[155.3019,728.1981,1065],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
!    CONST robtarget CokeBoxCoordThree:= [[547.7462,484.2462,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
!    CONST robtarget CokeBoxCoordFour:= [[473.5000,558.4924,1115],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokeBoxCoordFive:= [[409.8604,813.0509,1065],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget CokeBoxCoordSix:= [[303.7944,919.1169,1065],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
	!-----------Sarat Demo Positions END------------!
	!-----------RobotWriting Alphabets Coords------------!
	CONST robtarget A_Horizontal:= [[1018.612159322,-22.5,1327],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    !---------Old Robtargets - replace with new coords-----------!       
    CONST robtarget BoxEdgeAbove:=[[-330,780,1375],[-0.000000048,1,0.00000002,-0.000000013],[1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BoxEdge:=[[-330,780,695],[-0.000000048,1,0.00000002,-0.000000013],[1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget stackBoxAbove:=[[110,780,1375],[-0.000000048,1,0.00000002,-0.000000013],[1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget stackBoxOnTop:=[[110,780,1005],[-0.000000048,1,0.00000002,-0.000000013],[1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !110mm for each dot point along x axis and y axis
    CONST robtarget abovesryupMoveToBoxPos1:=[[0,945,1045],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovesryupMoveToBoxPos2:=[[110,945,1045],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovesryupMoveToBoxPos3:=[[220,945,1045],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovesryupMoveToBoxPos4:=[[0,835,1045],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovesryupMoveToBoxPos5:=[[110,835,1045],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovesryupMoveToBoxPos6:=[[220,835,1045],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget sryupMoveToBoxPos1:=[[0,945,745],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget sryupMoveToBoxPos2:=[[110,945,745],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget sryupMoveToBoxPos3:=[[220,945,745],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget sryupMoveToBoxPos4:=[[0,835,745],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget sryupMoveToBoxPos5:=[[110,835,745],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget sryupMoveToBoxPos6:=[[220,835,745],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !Position for placing Coke in the box
    CONST robtarget abovecokeMoveToBoxPos1:=[[-440,945,1000],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovecokeMoveToBoxPos2:=[[-330,945,1000],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovecokeMoveToBoxPos3:=[[-220,945,1000],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovecokeMoveToBoxPos4:=[[-440,835,1000],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovecokeMoveToBoxPos5:=[[-330,835,1000],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget abovecokeMoveToBoxPos6:=[[-220,835,1000],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cokeMoveToBoxPos1:=[[-440,945,700],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cokeMoveToBoxPos2:=[[-330,945,700],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cokeMoveToBoxPos3:=[[-220,945,700],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cokeMoveToBoxPos4:=[[-440,835,700],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cokeMoveToBoxPos5:=[[-330,835,700],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cokeMoveToBoxPos6:=[[-220,835,700],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !ADD 154mm along x and Minus 15.5 along y (Move gripper to Camera focal position)
    CONST robtarget GripperInitPos:=[[1042.647981627,-18.60197923,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];                      
    !Variable position (Set orgin position as GripperIniPos)
    !Syrup
    PERS robtarget ObjAbovePos:=[[1146.61,-54.6672,1192.53],[0.00436311,0.00610856,-0.999972,-4.1884E-05],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget GrabSyrupPos:=[[1146.61,-54.6672,1135],[0.00436311,0.00610856,-0.999972,-4.1884E-05],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !Coke
    PERS robtarget GrabCokePos:=[[1067.37,104.869,1080],[0.00436311,0.00610856,-0.999972,-4.1884E-05],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !--------------------Old Robtargets END-------------------------!  
    
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
    VAR num retry_no;
    VAR num num_objs;
    VAR num X;
    VAR num Y;
    VAR num Box_X;
    VAR num Box_Y;
    VAR num sum;
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
    
    PROC main()
		AccSet 20,30;           ! Max Acceleration set to 20mm/s^2 and ramping is 20
!        syrup_counter:=0;
!        open_gripper;
!!        coke_counter:=0;
!        moveToQuartenionTest;
        moveToBoxCam;
!        moveToAboveBoxPos;
!        moveToHome;             ! Program always starts from Home Pos in case it was left in random pos
!        receiveSignal;         ! Where robot will receive signals to do certain tasks
!        moveToCameraPos;       ! New Cam Pos
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
                SocketAccept serverSocket, clientSocket, \Time:=WAIT_MAX;
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
                    colour := StrPart(data,1,1);
                    found1 := StrFind(data,1,",");
                    found2 := StrFind(data,found1+1,",");
                    found3 := StrFind(data,found2+1,",");
                    found4 := StrFind(data,found3+1,",");
                    x_coordinate := StrPart(data,found1+1,found2-found1-1);
                    y_coordinate := StrPart(data,found2+1,found3-found2-1);
                    Box_xCoordinate := StrPart(data,found3+1,found4-found3-1);
                    Box_ycoordinate := StrPart(data,found4+1,StrLen(data)-found4);
                    objects :=StrToVal(x_coordinate,X);
                    objects := StrToVal(y_coordinate,Y);
                    objects:= StrToVal(Box_xCoordinate,Box_X);
                    objects:= StrToVal(Box_ycoordinate,Box_Y);
                    PickUpBottles;
               !     TestPos:= [[552.8+X, -553.6+Y, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!                    moveToTestPos;
                    SocketSend client,\Str :="SendNext";
                    SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
                ENDWHILE
                receiveSignal;   
            ELSEIF signal = "4" THEN
                moveToBoxCam;
                SocketSend client,\Str :="AtBox";
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
                SocketAccept serverSocket, clientSocket, \Time:=WAIT_MAX;
                RETRY;
            ELSE
                stop;
            ENDIF
    ENDPROC
    
    PROC tcpipTempCam()
        SocketCreate server;
        SocketBind server,"192.168.0.20", 1025;
        SocketListen server;
        SocketAccept server,client, \Time:=WAIT_MAX;
        tcpX:= "IN";
        WHILE tcpX <> "Out" DO
            SocketReceive client,\Str :=tcpX, \Time:=WAIT_MAX;
            objects:=StrToVal(tcpX,tcpXValue);
            SocketReceive client,\Str :=tcpY, \Time:=WAIT_MAX;
            objects:=StrToVal(tcpY,tcpYValue);
            
            TemporaryCam:= [[tcpXValue,tcpYValue,1300],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v400,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[tcpXValue,tcpYValue,1140],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            ! TemporaryCam:= [[tcpXValue,tcpYValue,1195],[0.001639386,-0.3834062,-0.9235777,-0.001139545],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            WaitTime 1;
            MoveL TemporaryCam,v200,fine,tool0\WObj:=wobj0;
            WaitTime 1;
            SocketSend client,\Str :="SendNext";
            
            PathAccLim FALSE,FALSE;
            
        ENDWHILE
        
!        SocketSend client,\Str :="PickUp";
        SocketClose server;
        SocketClose client;
    ENDPROC
    
    PROC tcpipBottle()
        open_gripper;
        SocketReceive client,\Str :=tcpX,\Time:=WAIT_MAX;
        objects:=StrToVal(tcpX,tcpXValue);
        SocketReceive client,\Str :=tcpY\Time:=WAIT_MAX;
        objects:=StrToVal(tcpY,tcpYValue);
        AboveBottleCoord:= [[tcpXValue,tcpYValue, 1588.4],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        moveCoke;
        
        
        moveSyrup;
        
        SocketClose server;
        SocketClose client;
    ENDPROC
    
    PROC moveCoke()
		TestGripperToCokeBottleAbove:= [[tcpXValue,tcpYValue,1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        TestGripperToCokeBottle:= [[tcpXValue,tcpYValue,1070],[0.001639765,-0.3834093,-0.9235764,-0.00114218],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
		
		! Introducing Max Acceleration to see if it removes jolts
		PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL TestGripperToCokeBottleAbove,v100,fine,tool0\WObj:=wobj0;
        WaitTime 1;
        MoveL TestGripperToCokeBottle,v50,fine,tool0\WObj:=wobj0;
!        close_gripper;
!        moveToAboveBottleCoord;
!        moveToAboveTable;
!        moveToAboveBoxPos;
!        WaitTime 2;
!        moveToAboveTable;
!		PathAccLim FALSE, FALSE;
!        moveToAboveBottleCoord;
!        MoveL TestGripperToCokeBottle,v100,fine,tool0\WObj:=wobj0;
!        open_gripper;
    ENDPROC
    
    PROC moveSyrup()
		TestGripperToSyrupBottleAbove:= [[tcpXValue,tcpYValue,1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        TestGripperToSyrupBottle:= [[tcpXValue,tcpYValue,1120],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
		
		PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        MoveL TestGripperToSyrupBottleAbove,v200,fine,tool0\WObj:=wobj0;
        WaitTime 1;
        MoveL TestGripperToSyrupBottle,v50,fine,tool0\WObj:=wobj0;
!        close_gripper;
!        moveToAboveBottleCoord;
!        moveToAboveTable;
!        moveToAboveBoxPos;
!        placeBottleInBox;
!        moveToAboveBoxPos;
!        moveToAboveTable;
!        moveToCameraPos;
!        WaitTime 2;
!        moveToAboveTable;
!        moveToAboveBottleCoord;
!        MoveL TestGripperToSyrupBottle,v200,fine,tool0\WObj:=wobj0;
!        open_gripper;
		PathAccLim FALSE, FALSE;
    ENDPROC
    
!    PROC robotWrite()
!        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
!        moveToZeroPos;
!		WaitTime 2;
!		MoveL Offs (moveToZeroPos, 0, -50, -200), v80, fine, tool0\WObj:=wobj0;
!		moveToZeroPos;
!		MoveL Offs (moveToZeroPos, 0, 50, -200), v80, fine, tool0\WObj:=wobj0;
!		moveToZeroPos;
!		moveToA_Horizontal;
!		MoveL Offs (moveToZeroPos, 0, 22.5, 0), v80, fine, tool0\WObj:=wobj0;
!        PathAccLim FALSE,FALSE;
!    ENDPROC

    PROC PickUpBottles()
        moveToAboveTable;
        IF colour = "B" THEN
            TestingGUIPos:= [[X,Y,1300],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TestingGUIPos,v800,fine,tool0\WObj:=wobj0;
            TestingGUIPos:= [[X,Y,1125],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TestingGUIPos,v800,fine,tool0\WObj:=wobj0;
            close_gripper;
            TestingGUIPos:= [[X,Y,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TestingGUIPos,v800,fine,tool0\WObj:=wobj0;
            n_syrup:= n_syrup + 1;
            PutBottlesDownSyrup;
        ELSE
            TestingGUIPos:= [[X,Y,1300],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TestingGUIPos,v800,fine,tool0\WObj:=wobj0;
            TestingGUIPos:= [[X,Y,1070],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TestingGUIPos,v800,fine,tool0\WObj:=wobj0;
            close_gripper;
!            TestingGUIPos:= [[X,Y,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!            MoveL TestingGUIPos,v800,fine,tool0\WObj:=wobj0;
!            WaitTime 1;
!            TestingGUIPos:= [[X,Y,1070],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!            MoveL TestingGUIPos,v800,fine,tool0\WObj:=wobj0;
!            open_gripper;
            
            n_coke:= n_coke + 1;
            TestingGUIPos:= [[X,Y,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TestingGUIPos,v800,fine,tool0\WObj:=wobj0;
            PutBottlesDownCoke;
        ENDIF
        
    ENDPROC
    
    PROC PutBottlesDownSyrup()
        moveToAboveBoxPos;
        IF n_syrup = 1 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1120],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;            
        ELSEIF n_syrup = 2 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1120],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;         
        ELSEIF n_syrup = 3 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1120],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_syrup = 4 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1120],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_syrup = 5 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1120],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_syrup = 6 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1120],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;   
        ENDIF
    ENDPROC
    
    PROC PutBottlesDownSyrupFixed()
        IF n_syrup = 1 THEN
            moveToAboveBoxPos;
            MoveL AboveBoxCoordOne,v800,fine,tool0\WObj:=wobj0;
            moveToBoxCoordOne;
            open_gripper;
            MoveL AboveBoxCoordOne,v300,fine,tool0\WObj:=wobj0;
            MoveL ViaPoint,v500,z100,tool0\WObj:=wobj0;
            moveToCameraPosFast;
        ELSEIF n_syrup = 2 THEN
            moveToAboveBoxPos;
            MoveL AboveBoxCoordTwo,v800,fine,tool0\WObj:=wobj0;
            moveToBoxCoordTwo;
            open_gripper;
            MoveL AboveBoxCoordTwo,v300,fine,tool0\WObj:=wobj0;
            MoveL ViaPoint,v500,z200,tool0\WObj:=wobj0;
            moveToCameraPosFast;
        ELSEIF n_syrup = 3 THEN
            moveToAboveBoxPos;
            MoveL AboveBoxCoordThree,v800,fine,tool0\WObj:=wobj0;
            moveToBoxCoordThree;
            open_gripper;
            MoveL AboveBoxCoordThree,v300,fine,tool0\WObj:=wobj0;
            MoveL ViaPoint,v500,z200,tool0\WObj:=wobj0;
            moveToCameraPosFast;
        ELSEIF n_syrup = 4 THEN
            moveToAboveBoxPos;
            MoveL AboveBoxCoordFour,v800,fine,tool0\WObj:=wobj0;
            moveToBoxCoordFour;
            open_gripper;
            MoveL AboveBoxCoordFour,v300,fine,tool0\WObj:=wobj0;
            MoveL ViaPoint,v500,z200,tool0\WObj:=wobj0;
            moveToCameraPosFast;
        ELSEIF n_syrup = 5 THEN
            moveToAboveBoxPos;
            MoveL AboveBoxCoordFive,v800,fine,tool0\WObj:=wobj0;
            moveToBoxCoordFive;
            open_gripper;
            MoveL AboveBoxCoordFive,v300,fine,tool0\WObj:=wobj0;
            MoveL ViaPoint,v500,z200,tool0\WObj:=wobj0;
            moveToCameraPosFast;
        ELSEIF n_syrup = 6 THEN
            moveToAboveBoxPos;
            MoveL AboveBoxCoordSix,v800,fine,tool0\WObj:=wobj0;
            moveToBoxCoordSix;
            open_gripper;
            MoveL AboveBoxCoordSix,v300,fine,tool0\WObj:=wobj0;
            MoveL ViaPoint,v500,z200,tool0\WObj:=wobj0;
            moveToCameraPosFast;
        ENDIF
    ENDPROC
    
    PROC PutBottlesDownCoke()
        moveToAboveBoxPos;
        IF n_coke = 1 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.00163,0.3834,0.9236,0.0012],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v80,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1060],[-0.00163,0.3834,0.9236,0.0012],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;            
        ELSEIF n_coke = 2 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.00163,0.3834,0.9236,0.0012],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v80,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1060],[-0.00163,0.3834,0.9236,0.0012],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;         
        ELSEIF n_coke = 3 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.00163,0.3834,0.9236,0.0012],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v80,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1060],[-0.00163,0.3834,0.9236,0.0012],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_coke = 4 THEN
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveL TemporaryCam,v800,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.00163,0.3834,0.9236,0.0012],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v80,fine,tool0\WObj:=wobj0;
            TemporaryCam:= [[Box_X,Box_Y,1060],[-0.00163,0.3834,0.9236,0.0012],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            open_gripper;
            TemporaryCam:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL TemporaryCam,v300,fine,tool0\WObj:=wobj0;
            PathAccLim FALSE, FALSE;   
        ENDIF
    ENDPROC
    
    PROC Demo()
!        moveToAboveSyrupBottle1;
!        AboveSyrupBottle1:= [[315, -712.5, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        
!       ! Syrup
        AboveSyrupBottle1:= [[315, -712.5, 1300],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        open_gripper;
        moveToAboveSyrupBottle1;
        moveToSyrupBottle1;
        close_gripper;
        AboveSyrupBottle1:= [[315, -712.5, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        moveToAboveSyrupBottle1;
        moveToAboveBoxPos;
        moveToAboveBox1;
        moveToBoxCoordOne;
        open_gripper;
        moveToAboveBoxPos;
        moveToCameraPos;
        
        AboveSyrupBottle2:= [[545.9, -701.3, 1300],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        moveToAboveSyrupBottle2;
        moveToSyrupBottle2;
        close_gripper;
        AboveSyrupBottle2:= [[545.9, -701.3, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        moveToAboveSyrupBottle2;
        moveToAboveBoxPos;
        moveToAboveBox1;
        moveToBoxCoordTwo;
        open_gripper;
        moveToAboveBoxPos;
        moveToCameraPos;
        
        AboveSyrupBottle3:= [[519, -561.7, 1300],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        moveToAboveSyrupBottle3;
        moveToSyrupBottle3;
        close_gripper;
        AboveSyrupBottle3:= [[519, -561.7, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        moveToAboveSyrupBottle3;
        moveToAboveBoxPos;
        moveToAboveBox1;
        moveToBoxCoordFive;
        open_gripper;
        moveToAboveBoxPos;
        moveToCameraPos;
        
        AboveSyrupBottle4:= [[399.7, -831.4, 1300],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        moveToAboveSyrupBottle4;
        moveToSyrupBottle4;
        close_gripper;
        AboveSyrupBottle4:= [[399.7, -831.4,  1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        moveToAboveSyrupBottle4;
        moveToAboveBoxPos;
        moveToAboveBox1;
        moveToBoxCoordSix;
        open_gripper;
        moveToAboveBoxPos;
        moveToCameraPos;

        moveToAboveBoxPos;
        moveToAboveBox1;
        moveToAboveBoxCoordOne;
        moveToBoxCoordOne;
        close_gripper;
        moveToAboveBox1;
        moveToAboveBoxPos;
        moveToAboveSyrupBottle1;
        moveToSyrupBottle1;
        open_gripper;
        moveToAboveSyrupBottle1;
        
        moveToAboveBoxPos;
        moveToAboveBox1;
        moveToBoxCoordTwo;
        close_gripper;
        moveToAboveBox1;
        moveToAboveBoxPos;
        moveToAboveSyrupBottle2;
        moveToSyrupBottle2;
        open_gripper;
        moveToAboveSyrupBottle2;
        
        moveToAboveBoxPos;
        moveToAboveBox1;
        moveToBoxCoordFive;
        close_gripper;
        moveToAboveBox1;
        moveToAboveBoxPos;
        moveToAboveSyrupBottle3;
        moveToSyrupBottle3;
        open_gripper;
        moveToAboveSyrupBottle3;
        
        moveToAboveBoxPos;
        moveToAboveBox1;
        moveToBoxCoordSix;
        close_gripper;
        moveToAboveBox1;
        moveToAboveBoxPos;
        moveToAboveSyrupBottle4;
        moveToSyrupBottle4;
        open_gripper;
        moveToAboveSyrupBottle4;
        
    ENDPROC

!    PROC stackBox()
!        MoveL BoxEdgeAbove,v300,fine,tool0\WObj:=wobj0;
!        MoveL BoxEdge,v100,fine,tool0\WObj:=wobj0;
!        close_gripper;
!        MoveL BoxEdgeAbove,v100,fine,tool0\WObj:=wobj0;
!        MoveL stackBoxAbove,v100,fine,tool0\WObj:=wobj0;
!        MoveL stackBoxOnTop,v100,fine,tool0\WObj:=wobj0;
!        open_gripper;
!        MoveL moveToBoxAbv,v100,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
    PROC moveToHome()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ Home,v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCameraPos()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ NewCamPos,v800,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCameraPosFast()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ NewCamPos,v600,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToQuartenionTest()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ TestOrientation,v80,fine,tool0\WObj:=wobj0;
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
        MoveJ AboveTable,v800,z200,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC grabSyrup()
        MoveL GrabSyrupPos,v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC grabCoke()
        MoveL GrabCokePos,v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC boxAbvpos()
!        MoveL moveToBoxAbv,v300,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC moveToAboveBoxPos()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBoxPos, v800, z200, tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveBoxCoordOne()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBoxCoordOne, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordOne()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordOne, v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordTwo()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordTwo, v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordThree()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordThree, v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordFour()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordFour, v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordFive()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordFive, v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordSix()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordSix, v300,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
!    PROC moveToAboveSyrupBottle1()
!        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
!        PERS robtarget AboveSyrupBottle1:= [[315, -712.5, 1125],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
!        MoveL SyrupBottle1, v60,fine,tool0\WObj:=wobj0;
!        PathAccLim FALSE,FALSE;
!    ENDPROC
    
    PROC moveToSyrupBottle1()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL SyrupBottle1, v60,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveSyrupBottle1()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveSyrupBottle1, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToSyrupBottle2()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL SyrupBottle2, v60,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveSyrupBottle2()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveSyrupBottle2, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToSyrupBottle3()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL SyrupBottle3, v60,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveSyrupBottle3()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveSyrupBottle3, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToSyrupBottle4()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL SyrupBottle4, v60,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveSyrupBottle4()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveSyrupBottle4, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeBottle1()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokeBottle1, v60,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveCokeBottle1()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveCokeBottle1, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeBottle2()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokeBottle2, v60,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveCokeBottle2()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveCokeBottle2, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeBottle3()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokeBottle3, v60,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveCokeBottle3()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveCokeBottle3, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeBottle4()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokeBottle4, v60,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveCokeBottle4()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveCokeBottle4, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveBox1()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveBox1, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeCoordOne()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokePos1, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeCoordTwo()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL TestCokePos2, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveCokeBox()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveCokeBox, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeCoordFive()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokeBoxCoordFive, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeCoordSix()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokeBoxCoordSix, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCam()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ BoxCamPos,v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC placeBottleInBox()
         moveToAboveBoxCoordOne;
         moveToBoxCoordOne;
         open_gripper;
         WaitTime 1;
         moveToAboveBoxCoordOne;
         
!        IF colour = "B" THEN
!            IF syrup_counter = 1 THEN
!                MoveL abovesryupMoveToBoxPos1,v200,fine,tool0\WObj:=wobj0;
!                MoveL sryupMoveToBoxPos1,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF syrup_counter =2 THEN
!                MoveL abovesryupMoveToBoxPos2,v200,fine,tool0\WObj:=wobj0;
!                MoveL sryupMoveToBoxPos2,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF syrup_counter =3 THEN
!                MoveL abovesryupMoveToBoxPos3,v200,fine,tool0\WObj:=wobj0;
!                MoveL sryupMoveToBoxPos3,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF syrup_counter =4 THEN
!                MoveL abovesryupMoveToBoxPos4,v200,fine,tool0\WObj:=wobj0;
!                MoveL sryupMoveToBoxPos4,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF syrup_counter =5 THEN
!                MoveL abovesryupMoveToBoxPos5,v200,fine,tool0\WObj:=wobj0;
!                MoveL sryupMoveToBoxPos5,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF syrup_counter =6 THEN
!                MoveL abovesryupMoveToBoxPos6,v200,fine,tool0\WObj:=wobj0;
!                MoveL sryupMoveToBoxPos6,v100,fine,tool0\WObj:=wobj0;
!            ENDIF
!        ENDIF
        IF colour = "R" THEN
            IF coke_counter = 1 THEN
                MoveL abovecokeMoveToBoxPos1,v200,fine,tool0\WObj:=wobj0;
                MoveL cokeMoveToBoxPos1,v100,fine,tool0\WObj:=wobj0;
            ELSEIF coke_counter =2 THEN
                MoveL abovecokeMoveToBoxPos2,v200,fine,tool0\WObj:=wobj0;
                MoveL cokeMoveToBoxPos2,v100,fine,tool0\WObj:=wobj0;
            ELSEIF coke_counter =3 THEN
                MoveL abovecokeMoveToBoxPos3,v200,fine,tool0\WObj:=wobj0;
                MoveL cokeMoveToBoxPos3,v100,fine,tool0\WObj:=wobj0;
            ELSEIF coke_counter =4 THEN
                MoveL abovecokeMoveToBoxPos4,v200,fine,tool0\WObj:=wobj0;
                MoveL cokeMoveToBoxPos4,v100,fine,tool0\WObj:=wobj0;
            ELSEIF coke_counter =5 THEN
                MoveL abovecokeMoveToBoxPos5,v200,fine,tool0\WObj:=wobj0;
                MoveL cokeMoveToBoxPos5,v100,fine,tool0\WObj:=wobj0;
            ELSEIF coke_counter =6 THEN
                MoveL abovecokeMoveToBoxPos6,v200,fine,tool0\WObj:=wobj0;
                MoveL cokeMoveToBoxPos6,v100,fine,tool0\WObj:=wobj0;
            ENDIF
        ENDIF
            
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
    
    PROC testingBoxCoords()
        moveToAboveBoxCoordOne;
        WaitTime 2;
        moveToBoxCoordOne;
        WaitTime 2;
        moveToBoxCoordTwo;
!        WaitTime 2;
!        moveToBoxCoordThree;
!        WaitTime 2;
!        moveToBoxCoordFour;
        WaitTime 2;
        moveToBoxCoordFive;
        WaitTime 2;
        moveToBoxCoordSix;
        
    ENDPROC
    
    
!        Testing Position 
    PROC testpos()
!!        MoveL NewGripperPosManual,v100,fine,tool0\WObj:=wobj0;
!        MoveL NewCamPos,v100,fine,tool0\WObj:=wobj0;
!!        Waittime 1;
!        MoveL TestGripperToCamLow,v100,fine,tool0\WObj:=wobj0;
        MoveL TemporaryCam,v100,fine,tool0\WObj:=wobj0;
!        MoveL TestGripperToSyrupBottleAbove,v100,fine,tool0\WObj:=wobj0;
!        Waittime 1;
!        MoveL TestGripperToSyrupBottle,v100,fine,tool0\WObj:=wobj0;
!        Waittime 2;
!        close_gripper;
!        MoveL TestGripperToSyrupBottleAbove,v100,fine,tool0\WObj:=wobj0;
!        MoveL AboveBottleCoord,v100,fine,tool0\WObj:=wobj0;
!        MoveL AboveTable,v100,fine,tool0\WObj:=wobj0;
!!        MoveL AboveBoxPos,v100,fine,tool0\WObj:=wobj0;
!!!        MoveL AboveBoxCoordOne,v100,fine,tool0\WObj:=wobj0;
!        MoveL TestGripperToCokeBottleAbove,v100,fine,tool0\WObj:=wobj0;
!        WaitTime 2;
!        MoveL TestGripperToCokeBottle,v100,fine,tool0\WObj:=wobj0;
!!!!!!        !MoveL TestGripperToCokeBottle,v50,fine,tool0\WObj:=wobj0;
!        ObjAbovePos:=[[1042.647981627+104.36,-18.60197923+135.6461,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        GrabSyrupPos:=[[1042.647981627+104.36,-18.60197923+135.6461,1135],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        grabCokePos:=[[1042.647981627+8.85,-18.60197923+203.099,1080],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    ENDPROC
ENDMODULE
