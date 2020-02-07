
hold on;
x=[1:10:100];
y=[0:0.1:1];
theo=3.1416;
prompt=('Enter trialnumber:');
n= input(prompt);
%i=1;
array=zeros(1,n);

hit=0;
miss=0;
for i=1:n
    x1=rand();
    y1=rand();
    
            if ((x1.^2)+(y1.^2)<=1)
                hit=hit+1; 
              %  plot(x1,y1,'g.');
            end
            i+1;
            pie=(hit*4)/n;
            array(i)=abs(theo - pie);
            
end

xlabel('trailNumber');
ylabel('errors');

y=array(x);
plot(x,y,'b');







    

