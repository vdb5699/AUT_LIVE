%%
Centroid = [100,200];
% tcp = tcpclient("192.168.125.1", 1025);
% str = char(65)
% % UnicodeVal = double(str);
% Letter = "wqe";
currentCoords = [1336,0,1300]
startPos = currentCoords; % Where the robot will start writing from
% for i = 65:90
Letter= "A"

if Letter == "A" % 5 Points all linear
    
    startPos(3) = startPos(3) + Centroid(2);
    L_Corner = [currentCoords(1), currentCoords(2) - Centroid(1), currentCoords(3)-Centroid(2)];
    currentCoords + L_Corner
    R_Corner = [currentCoords(1), currentCoords(2) + Centroid(1), currentCoords(3)-Centroid(2)];
    currentCoords + R_Corner
    L_Mid = [currentCoords(1), currentCoords(2) -  Centroid(1)*0.6, currentCoords(3)-(2*Centroid(2)*0.6-Centroid(2))];
    R_Mid = [currentCoords(1), currentCoords(2) + Centroid(1)*0.6, currentCoords(3)-(2*Centroid(2)*0.6-Centroid(2))];
%     tcp.write(string(startPos(2), startPos(3)))
%     test = tcp.read();
%     if test == "next"
%         tcp.write(string(L_Corner(2), L_Corner(3)));
%     end
%     test = tcp.read();
%     if test == "next"
%         tcp.write(string(startPos(2), startPos(3)));
%     end
%     test = tcp.read()
%     if test == "next"
%         tcp.write(string(R_Corner(2), R_Corner(3)));
%     end
    figure;
    plot(currentCoords(2), currentCoords(3),"x")
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(L_Corner(2), L_Corner(3), '-o')
    hold on;
    plot(R_Corner(2), R_Corner(3), '-o')
    hold on;
    plot(L_Mid(2), L_Mid(3), '-o')
    hold on;
    plot(R_Mid(2), R_Mid(3), '-o')
end

if Letter == "B" % 6 points 2 circular movements
    startPos = [currentCoords(1),currentCoords(2)-(Centroid(1)*0.4), currentCoords(3)+Centroid(2)]
    L_Bottom = [currentCoords(1), currentCoords(2) - (Centroid(1)*.4), currentCoords(3)-Centroid(2)]
    L_Mid = [currentCoords(1), currentCoords(2) - (Centroid(1)*0.4), currentCoords(3)]
%     Mid = [currentCoords(1), currentCoords(2) - (Centroid(1)*0.25), currentCoords(3)]
    Mid = currentCoords;
    Bott_Mid = [Mid(1), Mid(2), currentCoords(3)-Centroid(2)]
    Top_Mid = [Mid(1), Mid(2), currentCoords(3)+Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(L_Bottom(2), L_Bottom(3), '-o')
    hold on;
%     plot(R_Corner(2), R_Corner(3), '-o')
%     hold on;
    plot(L_Mid(2), L_Mid(3), '-o')
    hold on;
    plot(Mid(2), Mid(3), '-o')
    plot(Top_Mid(2), Top_Mid(3), '-o')
    hold on;
    plot(Bott_Mid(2), Bott_Mid(3), '-o')
    hold on;
end

if Letter == "C" % 4 points all circular movements
    startPos = [currentCoords(1),currentCoords(2), currentCoords(3)+Centroid(2)]
    Bottom = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    Top_Arc = [currentCoords(1),currentCoords(2)+(Centroid(2)*0.1), currentCoords(3)+(Centroid(2)*0.9)]
    Bottom_Arc = [currentCoords(1), currentCoords(2)+(Centroid(2)*0.1), currentCoords(3)-(Centroid(2)*0.9)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(Bottom(2), Bottom(3), '-o')
    hold on;
    plot(Top_Arc(2), Top_Arc(3), '-o')
    hold on;
    plot(Bottom_Arc(2), Bottom_Arc(3), '-o')
end

if Letter == "D" % 2 points 1 circular movement
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    Bottom = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(Bottom(2), Bottom(3), '-o')
end

if Letter == "E" % 6 points All Linear movement
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    L_Mid = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)]
    R_Mid = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(L_Mid(2), L_Mid(3), '-o')
    hold on;
    plot(R_Mid(2), R_Mid(3), '-o')
end

if Letter == "F" % 5 points All Linear movement
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    L_Mid = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)]
    R_Mid = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(L_Mid(2), L_Mid(3), '-o')
    hold on;
    plot(R_Mid(2), R_Mid(3), '-o')
end

if Letter == "G" % 5 points All Linear movement
    startPos = [currentCoords(1),currentCoords(2), currentCoords(3)+Centroid(2)]
    Bottom = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    R_Mid = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    Top_Arc = [currentCoords(1),currentCoords(2)+(Centroid(2)*0.1), currentCoords(3)+(Centroid(2)*0.9)]
    Mid = currentCoords;
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(Bottom(2), Bottom(3), '-o')
    hold on;
    plot(R_Mid(2), R_Mid(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(Top_Arc(2), Top_Arc(3), '-o')
end

if Letter == "H" % 5 points All Linear movement
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    L_Mid = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)]
    R_Mid = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(L_Mid(2), L_Mid(3), '-o')
    hold on;
    plot(R_Mid(2), R_Mid(3), '-o')
end

if Letter == "I" % 5 points All Linear movement
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    Top_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)+Centroid(2)]
    Bott_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(Top_Mid(2), Top_Mid(3), '-o')
    hold on;
    plot(Bott_Mid(2), Bott_Mid(3), '-o')
