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
    CONST robtarget BoxCoordOne:= [[473.5,410,1110],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordTwo:= [[399.2538,484.2462,1110],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordThree:= [[547.7462,484.2462,1110],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordFour:= [[473.5000,558.4924,1110],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordFive:= [[621.9924,558.4924,1110],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget BoxCoordSix:= [[547.7462,632.7386,1110],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget WritePos:= [[1018.612159322,0,1417.5],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    !-----------New Positions END------------!
    !-----------Sarat Demo Positions------------!
    CONST robtarget AboveCokeBox:= [[258.5, 819.8, 1454.6],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveBox1:= [[490, 462, 1454.6],[0.00188,-0.34873,0.93722,0.00297],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveSyrupBottle1:= [[315, -712.5, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget SyrupBottle1:= [[315, -712.5, 1120],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveSyrupBottle2:= [[545.9, -701.3, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget SyrupBottle2:= [[545.9, -701.3, 1120],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveSyrupBottle3:= [[519, -561.7, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget SyrupBottle3:= [[519, -561.7, 1120],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget AboveSyrupBottle4:= [[399.7, -831.4, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    CONST robtarget SyrupBottle4:= [[399.7, -831.4, 1120],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
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
    VAR string num_syrup;
    VAR string num_coke;
    VAR string x_coordinate;
    VAR string y_coordinate;
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
    VAR num sum;
    VAR num n_syrup;
    VAR num n_coke;
    VAR num syrup_counter;
    VAR num coke_counter;
    VAR num tcpXValue;
    VAR num tcpYValue;
    VAR bool objects;
    VAR bool syrup;
    VAR bool coke;
    VAR bool posx;
    VAR bool posy;
    PERS string socketArray{3,1}:=[[""], [""], [""]];
    PERS string socketArrayTest;
    VAR num found1;
    VAR num found2;
    VAR robtarget CurRobT2;
    
    PROC main()
		AccSet 20,20;           ! Max Acceleration set to 20mm/s^2 and ramping is 20
        moveToCameraPos;       ! New Cam Pos
        Demo;
!        SocketClose server;
!        SocketClose client;
    ENDPROC
    
    PROC Demo()
!        moveToAboveSyrupBottle1;
!        AboveSyrupBottle1:= [[315, -712.5, 1588],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        
!!       ! Syrup
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
        moveToCameraPosFast;
        
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
        moveToCameraPosFast;
        
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
        moveToCameraPosFast;
        
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
        moveToCameraPosFast;

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
	
	PROC moveToCameraPosFast()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ NewCamPos,v600,fine,tool0\WObj:=wobj0;
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
        MoveJ AboveBoxPos, v500, fine, tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveBoxCoordOne()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveJ AboveBoxCoordOne, v400,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordOne()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordOne, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordTwo()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordTwo, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordThree()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordThree, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordFour()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordFour, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordFive()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordFive, v150,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToBoxCoordSix()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL BoxCoordSix, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    
    PROC moveToSyrupBottle1()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL SyrupBottle1, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveSyrupBottle1()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveSyrupBottle1, v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToSyrupBottle2()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL SyrupBottle2, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveSyrupBottle2()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveSyrupBottle2, v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToSyrupBottle3()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL SyrupBottle3, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveSyrupBottle3()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveSyrupBottle3, v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToSyrupBottle4()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL SyrupBottle4, v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToAboveSyrupBottle4()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL AboveSyrupBottle4, v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeBottle1()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokeBottle1, v200,fine,tool0\WObj:=wobj0;
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
        MoveL AboveBox1, v150,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeCoordOne()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokeBoxCoordOne, v100,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC moveToCokeCoordTwo()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        MoveL CokeBoxCoordTwo, v100,fine,tool0\WObj:=wobj0;
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
ENDMODULE
