%G�n�ration de la workboxe
B = csvread('Surface_BWB.csv',1,0); %lecture des points de la geometrie BWB sous excel
figure('Name', 'Trajectoire')
POINTS=[B(:,24), B(:,25), B(:,26)];
pcshow(POINTS,[0 0 0],'MarkerSize',10)
axis equal
title('Trajectoires 3D');
xlabel('X (m)')
ylabel('Y (m)')
zlabel('Z (m)')

%G�n�ration d'une vue 2D des empreintes 
figure('Name', 'Empreintes')
k=boundary(B(:,25), B(:,26)); %r�utilise la fonction csvread et permet de tracer le contour de la surface
yb=B(:,25);
zb=B(:,26);
plot(yb(k), zb(k))
axis equal
title('Empreintes des trajectoires dans le plan plac� en X_plan');
xlabel('Y (m)')
ylabel('Z (m)')