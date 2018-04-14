%Section 1:
clean screen Ctrl + l

# load data into octave and manipulate

cd 'D:/Google Drive/Data Analytics/Coursera';
%lesson 1 content:
1==2
1~=2

1&&0 % and logic operand
1||0
xor(1,0)

% in command line interface, PS('>> ') changes command prompt
# semicolon suppresses output_max_field_width
a = pi;
disp(a) # to display result

# decimal place change
disp(sprintf('2 decimals: %0.2f',a)) 
# sprintf means print string,
# %0.2f means print 2 decimals, and substitute following info in here

format long
format short # change format

# matrix
A = [1 2; 3 4; 5 6]
v = 1:0.1:2

# ones
ones(2,3)
w = zeros(1,3)
w = rand(3,3)
randnw = (1,3) # Gausian random variables

randn(1,3)
eye(3)


# Section 2: Move data around
size(A)
sz = size(A)
size(sz) # 1 by 2 matrix
size(A,1)
length(A) # longest demension size

# path 
pwd
cd 'D:\Google Drive\Data Analytics\Coursera' # change directory
ls # list directory in pwd

# load data
load featuresX.dat # house price prediction data
load('featureX.dat')
who # what variables exist
whos
clear featuresX # delete variables
priceY(1:10) # slicing


save hello.txt v -ascii % save as txt file.

# slicing:
A(3,2)
A(2,:)
A(:,3)
A([1 3],:)
# assigning new values
A(:,2) = [10; 11; 12]
# append columns
A = [A, [100; 101; 102]]
# put all elements of A into a single vector
A(:)
# append matrices
[A B]
[A, B]


# Section 3: Computing on Data
A * B # matrix multiplication

A .*B # element-wise multiplication
A .^2 # element-wise square
v = [1;2;3]
1 ./v
log(v)
exp(v)
abs(v)

# transpose
A'

a = [1 15 2 0.5]
max(a)
[val ,ind] = max(a)
a < 3 # element-wise judging
find(a<3)

A = magic(3)
[r, c] = find(A >=7) # row and column index where element satisfies conditions
sum
prod(a)
ceil(a) # round up 

rand(3)
max(rand(3),rand(3))
# max number in row or columns
max(A,[],1) # per column
max(A,[],2) # per row

# matrix transformation
A = magic(9)
A.*eye(9) # extract diagnal elements
flipud(eye(9)) # Or the 

A = magic(3)
pinv(A) # inverse matrix
A * pinv(A)


# Section 4: Plotting data
t = [0:0.001:1];
y1 = sin(2*pi*4*t);
plot(t,y1); # plot
y2 = cos(2*pi*4*t);
# add two plots together.
plot(t,y1);
hold on;
plot(t,y2,'r');
xlabel('time')
ylabel('value')
legend('sin','cos')
title('my plot')
print -dpng 'myPlot.png'

close # close plot

# multiple figures
figure(1); plot(t,y1);
figure(2);plot(t,y2);

subplot(1,2,1); plot(t,y1);
subplot(1,2,2); plot(t,y2);
axis([0.5 1 -1 1])

clf; # delete current figure
A = magic(5)
imagesc(A)

# Section 5: Control flow
# if loop
v = zeros(10,1)
for i = 1:10,
  v(i) = 2^i;
end;

# while
i = 1;
while true,
  v(i) = 999;
  i = i+1;
  if i ==6,
    break;
  end;
end;
disp(v);
v(1)

if v(1) =1,
  disp('1');
elseif v(1) = 2,
  disp('2');
else
  disp('other');
end;

# define function
% also can ad search path to add module functions etc.

addpath('D:/Google Drive/Data Analytics/Coursera')

function [y1,y2] = squireAndCubeThisNumber(x)
  y1 = x^2;
  y2 = x^3;

function J = costFunctionJ(X,y,theta)
  
  % X is the 'design matrix' containing training set;
  % y is the class labels
  
  m = size(X,1);
  predictions = X*theta;
  examples
  sqrErrors = (predictions - y).^2;
  return J = 1/(2*m) * sum(sqrErrors);

# section 6: Vectorisation
# faster computation

