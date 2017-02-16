%central limit theorem:
%the distribution of random variables
%added together tends toward a gaussian distribution
%example:
x = rand(1,1000);
figure;hist(x,100),title('uniform dist - x');
y = rand(1,1000);
figure;hist(y,100),title('uniform dist - y');
z = rand(1,1000);
figure;hist(z,100),title('uniform dist - z');
gauss = x + y + z;
figure; hist(gauss,100), title('QED!!');