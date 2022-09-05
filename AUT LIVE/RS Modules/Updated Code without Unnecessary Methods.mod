MODULE MainModule
	!Constant positions (Please Do not Change it)
    !-----------New Positions START-----------!
	CONST robtarget AboveBoxTable:=[[668.215948776,668.215899509,1375.000048879],[0.000000027,-0.382683415,0.92387954,0.000000016],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Home:=[[1018.612159322,0,1417.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ZeroPos:=[[1030, 0, 1460],[0.70706, 0, 0.70715,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget NewGripperPosManual:= [[369.6, -766.5, 1214.4],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldOldCameraPos:= [[552.8, -553.6, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldCamPos:= [[556.4, -557.2, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldNewCamPos:= [[326.9438,-581.9982,1300],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget NewCamPos:= [[215, -680.3, 1300],[0.00163,-0.38344,-0.92356,-0.00115],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxPos:= [[366.1, 366, 1588.4],[0.00192, -0.38294, 0.92377, 0.00293],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BoxCamPos:=[[223.0963,844.6431,1550],[-0.000000007,-0.382683401,0.923879546,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget BoxCoord:= [[457.303,810.589,1558],[-7E-09,-0.382683,0.92388,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget BottleCoord:= [[324.461,-655.197,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    ! AboveBoxCoord robtarget x,y should change based on the bottle location
    PERS robtarget AboveBoxCoord:= [[301.544,-974.157, 1588.4],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
    CONST robtarget AudienceCam:=[[-108.392054445,404.524654327,1593.865850606],[0.306068712,-0.601521785,0.556041018,0.48508955],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HomeAudience:=[[-100.362523078,374.558223054,1553.37723237],[0.160813199,-0.7001828,0.647242369,0.254873454],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AudienceViapoint:=[[586.472283508,126.846671607,1503.046845036],[0.572111865,-0.33163658,0.740341252,-0.120830555],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !-----------New Positions END------------!
	!-----------RobotWriting Alphabets Coords------------!
    CONST robtarget AbovePenTest:=[[512.9, -954.8, 1588],[0.00163,-0.38344,-0.92356,-0.00115],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePen:=[[986.4,794.7,1218],[0,0.38265,-0.9239,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PenLocation:=[[986.4,794.7,1124.8],[0,0.38265,-0.9239,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget PenLocationTest:=[[512.8982,-954.7989,1154.502],[0.001629734,-0.3834447,-0.9235617,-0.001150082],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget WriteStartLeft:=[[1336,600,1090],[0.706151696,0,0.708060578,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget WriteStart:=[[1336,0,1090],[0.706151696,0,0.708060578,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget WriteStartRight:=[[1336,-600,1090],[0.706151696,0,0.708060578,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget A_Horizontal:= [[1018.612159322,-22.5,1327],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    PERS robtarget SafeWritePos:=[[1377.96,0,1260],[0.00773263,0.708242,0.0146662,0.705775],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SafeWritePosRight:=[[1219.955689697,-750,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SafeWritePosTop:=[[1219.955689697,0,1400],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SafeWritePosBottom:=[[1219.955689697,0,950],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveDuster:=[[743.879676977,-800.509897995,1300.071035327],[0.000000006,0.382683505,0.923879502,0.000000013],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Duster:=[[743.879739272,-800.509937926,866.646225387],[0,0.382683433,0.923879532,0],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !---------Old Robtargets - replace with new coords-----------!       
    !ADD 154mm along x and Minus 15.5 along y (Move gripper to Camera focal position)
    CONST robtarget GripperInitPos:=[[1042.647981627,-18.60197923,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];                      
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
    VAR string randomString;
    VAR string column;
    VAR string tcpX;
    VAR string tcpY;
    VAR string colour;
    VAR string ang;
    VAR string signal;
    VAR string Letter;
    VAR string Font;
    VAR num retry_no;
    VAR num num_objs;
    VAR num X;
    VAR num Y;
    VAR num Z;
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
    VAR num found5;
    VAR num found6;
    VAR num angle;
    VAR num gap;
    VAR num line;
    VAR num ZLine;
    VAR num boardYPos;
    VAR num boardZPos;
    VAR num VertORLand;
    VAR num num_of_letters;
    VAR robtarget CurRobT2;
    VAR speeddata vBottleRot := [1000, 180, 200, 15]; !1st = LinV (mm/s), 2nd = RotV (deg/s), 3rd,4th = external axes
    VAR speeddata vWrite := [200, 45, 200, 15 ]; !1st = LinV (mm/s), 2nd = RotV (deg/s), 3rd,4th = external axes
    VAR robtarget testWritePos;
    VAR robtarget testCamPos;
    VAR clock clock2;
    VAR num time;
    
    !------------------Variables End-----------------------!
    
    PROC TimingStart()
        ClkReset clock2;
        ClkStart clock2;
    ENDPROC
    
    PROC TimingEnd()
        ClkStop clock2;
        time:=ClkRead(clock2);
    ENDPROC
    
    PROC main()
		AccSet 20,30;           ! Max Acceleration set to 20mm/s^2 and ramping is 20
        moveToHomeSlow;             ! Program always starts from Home Pos in case it was left in random pos
        receiveSignal;         ! Where robot will receive signals to do certain tasks
    ENDPROC
    
    PROC GrabDuster()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        moveToHomeSlow;
        MoveJ AboveDuster,v500,fine,tool0\WObj:=wobj0;
        MoveL Duster,v500,fine,tool0\WObj:=wobj0;
        close_gripper;
        MoveL AboveDuster,v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC Erase()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        SafeWritePos:=[[1377,0,1360],[0.00773263,0.708242,0.0146662,0.705775],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        moveToHomeSlow;
        moveToWritePosStart;
        Y:=750;
        X:= 0;
        IF boardZPos <= 900 THEN
            boardZPos:= 1290;
        ENDIF
        
        IF Font="L" THEN
            sum:=1360;
            WHILE sum >= boardZPos DO
                MoveL RelTool(SafeWritePos,-X,-40,4),vWrite,fine,tool0\WObj:=wobj0;
                MoveL RelTool(SafeWritePos,-X,Y,-4),vWrite,fine,tool0\WObj:=wobj0;
                X:=X+30;
                sum:=1360-X;
                SafeWritePos:=[[1377.96,0,sum],[0.00773263,0.708242,0.0146662,0.705775],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            ENDWHILE
        ELSE
            sum:=1350;
            WHILE sum >= (boardZPos) DO
                MoveL RelTool(SafeWritePos,-X,-40,4),vWrite,fine,tool0\WObj:=wobj0;
                MoveL RelTool(SafeWritePos,-X,Y,-4),vWrite,fine,tool0\WObj:=wobj0;
                X:=X+30;
                sum:=sum-X;
                SafeWritePos:=[[1377.96,0,sum],[0.00773263,0.708242,0.0146662,0.705775],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            ENDWHILE
        ENDIF
        MoveL RelTool(SafeWritePos,-X,Y,-200),vWrite,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC PutAwayDuster()
        PathAccLim TRUE\AccMax := 3, TRUE, \DecelMax := 3;
        moveToHomeSlow;
        MoveJ AboveDuster,v300,fine,tool0\WObj:=wobj0;
        MoveL Duster,v300,fine,tool0\WObj:=wobj0;
        open_gripper;
        MoveL AboveDuster,v300,fine,tool0\WObj:=wobj0;
        moveToHomeSlow;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC GrabPen()
        MoveJ AbovePen,v500,fine,tool0\WObj:=wobj0;
        MoveL PenLocation,v500,fine,tool0\WObj:=wobj0;
        close_gripper;
        MoveL AbovePen,v500,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC PutAwayPen()
        moveToHomeSlow;
        MoveJ AbovePen,v500,fine,tool0\WObj:=wobj0;
        WaitTime 1;
        open_gripper;
        MoveL AbovePen,v500,fine,tool0\WObj:=wobj0;
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
        WaitTime 1.5;
        SocketSend client,\Str :="RSConnected";
        SocketReceive client,\Str :=signal, \Time:=WAIT_MAX;
        
        !Move robot based on Signal
        signalInstruction;

        ! Error Handling
        ERROR
            IF ERRNO=ERR_SOCK_CLOSED THEN   ! Close sockets and retry connecting if sockets closed
!                SocketClose server;
!                SocketClose client;
!                SocketCreate server;
!                SocketBind server,"192.168.0.20", 1025;
!                SocketListen server;
!                SocketAccept server, client, \Time:=WAIT_MAX;
                receiveSignal;
                RETRY;
            ELSEIF ERRNO=40222 THEN
                receiveSignal;
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
                TimingStart;
                WHILE data <> "3" DO
                    colour := StrPart(data,1,1);
                    found1 := StrFind(data,1,",");
                    found2 := StrFind(data,found1+1,",");
                    found3 := StrFind(data,found2+1,",");
                    found4 := StrFind(data,found3+1,",");
                    found5 := StrFind(data,found4+1,",");
                    found6 := StrFind(data,found5+1,",");
                    x_coordinate := StrPart(data,found1+1,found2-found1-1);
                    y_coordinate := StrPart(data,found2+1,found3-found2-1);
                    Box_xCoordinate := StrPart(data,found3+1,found4-found3-1);
                    Box_ycoordinate := StrPart(data,found4+1,found5-found4-1);
                    ang := StrPart(data,found5+1,found6-found5-1);
                    randomString := StrPart(data,found6+1,StrLen(data)-found6);
                    objects :=StrToVal(ang,angle);
                    objects :=StrToVal(x_coordinate,X);
                    objects := StrToVal(y_coordinate,Y);
                    objects:= StrToVal(Box_xCoordinate,Box_X);
                    objects:= StrToVal(Box_ycoordinate,Box_Y);
                    objects:= StrToVal(randomString,VertORLand);     
                    PickAndPlaceBottles;      ! Robot will start picking up bottles and putting into boxes from here
                    SocketSend client,\Str :="SendNext";
                    SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
                ENDWHILE
                TimingEnd;
                moveToHome;
                receiveSignal;   
            ELSEIF signal = "4" THEN
                moveToBoxCamFast;
                SocketSend client,\Str :="AtBox";
                receiveSignal;
            ELSEIF signal = "5" THEN
                SafeWritePos:= [[1219.955689697,0,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
                SocketSend client,\Str :="InFive";
                SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
                
                moveToHomeSlow;
                GrabPen;
                line:=0;
                
                Font := StrPart(data,1,1);
                ! Font Size
                IF Font="S" THEN
                        X:= 40;
                        Y:= 15;
                        Z:= 20;
                        gap:= 40;
                        ZLine:= 50;
                    ELSEIF Font="M" THEN
                        X:= 40;
                        Y:= 30;
                        Z:= 40;
                        gap:= 70;
                        ZLine:= 90;
                    ELSE
                        X:= 40;
                        Y:= 60;
                        Z:= 80;
                        gap:= 130;
                        ZLine:= 170;
                ENDIF
                IF Font ="L" THEN
                    boardYPos:= -40;
                    boardZPos:= 1290;
                ELSE
                    boardYPos:=0;
                    boardZPos:=1320;
                ENDIF
                FOR number FROM 3 TO StrLen(data) DO
                    
                    Letter := StrPart(data,number,1);
                    robotWrite;
                    IF boardYPos <= -710 THEN
                        boardYPos:= 0;
                        IF boardZPos <= 990 THEN
                            break;
                        ELSEIF number <= StrLen(data) THEN
                            boardZPos:= boardZPos - ZLine;
                            line:= line+1;
                        ENDIF
                    ENDIF
                    IF number = (StrLen(data)) THEN
                        randomString:= "LastLetter";
                        MoveL Offs(SafeWritePos,-200,0,0), v100,fine,tool0\WObj:=wobj0;
                    ENDIF
                ENDFOR
                SocketSend client,\Str :="WriteFinished";
                SafeWritePos:= [[1219.955689697,0,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
                PutAwayPen;
                moveToHomeSlow;
                receiveSignal;
            ELSEIF signal = "6" THEN
                GrabDuster;
                Erase;
                PutAwayDuster;
                SocketSend client,\Str :="InSix";
                receiveSignal;
            ELSEIF signal = "7" THEN
                AudienceCamPath;
                SocketSend client,\Str :="InSeven";
                receiveSignal;
            ELSEIF signal = "8" THEN
                CalibratePen;
                SocketSend client,\Str :="InEight";
                receiveSignal;
            ENDIF
        ENDWHILE
        moveToHomeSlow;
        
        ! Error Handling
        ERROR
            IF ERRNO=ERR_SOCK_CLOSED THEN   ! Close sockets and retry connecting if sockets closed
!                SocketClose server;
!                SocketClose client;
!                SocketCreate server;
!                SocketBind server,"192.168.0.20", 1025;
!                SocketListen server;
!                SocketAccept server, client, \Time:=WAIT_MAX;
                receiveSignal;
                RETRY;
            ELSE
                stop;
            ENDIF
    ENDPROC
    
    PROC AudienceCamPath()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        MoveJ Home,v200,fine,tool0\WObj:=wobj0;
        MoveL BoxCamPos,v500,z200,tool0\WObj:=wobj0;
        MoveJ AudienceCam,v500,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE, FALSE;
    ENDPROC
    
    PROC JointSixRot()
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        IF colour="R" THEN
            IF angle=0 AND VertORLand=1 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 90), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= 90), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle=0 AND VertORLand=0 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle<>0 AND ((angle) + 90) < 100 AND VertORLand =1 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -90-angle), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= -90-angle), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle<>0 AND ((angle) + 90) < 100 AND VertORLand =0 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -angle), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= -angle), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSE  
                IF VertORLand=0 THEN !If Box Horizontal
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -angle), vBottleRot, z50, tool0\WObj:=wobj0;
                    MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= -angle), vBottleRot, fine, tool0\WObj:=wobj0;
                    open_gripper;
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                ELSEIF VertORLand=1 THEN !If Box Vertical
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 90-angle), vBottleRot, z50, tool0\WObj:=wobj0;
                    MoveL RelTool (BoxCoord, 0, 0,(1558-1060) \Rz:= 90-angle), vBottleRot, fine, tool0\WObj:=wobj0;
                    open_gripper;
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                ENDIF
            ENDIF
        ELSE
            IF angle=0 AND VertORLand=1 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 90), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= 90), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle=0 AND VertORLand=0 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle<>0 AND ((angle) + 90) < 100 AND VertORLand =1 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -90-angle), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= -90-angle), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSEIF angle<>0 AND ((angle) + 90) < 100 AND VertORLand =0 THEN
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -angle), vBottleRot, z50, tool0\WObj:=wobj0;
                MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= -angle), vBottleRot, fine, tool0\WObj:=wobj0;
                open_gripper;
                MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
            ELSE  
                IF VertORLand=0 THEN !If Box Horizontal
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= -angle), vBottleRot, z50, tool0\WObj:=wobj0;
                    MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= -angle), vBottleRot, fine, tool0\WObj:=wobj0;
                    open_gripper;
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                ELSEIF VertORLand=1 THEN !If Box Vertical
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 90-angle), vBottleRot, z50, tool0\WObj:=wobj0;
                    MoveL RelTool (BoxCoord, 0, 0,(1558-1115) \Rz:= 90-angle), vBottleRot, fine, tool0\WObj:=wobj0;
                    open_gripper;
                    MoveL RelTool (BoxCoord, 0, 0, (1558-1350) \Rz:= 0), vBottleRot, fine, tool0\WObj:=wobj0;
                ENDIF
            ENDIF
        ENDIF
        PathAccLim FALSE, False;
    ENDPROC

    PROC PickAndPlaceBottles()
        moveToAboveTable;
        IF colour = "B" THEN
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            BottleCoord:= [[X,Y,1300],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,fine,tool0\WObj:=wobj0;
            BottleCoord:= [[X,Y,1125],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,fine,tool0\WObj:=wobj0;
            close_gripper;
            BottleCoord:= [[X,Y,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,z50,tool0\WObj:=wobj0;
            n_syrup:= n_syrup + 1;
!            PutBottlesDownSyrup;

            !! Putting Syrup Down
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;            
        ELSE
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            BottleCoord:= [[X,Y,1300],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,fine,tool0\WObj:=wobj0;
            BottleCoord:= [[X,Y,1070],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,fine,tool0\WObj:=wobj0;
            close_gripper;      
            n_coke:= n_coke + 1;
            BottleCoord:= [[X,Y,1588],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveL BottleCoord,v3000,z50,tool0\WObj:=wobj0;
!            PutBottlesDownCoke;

            !! Putting Coke Down
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;
        ENDIF
    ENDPROC
    
    PROC PutBottlesDownSyrup()
        IF n_syrup = 1 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;            
        ELSEIF n_syrup = 2 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;         
        ELSEIF n_syrup = 3 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_syrup = 4 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_syrup = 5 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ELSEIF n_syrup = 6 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ENDIF
    ENDPROC
    
    PROC PutBottlesDownCoke()
        IF n_coke = 1 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;            
        ELSEIF n_coke = 2 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;                 
        ELSEIF n_coke = 3 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;    
        ELSEIF n_coke = 4 THEN
            BoxCoord:= [[Box_X,Box_Y,1558],[-0.000000007,-0.382683401,0.923879546,0],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];        
            PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
            MoveJ BoxCoord,v3000,z100,tool0\WObj:=wobj0;
            JointSixRot;
            PathAccLim FALSE, FALSE;   
        ENDIF
    ENDPROC
    
    PROC CalibratePen()
        moveToHomeSlow;
        WaitTime 2;
        GrabPen;
        SafeWritePos:= [[1219.955689697,0,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        MoveJ SafeWritePos,v50,fine,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveL SafeWritePosRight,v50,fine,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveL SafeWritePos,v50,fine,tool0\WObj:=wobj0;
        calibrateWriteVertical;
    ENDPROC
    
    PROC calibrateWriteVertical()
        SafeWritePos:= [[1219.955689697,0,1340],[0.007732629,0.708242473,0.014666236,0.705774545],[-1,1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        MoveJ SafeWritePos,v50,fine,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveL SafeWritePosTop,v50,fine,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveL SafeWritePosBottom,v50,fine,tool0\WObj:=wobj0;
        moveToHomeSlow;
        PutAwayPen;
    ENDPROC
    
ENDMODULE
