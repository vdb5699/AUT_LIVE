%% Letter A Coords
Y = [0 -50 -22.5 22.5 50];
Z = [1417.5 1217.5 1327 1327  1217.5];
X = linspace (0, 10, 100);
plot(Y,Z,'-o')


%% Table Coords
TopRight = [1054.3 809.6413];
BottomRight = [456.795088175,275.775662061];
BottomLeft = [-324.5579,1156.1];
BottomDiff = (BottomRight(:) + BottomLeft(:)).'/2;
TopDiff = (TopRight(:) + BottomRight(:)).'/2;
Centre = [223.0963,844.6431];
figure;
plot([TopRight(1) TopDiff(1) BottomRight(1) BottomLeft(1) BottomDiff(1) ] ...
    , [TopRight(2) TopDiff(2) BottomRight(2) BottomLeft(2) BottomDiff(2) ], '-o')
hold on;
plot(Centre(1), Centre(2), 'o')
% plot(BottomLeft,'-o')
% hold on;
% plot(BottomRight,'-o')