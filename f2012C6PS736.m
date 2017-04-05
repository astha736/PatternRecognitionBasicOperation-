
a = ('image1.bmp');                         %picture elemet
obj = imread(a);

ac = ones(size(obj));
ac = ac - obj;                              %complemet of the picture


struct = ones(3);                           %structuring elemet

%let X be x(k) and Y be x(k-1)
% initialize x to x(1) and y to x(0)

Y = zeros(size(obj));                       %initialization for Y
Y(37,33)=1;
Y(91,219)=1;
Y(123,53)=1;
Y(167,162)=1;
Y(224,97)=1;
Y(73,121)=1;
Y(168,123)=1;
Y(46,164)=1;
Y(80,59)=1;
Y(120,152)=1;
Y(206,205)=1;
Y(219,18)=1;

X = Dilate(Y,struct);                       %initialization for X
X = Intersection(X,ac);

while Compare(X,Y)                          %Compare returns 1 when not =
    Y = X;                                  %assign x(k)
    X = Dilate(Y,struct);                   %initialization for X
    X = Intersection(X,ac);                 %compute x(k+1)
 
end

X = Union(X,obj);
struct = ones(7);                           %structuring elemet
Y = Erosion(X,struct);
Y = Dilate(Y,struct);
Z = xor(X,Y);

figure(1);imshow(X);                        %filled holes
figure(2);imshow(Y);                        %lage squares
figure(3);imshow(Z);                        %small squares


