    for m=1:nMarkers
        col = 1;
        for c=1:nMarkers*3
            
            num = markers(f,c);
            
        % fprintf('f %d; m %d\n', f, m);
        %markers_x = 
        %[x,y,z] = 
    end


    % we found the COM with a fancy technique in hw3, but here
    % let's just assume it's coincident with the centroid.
    % i think the homework text implies this anyway.
    [x,y,z] = parse_xyz(state);
    cx = mean(x);
    cy = mean(y);
    cz = mean(z);
    state_e = com2state(cx,cy,cz);

    plotState(state_e,'g');
    plot3(cx,cy,cz,'bo','linewidth',4);
    