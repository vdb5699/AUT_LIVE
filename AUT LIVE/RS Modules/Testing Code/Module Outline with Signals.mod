MODULE Module1
    !***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: vdb5699
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
!Constant position (Please Do not Change it)
    CONST robtarget Home:=[[1018.612159322,0,1417.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!    CONST robtarget CameraPos:=[[888.647981627,-3.101979233,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!	New Positions Start
    CONST robtarget OldCameraPos:= [[552.8, -553.6, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget NewCamPos:= [[556.4, -557.2, 1306],[0.00164,-0.38341,-0.92358,-0.00113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AboveBoxPos:= [[544.9, 544.7, 1480.4],[0.03464, -0.37528, -0.92615, 0.01464],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
!	New Positions End
    CONST robtarget moveToBoxAbv:=[[0,945,1375],[0,-0.707106781,0.707106781,0],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BoxEdgeAbove:= [[-330,780,1375],[-0.000000048,1,0.00000002,-0.000000013],[1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BoxEdge:= [[-330,780,695],[-0.000000048,1,0.00000002,-0.000000013],[1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
    PERS robtarget ObjAbovePos:= [[552.8, -553.6, 1306.2],[0.02936,-0.38320,-0.92311,-0.01261],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget GrabSyrupPos:=[[1132.61,-90.8711,1135],[0.00436311,0.00610856,-0.999972,-4.1884E-05],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !Coke
    PERS robtarget GrabCokePos:=[[1085.72,154.767,1080],[0.00436311,0.00610856,-0.999972,-4.1884E-05],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget aboveCameraPos:=[[1132.61,-90.8711,1492],[0.00436311,0.00610856,-0.999972,-4.1884E-05],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !Initialise Variable
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
    VAR string signal;
    VAR string colour;
    VAR num num_objs;
    VAR num X;
    VAR num Y;
    VAR num sum;
    VAR num n_syrup;
    VAR num n_coke;
    VAR num syrup_counter;
    VAR num coke_counter;
    VAR bool objects;
    VAR bool syrup;
    VAR bool coke;
    VAR bool posx;
    VAR bool posy;
    
    
    PROC main()
        syrup_counter:=0;
        coke_counter:=0;
        moveToHome;
        moveToCameraPos;
!        tcpip;
!        Waittime 2;
!        moveToAboveBoxPos;
!        open_gripper;
!        
!        WHILE sum<num_objs DO
!            !Move to object
!            receiveData;
!            !Gripper function
!            close_gripper;
!            moveAboveToCameraPos;
!            boxAbvpos;
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
    
!    PROC tcpip()
!        SocketCreate server;
!        SocketBind server,"192.168.0.20", 1025;
!        SocketListen server;
!        SocketAccept server,client;
!        Sending text to Vision Program
!        SocketSend client,\Str :="Executing Computer Vision program";
!        Receiving number of detected object
!        SocketReceive client,\Str :=num_objects;
!        objects:=StrToVal(num_objects,num_objs);
!        Receiving number of syrup bottles
!        SocketReceive client,\Str :=num_syrup;
!        syrup:=StrToVal(num_syrup,n_syrup);
!        Receiving number of coke bottles
!        SocketReceive client,\Str :=num_coke;
!        coke:=StrToVal(num_coke,n_coke);
        
!    ENDPROC
	
    PROC receiveData()
        SocketReceive client,\Str :=colour;
        SocketReceive client,\Str :=x_coordinate;
        posx :=StrToVal(x_coordinate,X);
        SocketReceive client,\Str :=y_coordinate;
        posy := StrToVal(y_coordinate,Y);
        ObjAbovePos:=[[1042.647981627+X,-18.60197923+Y,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        moveToObjAbove;
        aboveCameraPos:=[[1042.647981627+X,-18.60197923+Y,1492],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        IF colour ="B" THEN
             GrabSyrupPos:=[[1042.647981627+X,-18.60197923+Y,1135],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
             grabSyrup;
             syrup_counter:=syrup_counter+1;
        else if colour ="R" 
             grabCokePos:=[[1042.647981627+X,-18.60197923+Y,1080],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
             grabCoke;
             coke_counter:=coke_counter+1;
        ENDIF 
    ENDPROC

    PROC moveToBottleCoord()
        moveToObjAbove;
        aboveCameraPos:=[[1042.647981627+X,-18.60197923+Y,1492],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        
        grabSyrup;
    ENDPROC
    
    PROC receiveSignal()
        !!Use if socket connection is lost
!        SocketCreate server;
!        SocketBind server,"192.168.0.20", 1025;
!        SocketListen server;
!        SocketAccept server,client;

        SocketReceive client,\Str :=signal;
        IF signal = "1" THEN
            !MoveJ...
            moveToHome;
        ELSEIF signal = "2" THEN
            
        ELSEIF signal = "3" THEN
            
        ELSEIF signal = "4" THEN
            
        ELSEIF signal = "5" THEN
            
        ELSEIF signal = "6" THEN
            
        ENDIF
    ENDPROC

    
    !Testing Position 
!    PROC testpos()
!        ObjAbovePos:=[[1042.647981627+104.36,-18.60197923+135.6461,1192.532782595],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        GrabSyrupPos:=[[1042.647981627+104.36,-18.60197923+135.6461,1135],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!        grabCokePos:=[[1042.647981627+8.85,-18.60197923+203.099,1080],[0.004363108,0.006108556,-0.999971823,-0.000041884],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
         MoveJ Home,v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC moveToCameraPos()
        MoveL NewCamPos,v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC moveToAboveBoxPos()
        MoveJ AboveBoxPos, v200, fine, tool0\WObj:=wobj0;
    ENDPROC
	
!	PROC moveFastToCameraPos()
!        MoveL CameraPos,v500,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
!    PROC moveAboveToCameraPos()
!        MoveL aboveCameraPos,v300,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
!    PROC moveGipperToCameraPos()
!        MoveL GripperInitPos,v300,fine,tool0\WObj:=wobj0;
!    ENDPROC
    
    PROC moveToObjAbove()
        MoveL ObjAbovePos,v300,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC grabSyrup()
        MoveL GrabSyrupPos,v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC grabCoke()
        MoveL GrabCokePos,v100,fine,tool0\WObj:=wobj0;
    ENDPROC
    
!    PROC boxAbvpos()
!        MoveL moveToBoxAbv,v300,fine,tool0\WObj:=wobj0;
!    ENDPROC

    PROC moveToTestPos()
        MoveL TestPos,v50,fine,tool0\WObj:=wobj0;
    ENDPROC
    
!    PROC placeBottle2box()
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
!        IF colour = "R" THEN
!            IF coke_counter = 1 THEN
!                MoveL abovecokeMoveToBoxPos1,v200,fine,tool0\WObj:=wobj0;
!                MoveL cokeMoveToBoxPos1,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF coke_counter =2 THEN
!                MoveL abovecokeMoveToBoxPos2,v200,fine,tool0\WObj:=wobj0;
!                MoveL cokeMoveToBoxPos2,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF coke_counter =3 THEN
!                MoveL abovecokeMoveToBoxPos3,v200,fine,tool0\WObj:=wobj0;
!                MoveL cokeMoveToBoxPos3,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF coke_counter =4 THEN
!                MoveL abovecokeMoveToBoxPos4,v200,fine,tool0\WObj:=wobj0;
!                MoveL cokeMoveToBoxPos4,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF coke_counter =5 THEN
!                MoveL abovecokeMoveToBoxPos5,v200,fine,tool0\WObj:=wobj0;
!                MoveL cokeMoveToBoxPos5,v100,fine,tool0\WObj:=wobj0;
!            ELSEIF coke_counter =6 THEN
!                MoveL abovecokeMoveToBoxPos6,v200,fine,tool0\WObj:=wobj0;
!                MoveL cokeMoveToBoxPos6,v100,fine,tool0\WObj:=wobj0;
!            ENDIF
!        ENDIF
            
!    ENDPROC
!    PROC open_gripper()        
!        SetDO D_652_10_OUT0, 0;
!        Waittime 2;
!        SetDO D_652_10_OUT1, 1;
!        Waittime 1;
        
!     ENDPROC

!    PROC close_gripper()       
!        SetDO D_652_10_OUT0, 1;
!        Waittime 2;
!        SetDO D_652_10_OUT1, 0;
!        Waittime 1;
!    ENDPROC
ENDMODULE
