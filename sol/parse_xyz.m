function [x,y,z] = parse_xyz(states)
x = states(:,1:3:end);
y = states(:,2:3:end);
z = states(:,3:3:end);
