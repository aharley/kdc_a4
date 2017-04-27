function coms = state2coms(state)

offset=[-1.5   -3.0   -4.5;
        -1.5   -3.0    1.5;
        -1.5    1.0   -4.5;
        -1.5    1.0    1.5;
        0.5   -3.0   -4.5;
        0.5   -3.0    1.5;
        0.5    1.0   -4.5;
        0.5    1.0    1.5;];
offset = offset';
coms = state-offset(:)';
%[x,y,z] = parse_xyz(com)
