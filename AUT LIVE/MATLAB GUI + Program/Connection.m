classdef Connection
    properties
        IP
        port
    end

    methods
        function obj = Connection(IP, port)
            obj.IP = IP;
            obj.port = port;
        end

        function obj = changeConnection(newIP, newPort)
            obj.IP = newIP;
            obj.port = newPort;
            return
        end

        function move2Cam(obj)
            tcp = obj.connectToTcp();
            tcp.write('1');
            tcp.flush();
            flag = 0;
            while flag == 0
                str = read(tcp);
                if char(str) == "CamPos"
                    break
                end
                pause(0.5);
                count = count + 1;
                if count > 15
                    ME = MException("receivingDataError", "Error receiving RobotStudio.");
                    throw(ME);
                end
            end
            clear tcp
        end

        function move2Bot(obj, capList)
            tcp = obj.connectToTcp();
            tcp.write("2");
            tcp.flush();

            for h = 1:height(capList)
                if capList(h).colour == "Brown"
                    str = "B," + num2str(capList(h).x) + "," + num2str(capList(h).y); 
                else
                    str = "R," + num2str(capList(h).x) + "," + num2str(capList(h).y); 
                end
                tcp.write(str);
                tcp.flush();
                flag = 0;
                while flag == 0
                    stri = read(tcp);
                    if char(stri) == "SendNext"
                        flag = 1;
                    end
                    pause(0.5);
                end
            end
            clear tcp
        end
        
    end

    methods (Access = private)
        function tcp = connectToTcp(obj)
            try
                tcp = tcpclient(obj.IP, obj.port);
            catch
                f = warndlg("Something went wrong trying to connect to tcp");
                clear tcp
                tcp = 0;
                return
            end
            tcp.wrote('Connected');
            tcp.flush;
            flag = 0;
            while flag == 0
                str = read(app.tcpConnection);
                if char(str) == "RSConnected"
                    break
                end
                pause(0.5);
            end
            return
        end
    end
end
