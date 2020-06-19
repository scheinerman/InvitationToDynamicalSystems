% run wierd
tstart = 0;
tstop  = 50;
y0 = [2;0];


[t,y] = ode45('weird',tstart,tstop,y0);

plot(y(:,1),y(:,2));
