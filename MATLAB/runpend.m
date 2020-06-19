% runpendulum

theta0 = 3;
omega0 = 0;

last   = 30;

[t,x] = ode45('pendulum',0,last,[theta0,omega0]);
plot(t,x(:,1),'-',t,x(:,2),':');
