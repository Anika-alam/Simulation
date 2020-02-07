prompt=('Enter trialnumber:');
n1= input(prompt);
x_lim=2;
y_lim=5;
f=x_lim.^2+5;
f_of_f=y_lim.^2+5;
j = 5;
while j < n1
  hits = 0;
  n = j;
  for i = 1:n
    x1=rand() *(y_lim-x_lim)+x_lim;
    y1=rand()*f_of_f;
    f_of_y=(x1.^2+5);
    if(f_of_y>=y1)
        hits=hits+1;
       
    end
  end
   R=(y_lim-x_lim)*f_of_f;
   I=(hits*R)/n;
   error = abs(54-I)
   plot(j,error,'m.') ;
   hold on
   j = j+10;  
end

xlabel('trailNumber');
ylabel('errors');








    
