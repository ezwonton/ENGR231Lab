x = 0:0.1:10;
f = ( (2 * (x.^2)) / sin(x)) * ((x-1).^2);

figure
plot(f,x)
xlabel('x label command')
title('title command')
