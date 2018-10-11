%Jessica Bao, Mariah, Jonathan 
%Lagrange Polynomial
clear all;
close all;
clc;
format long
%Setting up points
p=0;
a=1;
b=9;
n=8;
X_Pts=linspace(a,b,9)%this will make Jan 03, 2009 be x0=0, Jul 03,2009 x1=.5...etc
Y_Pts=xlsread('Bitcoin Data Points.xlsx');
Eval=linspace(a,b,17)
tic;
for k=1:17
    p=0;
    for i=1:n+1
        l=1;
        for j=1:n+1
            if i~=j
                l=l*(Eval(k)-X_Pts(j))/(X_Pts(i)-X_Pts(j));
            end   
        end
        p=l*Y_Pts(i)+p; 
    end
g(k)=p;
end
toc;
g
plot(Eval,g)



            