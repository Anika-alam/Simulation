%x = [0 -1 0 1 0]; y = [-1 0 1 0 -1]; plot(x,y,'r', 'LineWidth',3);

%x = [-1 0 1 0 -1]; y = [0 1 0 -1 0]; plot(x,y,'r', 'LineWidth',3);
%grid on;
%hold on;
x1=1;
y1=0;
plot([1 0],[0 -1])
hold on;
x2=0;
y2=-1;
plot([0 -1],[-1 0])
hold on;
x3=-1;
y3=0;
plot([-1 0],[0 1])
hold on;
x4=0;
y4=1;
plot([0 1],[1 0])
hold on;
axis([-2 2 -2 2]);
areaofRect = abs((x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2))/2)+abs((x1*(y4-y3)+x4*(y3-y1)+x3*(y1-y4))/2);
prompt=('trial ');
n=input(prompt);
hit=0;
for i=1:n
    x_rand=rand()*(x1-x3)+x3;
    y_rand=rand()*(y4-y2)+y2;
    
    area_of_point=abs([x_rand*(y1-y2)+x1*(y2-y_rand)+x2*(y_rand-y1)]/2)+ abs([x_rand*(y2-y3)+x2*(y3-y_rand)+x3*(y_rand-y2)]/2)+  abs([x_rand*(y3-y4)+x3*(y4-y_rand)+x4*(y_rand-y3)]/2)+  abs([x_rand*(y1-y4)+x1*(y4-y_rand)+x4*(y_rand-y1)]/2); 
    
    if(area_of_point<=areaofRect)
        hit=hit+1;
        plot(x_rand,y_rand,'g*');
        hold on;
    else
        plot(x_rand,y_rand,'r*');
        hold on;
    end
end
area_of_rect=(x1-x3)+(y2-y4);
result=(hit/n)*areaofRect;
              
               
                
