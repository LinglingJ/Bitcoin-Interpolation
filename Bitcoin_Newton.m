clear all; 
clc;
x=linspace(1,9,9);
y=xlsread('Bitcoin Data Points.xlsx');
n=9;
x1_val=linspace(1, 9, 130);



for i=1:n
    b(i,1)=y(i);
end 

for j=2:n
    for i=1:n-j+1
       b(i,j)=(b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i));
    end
end

for i=1:n
    a(i)=b(1,i);
end
tic;
for k=1:130
for j=1:9
    p=a(n);
    for i=n-1:-1:1
         p=p*(x1_val(k)-x(i))+a(i); 
    end
    mat(k)=p;
end 
end
toc;
plot(x1_val,mat)
