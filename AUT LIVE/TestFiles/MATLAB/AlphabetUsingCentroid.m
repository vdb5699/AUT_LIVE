%%
Centroid = [100,150]
Letter = "B"
currentCoords = [1030, 0, 1460]

if Letter == "A"
    startPos = currentCoords;
    startPos(3) = startPos(3) + Centroid(2)
    L_Corner = [startPos(1), currentCoords(2) - Centroid(1), currentCoords(3)-Centroid(2)]
    R_Corner = [startPos(1), currentCoords(2) + Centroid(1), currentCoords(3)-Centroid(2)]
    L_Mid = [startPos(1), currentCoords(2) -  Centroid(1)*0.7, currentCoords(3)-(2*Centroid(2)*0.7-Centroid(2))]
    R_Mid = [startPos(1), currentCoords(2) + Centroid(1)*0.7, currentCoords(3)-(2*Centroid(2)*0.7-Centroid(2))]
end

if Letter == "B"
    startPos = [currentCoords(1),currentCoords(2)+Centroid(1), currentCoords(3)-Centroid(2)]
    L_Corner = [startPos(1), currentCoords(2) - Centroid(1), currentCoords(3)-Centroid(2)]
    R_Corner = [startPos(1), currentCoords(2) + Centroid(1), currentCoords(3)-Centroid(2)]
    L_Mid = [startPos(1), currentCoords(2) -  Centroid(1)*0.7, currentCoords(3)-(2*Centroid(2)*0.7-Centroid(2))]
    R_Mid = [startPos(1), currentCoords(2) + Centroid(1)*0.7, currentCoords(3)-(2*Centroid(2)*0.7-Centroid(2))]
end