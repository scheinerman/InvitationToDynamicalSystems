%preditor/prey script
[t,y] = ode45('predpray',0,200,[100;25]); 
plot(t,y(:,1),t,y(:,2),':');
pause;
plot(y(:,1),y(:,2))
