function [] = plotState(state)
% the state is a 1 x 3*nMarkers vector
nMarkers = size(state,2)/3;
% it has the xyz position of every marker
[x,y,z] = parse_xyz(state);
plot3(x,y,z,'m*','linewidth',2);

% here's a slower version of the same
    %for m=1:nMarkers
    %    xyz = state((m-1)*3+1:m*3);
    %    x=xyz(1);
    %    y=xyz(2);
    %    z=xyz(3);
    %    plot3(x,y,z,'r*','linewidth',5);
    %    %pause(0.1);
    %end

