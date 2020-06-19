axis('square')
[t,y] = ode45('cycexample', 0,50,[start,0]);
plot(y(:,1),y(:,2));
