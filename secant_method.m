clear all;clc;

D = input("Enter diameter : ");
s = input("Enter roughness coefficient : ");
Re = input("Enter  turbulent flow : ");
a = input("Enter left endpoint : ");
b = input("Enter right endpoint : ");
eps = input("Enter  accuracy level : ");

f0 = function_fX(a,D,Re,s);
f1 = function_fX(b,D,Re,s);


n = 30; % Number of iterations
for i=1:n
  x = (a*f1 - b*f0)/(f1 - f0);
  fx = function_fX(x,D,Re,s);
  printf('a = %f\t b = %f\t x = %f\t f0 = %f\t f1 = %f\t fx = %f\t\n',a,b,x,f0,f1,fx);
  a = b;
  b = x;
  f0 = f1;
  f1 = fx;
 plot(i, 'ro--',i, x, 'b--*');
 hold on
 if(abs(b - a)<eps)
 root = b;
 fprintf('Root=%f\n',root);
 fprintf('Number of iterations=%d\n',i);
 break
 end
end

