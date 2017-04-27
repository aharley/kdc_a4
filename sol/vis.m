states = importdata('../part0/markers');
%states = importdata('../part0/markersn');
%states = importdata('../part1/p1n00');
%states = importdata('../part1/p1n01');
%states = importdata('../part1/p1n09');

nFrames = size(states,1);
nMarkers = size(states,2)/3;

[x,y,z] = parse_xyz(states);

subsamp = 10;
for f=1:subsamp:nFrames
    prepFig(x,y,z);
    state = states(f,:);
    plotState(state);
    pause(0.01);
end



  
