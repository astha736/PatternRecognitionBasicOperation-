function [ x ] = Intersection(a,b)
x = zeros(size(a));
    for i = 1:size(a,1)

        for j = 1:size(a,2)

            if a(i,j) == b(i,j)==1 
                x(i,j) = a(i,j);        %if elemets same then included
            else
                x(i,j) = 0;
            end
        end
    end

end