end

if Letter == "J" % 3 points 1 Circular movement
    startPos = [currentCoords(1), currentCoords(2), currentCoords(3)+Centroid(2)]
    Bott_Arc_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)-(Centroid(2)*0.7)]
    Bott_Arc_L = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-(Centroid(2)*0.7)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(Bott_Arc_Mid(2), Bott_Arc_Mid(3), '-o')
    hold on;
    plot(Bott_Arc_L(2), Bott_Arc_L(3), '-o')
end

if Letter == "K" % 5 points All Linear movement
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    L_Mid = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(L_Mid(2), L_Mid(3), '-o')
end

if Letter == "L" % 3 points 1 Circular movement
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
end

if Letter == "M" % 5 points All Linear movement
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    Mid = currentCoords
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(Mid(2), Mid(3), '-o')
end

if Letter == "N" % 5 points All Linear movement - Same as points as M
    % Start at Bottom Left Corner
    startPos = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    L_Top_Corner = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    Mid = currentCoords
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(Mid(2), Mid(3), '-o')
    hold on;
    plot(L_Top_Corner(2), L_Top_Corner(3), '-o')
end

if Letter == "O" % 4 points all circular movements
    startPos = [currentCoords(1),currentCoords(2), currentCoords(3)+Centroid(2)]
    Bottom = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(Bottom(2), Bottom(3), '-o')
end

if Letter == "P" % 3 points 1 Circular movement
    % Start at bottom
    startPos = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    Top = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Mid = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(Top(2), Top(3), '-o')
    hold on;
    plot(L_Mid(2), L_Mid(3), '-o')
end

if Letter == "Q" % 4 points all circular movements
    startPos = [currentCoords(1),currentCoords(2), currentCoords(3)+Centroid(2)]
    Bottom = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    Mid = currentCoords;
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(Bottom(2), Bottom(3), '-o')
    hold on;
    plot(Mid(2), Mid(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
end

if Letter == "R" % 3 points 1 Circular movement
    % Start at bottom
    startPos = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    Top = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Mid = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)]
    Top_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)+Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    Mid = currentCoords;
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(Top(2), Top(3), '-o')
    hold on;
    plot(L_Mid(2), L_Mid(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(Top_Mid(2), Top_Mid(3), '-o')
end

if Letter == "S" % 5 points 2 Circular movement
    % Start at top right
    startPos = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    Top_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)+Centroid(2)]
    Bott_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    Mid = currentCoords;
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(Mid(2), Mid(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(Top_Mid(2), Top_Mid(3), '-o')
    hold on;
    plot(Bott_Mid(2), Bott_Mid(3), '-o')
end

if Letter == "T" % 4 points All Linear movement
    % Start at top left
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    Top_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)+Centroid(2)]
    Bott_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(Top_Mid(2), Top_Mid(3), '-o')
    hold on;
    plot(Bott_Mid(2), Bott_Mid(3), '-o')
end

if Letter == "U" % 5 points 1 or 2 Linear movement
    % Start at top left corner
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    Bott_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    L_Mid = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)]
    R_Mid = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(Bott_Mid(2), Bott_Mid(3), '-o')
    hold on;
    plot(L_Mid(2), L_Mid(3), '-o')
    hold on;
    plot(R_Mid(2), R_Mid(3), '-o')
end

if Letter == "V" % 5 points All Linear movement
    % Start at top left corner
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    Bott_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(Bott_Mid(2), Bott_Mid(3), '-o')
end

if Letter == "W" % 5 points All Linear movement
    % Start at top left corner
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott = [currentCoords(1), currentCoords(2)-(Centroid(2)/2), currentCoords(3)-Centroid(2)]
    R_Bott = [currentCoords(1), currentCoords(2)+(Centroid(2)/2), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    Mid = currentCoords;
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(Mid(2), Mid(3), '-o')
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(L_Bott(2), L_Bott(3), '-o')
    hold on;
    plot(R_Bott(2), R_Bott(3), '-o')
end

if Letter == "X" % 5 points All Linear movement
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
end

if Letter == "Y" % 5 points All Linear movement
    % Start as Left Top Corner
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    L_Top_Corner = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    Mid = currentCoords;
    Bott_Mid = [currentCoords(1), currentCoords(2), currentCoords(3)-Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
    hold on;
    plot(L_Top_Corner(2), L_Top_Corner(3), '-o')
    hold on;
    plot(Mid(2), Mid(3), '-o')
    hold on;
    plot(Bott_Mid(2), Bott_Mid(3), '-o')
end

if Letter == "Z" % 4 points All Linear movement
    % Start at top left corner
    startPos = [currentCoords(1),currentCoords(2)-Centroid(1), currentCoords(3)+Centroid(2)]
    L_Bott_Corner = [currentCoords(1), currentCoords(2)-Centroid(1), currentCoords(3)-Centroid(2)]
    R_Bott_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    R_Top_Corner = [currentCoords(1), currentCoords(2)+Centroid(1), currentCoords(3)+Centroid(2)]
    figure;
    plot(currentCoords(2), currentCoords(3), '-x');
    hold on;
    plot(startPos(2), startPos(3), '-o')
    hold on;
    plot(R_Bott_Corner(2), R_Bott_Corner(3), '-o')
    hold on;
    plot(L_Bott_Corner(2), L_Bott_Corner(3), '-o')
    hold on;
    plot(R_Top_Corner(2), R_Top_Corner(3), '-o')
end

% end