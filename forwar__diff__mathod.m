Fun = @(x) 2.*(x^3)-7.*(x^2)+5.*(x)+1; 
dFun = @(x) 6.*(x^2)-14.*(x)+5;
x=linspace(0,4,101);
F=Fun(x);
h=x(2)-x(1);

xCentral=x(2:end-1);
dFCenteral=(F(3:end)-F(1:end-2))/(2*h);

xForward=x(1:end-1);
dFForward=(F(2:end)-F(1:end-1))/h;

xBackward=x(2:end);
dFBackward=(F(2:end)-F(1:end-1))/h;
plot(x,dFun(x));
hold on
plot(xCentral,dFCenteral,'r')
plot(xForward,dFForward,'k');
plot(xBackward,dFBackward,'g');
legend('Analytic','Central','Forward','Backward')