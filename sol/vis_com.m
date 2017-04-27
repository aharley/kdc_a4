states = importdata('../part0/markers');
%states = importdata('../part0/markersn');
%states = importdata('../part1/p1n00');
%states = importdata('../part1/p1n01');
%states = importdata('../part1/p1n09');

nFrames = size(states,1);
nMarkers = size(states,2)/3;

[allx,ally,allz] = parse_xyz(states);

subsamp = 10;
for f=1:subsamp:nFrames
    prepFig(allx,ally,allz);
    state = states(f,:);
    
    plotState(state);

    % this only works for the zero quaternion, which makes sense
    coms = state2coms(state);
    %plotState(coms,'g');

    % we can get a mean of those com estimates, which helps a bit 
    [cx,cy,cz] = parse_xyz(coms);
    cx = mean(cx);
    cy = mean(cy);
    cz = mean(cz);
    plot3(cx,cy,cz,'b*','linewidth',3);
    
    pause(0.01);
end



  
