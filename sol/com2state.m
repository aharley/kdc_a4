function state = com2state(cx,cy,cz)

offset=[-1.5   -3.0   -4.5;
        -1.5   -3.0    1.5;
        -1.5    1.0   -4.5;
        -1.5    1.0    1.5;
        0.5   -3.0   -4.5;
        0.5   -3.0    1.5;
        0.5    1.0   -4.5;
        0.5    1.0    1.5;];

offset(:,1) = offset(:,1)+cx;
offset(:,2) = offset(:,2)+cy;
offset(:,3) = offset(:,3)+cz;
offset = offset';
state = offset(:)';
