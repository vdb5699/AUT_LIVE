MODULE MainModule
	!Constant positions (Please Do not Change it)
    
    !-----------Test Positions - can be deleted once Postions Finalised-----------!
    !PERS robtarget TestGripperToCam:= [[556.4+38.5373+114.3314,-557.2-188.4440+55.1777, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !PERS robtarget TestGripperToBottle:= [[556.4+30.4056-64.7264, -557.2-193.0402-157.4380, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToCam:= [[599.0562,-741.7018,  1156.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToCamLow:= [[596.6697, -743.5580, 1156.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToSyrupBottleAbove:= [[575.716,-702.92, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToSyrupBottle:= [[575.716,-702.92, 1120.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToCokeBottleAbove:= [[34.6447,-823.004,1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TestGripperToCokeBottle:= [[34.6447,-823.004,1070],[0.00163976,-0.383409,-0.923576,-0.00114218],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Home:=[[1018.612159322,0,1417.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget CameraPos:=[[888.647981627,-3.101979233,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget CameraPos:=[[595.6,-367-628.37,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !-----------New Positions START-----------!
    CONST robtarget NewGripperPosManual:= [[369.6, -766.5, 1214.4],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldOldCameraPos:= [[552.8, -553.6, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget OldCamPos:= [[556.4, -557.2, 1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget NewCamPos:= [[326.9438,-581.9982,1300],[0.00164,-0.38341,-0.92358,-0.00114],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxPos:= [[366.1, 366, 1588.4],[0.00192, -0.38294, 0.92377, 0.00293],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget TemporaryCam:= [[542.647,-499.236,1300],[0.00163939,-0.383406,-0.923578,-0.00113954],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    ! AboveBottleCoord robtarget x,y should change based on the bottle location
    PERS robtarget AboveBottleCoord:= [[575.716,-702.92, 1588.4],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveTable:= [[550.3, -377.8, 1588.4],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxCoordOne:= [[473.5,410,1408.5],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BoxCoordOne:= [[473.5,410,1101],[0.00197,-0.38293,0.92377,0.00290],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];                         
    !-----------New Positions END------------!
    
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
    
    PROC main()
		AccSet 40,30;       ! Max Acceleration set to 20mm/s^2 and ramping is 20
!        syrup_counter:=0;
!        coke_counter:=0;
!        moveToHome;         ! Program always starts from Home Pos in case it was left in random pos
!        receiveSignal;      ! Where robot will receive signals to do certain tasks
!        moveToCameraPos;  
!!!!!        testpos;
!!!!!        Waittime 2;
!!!!!        moveToAboveBoxPos;
!!!!!        open_gripper;
!        tcpipTempCam;
!        tcpipBottle;
!        moveToCameraPos;
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
!            moveFastToCameraPos;
!            SocketSend client,\Str :="Y";
!            sum:=sum+1;
!        ENDWHILE
!        stackBox;
!        moveToHome;
!        SocketClose server;
!        SocketClose client;
    ENDPROC
    
    ! The receiveSignal function is where the GUI and RS 
    ! are connected via TCP. This function calls the 
    ! signalInstruction method
    PROC receiveSignal()
        SocketClose server;
        SocketClose client;
        SocketCreate server;
        SocketBind server,"192.168.0.20", 1025;
        SocketListen server;
        SocketAccept server,client, \Time:=WAIT_MAX;
        
        SocketReceive client,\Str :=signal, \Time:=WAIT_MAX;
        SocketSend client,\Str :="RSConnected";
        SocketReceive client,\Str :=signal, \Time:=WAIT_MAX;
        
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
                    x_coordinate := StrPart(data,found1+1,found2-found1-1);
                    y_coordinate := StrPart(data,found2+1,StrLen(data)-found2);
                    posx :=StrToVal(x_coordinate,X);
                    posy := StrToVal(y_coordinate,Y);
!                    TestPos:= [[552.8+X, -553.6+Y, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!                    moveToTestPos;
                    SocketSend client,\Str :="SendNext";
                    SocketReceive client,\Str :=data, \Time:=WAIT_MAX;
                ENDWHILE
                receiveSignal;                
            ENDIF
        ENDWHILE
        moveToHome;
    ENDPROC
    
    PROC tcpipTempCam()
        SocketCreate server;
        SocketBind server,"192.168.0.20", 1025;
        SocketListen server;
        SocketAccept server,client, \Time:=WAIT_MAX;
        SocketReceive client,\Str :=tcpX, \Time:=WAIT_MAX;
        objects:=StrToVal(tcpX,tcpXValue);
        SocketReceive client,\Str :=tcpY, \Time:=WAIT_MAX;
        objects:=StrToVal(tcpY,tcpYValue);
        TemporaryCam:= [[tcpXValue,tcpYValue,1300],[0.001639386,-0.3834062,-0.9235777,-0.001139545],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        MoveL TemporaryCam,v200,fine,tool0\WObj:=wobj0;
        PathAccLim FALSE,FALSE;
    ENDPROC
    
    PROC tcpipBottle()       
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
        MoveL TestGripperToCokeBottle,v100,fine,tool0\WObj:=wobj0;
        close_gripper;
        moveToAboveBottleCoord;
        moveToAboveTable;
        moveToAboveBoxPos;
        WaitTime 2;
        moveToAboveTable;
		PathAccLim FALSE, FALSE;
        moveToAboveBottleCoord;
        MoveL TestGripperToCokeBottle,v100,fine,tool0\WObj:=wobj0;
        open_gripper;
    ENDPROC
    
    PROC moveSyrup()
		TestGripperToSyrupBottleAbove:= [[tcpXValue,tcpYValue,1306.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        TestGripperToSyrupBottle:= [[tcpXValue,tcpYValue,1120.2],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
		
		PathAccLim TRUE\AccMax := 2, TRUE, \DecelMax := 2;
        MoveL TestGripperToSyrupBottleAbove,v200,fine,tool0\WObj:=wobj0;
        WaitTime 1;
        MoveL TestGripperToSyrupBottle,v100,fine,tool0\WObj:=wobj0;
        close_gripper;
        moveToAboveBottleCoord;
        moveToAboveTable;
        moveToAboveBoxPos;
!        WaitTime 2;
!        moveToAboveTable;
!		PathAccLim FALSE, FALSE;
!        moveToAboveBottleCoord;
!        MoveL TestGripperToSyrupBottle,v200,fine,tool0\WObj:=wobj0;
!        open_gripper;
    ENDPROC
!    PROC receiveData()
!        SocketReceive client,\Str :=colour;
!        SocketReceive client,\Str :=x_coordinate;
!        posx :=StrToVal(x_coordinate,X);
!        SocketReceive client,\Str :=y_coordinate;
!        posy := StrToVal(y_coordinate,Y);
!        ObjAbovePos:=[[1042.647981627+X,-18.60197923+Y,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        moveToObjAbove;
!        aboveCameraPos:=[[1042.647981627+X,-18.60197923+Y,1492],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        IF colour ="B" THEN
!             GrabSyrupPos:=[[1042.647981627+X,-18.60197923+Y,1135],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!             grabSyrup;
!             syrup_counter:=syrup_counter+1;
!        ELSE IF colour ="R" 
!             GrabCokePos:=[[1042.647981627+X,-18.60197923+Y,1080],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!             grabCoke;
!             coke_counter:=coke_counter+1;
!        ENDIF 
       
!    ENDPROC
    

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
         MoveJ Home,v200,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC moveToCameraPos()
        MoveJ NewCamPos,v200,fine,tool0\WObj:=wobj0;
    ENDPROC
    
!    PROC moveAboveToCameraPos()
!        MoveL aboveCameraPos,v300,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
    PROC moveGipperToCameraPos()
        MoveL GripperInitPos,v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC moveToAboveBottleCoord()
        MoveJ AboveBottleCoord,v200,z20,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC moveToAboveTable()
        MoveJ AboveTable,v200,z10,tool0\WObj:=wobj0;
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
        MoveJ AboveBoxPos, v200, fine, tool0\WObj:=wobj0;
    ENDPROC
    
!    PROC moveToTestPos()
!        MoveL TestPos,v50,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
    PROC placeBottle2box()
        IF colour = "B" THEN
            IF syrup_counter = 1 THEN
                MoveL abovesryupMoveToBoxPos1,v200,fine,tool0\WObj:=wobj0;
                MoveL sryupMoveToBoxPos1,v100,fine,tool0\WObj:=wobj0;
            ELSEIF syrup_counter =2 THEN
                MoveL abovesryupMoveToBoxPos2,v200,fine,tool0\WObj:=wobj0;
                MoveL sryupMoveToBoxPos2,v100,fine,tool0\WObj:=wobj0;
            ELSEIF syrup_counter =3 THEN
                MoveL abovesryupMoveToBoxPos3,v200,fine,tool0\WObj:=wobj0;
                MoveL sryupMoveToBoxPos3,v100,fine,tool0\WObj:=wobj0;
            ELSEIF syrup_counter =4 THEN
                MoveL abovesryupMoveToBoxPos4,v200,fine,tool0\WObj:=wobj0;
                MoveL sryupMoveToBoxPos4,v100,fine,tool0\WObj:=wobj0;
            ELSEIF syrup_counter =5 THEN
                MoveL abovesryupMoveToBoxPos5,v200,fine,tool0\WObj:=wobj0;
                MoveL sryupMoveToBoxPos5,v100,fine,tool0\WObj:=wobj0;
            ELSEIF syrup_counter =6 THEN
                MoveL abovesryupMoveToBoxPos6,v200,fine,tool0\WObj:=wobj0;
                MoveL sryupMoveToBoxPos6,v100,fine,tool0\WObj:=wobj0;
            ENDIF
        ENDIF
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
