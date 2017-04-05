function [ x ] = Compare( a,b )
 x = zeros(size(a));
    for i = 1:size(a,1)

        for j = 1:size(a,2)

            if a(i,j) ~= b(i,j) 
               x(i,j)=1 ;    
            end
        end
    end
    x = sum(sum(x));
    if x >0                     % some pixels didn't match
        x = 1;                  % comparison true
    else                        % x =0 all pixels match
        x =0;                   % comparison false
    end
end

