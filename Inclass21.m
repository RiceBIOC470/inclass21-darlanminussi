%In class 21

%GB comments
1 90 More careful discussion regarding how parameters are affecting system behavior should be provided
2 90 More careful discussion regarding how parameters are affecting system behavior should be provided
overall 90


% 1. Consider the system we discussed in class for a gene which is produced
% and degraded: dx/dt = k - d*x. Now consider that this gene turns on a
% second gene y, which also degrades so that its equation is 
% dy/dt = k2*x - d2*y. Choose some values for k,d,k2, and d2 and run a
% numerical simulation of this system for the case where both genes start
% out off ( x(0) = 0 and y(0) = 0). Plot the value of x and y in time and 
% explain your results. 

k=10;
k2 = 10;
d2 = 10;
d=10;
interval= [0 100];
nstep = 100;
dt= (interval(2)-interval(1))/nstep;

solx(1) = 0;
soly(1) = 0;
for ii = 2:nstep
    solx(ii) = solx(ii-1) + rhs(solx(ii-1),k,d)*dt;
    soly(ii) = soly(ii-1) + rhs2(solx(ii-1),soly(ii-1),k,d)*dt;
end

tt=linspace(interval(1),interval(2),nstep);
hold on;
plot(tt,solx,'g.-');
plot(tt,soly,'r.-');
hold off;

% since gene2 is dependent on gene 1 it decreases before gene1

% 2. Consider the following model: 
% dx/dt = y
% dy/dt = (1-x^2)*y - x
% write code that simulates this system for several different starting
% values of x and y. Plot the results and comment on them. 

figure;
hold on;

colors = ['g.-', 'r.-', 'y.-','m.-','c.-','b.-','k.-'];

for x = 1:7
 for y = 1:7
interval= [0 100];
nstep = 100;
dt= (interval(2)-interval(1))/nstep;

solx(1) = 0;
soly(1) = 0;
for ii = 2:nstep
    solx(ii) = solx(ii-1) + rhsp2(y)*dt;
    soly(ii) = soly(ii-1) + rhsp22(x,y)*dt;
end

tt=linspace(interval(1),interval(2),nstep);

plot(tt,solx,'b-');
plot(tt,soly,colors(x));

 end
end
hold off;

% as the values of x and y increases the equations values decrease


