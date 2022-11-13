clear all;clc;

D = input("Enter diameter : ");
s = input("Enter roughness coefficient : ");
Re = input("Enter  turbulent flow : ");
a = input("Enter left endpoint : ");
b = input("Enter right endpoint : ");
eps = input("Enter  accuracy level : ");

fa = function_fX(a,D,Re,s);
fb = function_fX(b,D,Re,s);

if fa*fb>0
  printf('We cannot find the root');
 end

n = 30; % Number of iterations
 fprintf('Number of iterations = %f\n',n);
 for i=1:n
   p1 = (a*fb - b*fa)/(fb - fa);
  fp = function_fX(p1,D,Re,s);
  printf('a = %f\t b = %f\t p1 = %f\t fa = %f\t fb = %f\t fp = %f\t\n',a,b,p1,fa,fb,fp)
   plot(i, sqrt(3),'b--*',i, p1,'ro--', 14);
   hold on
   if(abs(a-p1)<eps)
   break
end
if fa*fp<0
  b=p1;
  fb=fp;
 else if fa*fp>0
  a=p1;
  fa=fp;
else
  p=p1;
end
end
end

printf('Root = %f\n',p1);
xlabel('Iteration');
ylabel('Root');

