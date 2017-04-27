function [] = prepFig(x,y,z)
minX = min(x(:));
maxX = max(x(:));
minY = min(y(:));
maxY = max(y(:));
minZ = min(z(:));
maxZ = max(z(:));

clf;
figure(1);
hold on;
grid on;
rotate3d on;
%axis([-20,20,-5,5]);n
%axis([-20,20,-20,20]);
%axis([-10,10,-20,-5,-5,5])
axis equal;
%axis([minX,maxX,minY,maxY,minZ,maxZ]);
axis([minX-2,maxX+2,minY-2,maxY+2,minZ-2,maxZ+2]);
view(3);