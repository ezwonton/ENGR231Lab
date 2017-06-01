function [r] = rot(ang_deg)
r = [cosd(ang_deg) -sind(ang_deg) 0; sind(ang_deg) cosd(ang_deg) 0; 0 0 1];
end

