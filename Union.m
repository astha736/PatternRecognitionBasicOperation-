function [ x ] = Union(a,b)
x = zeros(size(a));
    for i = 1:size(a,1)

        for j = 1:size(a,2)
            if a(i,j)==1
                x(i,j) =1;
            elseif b(i,j)==1
                x(i,j) =1;
            end  
        end
    end
end