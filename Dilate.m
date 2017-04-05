
function [D] = Dilate(object,elem) 
D = object;
z = size(elem,1);
z = (z-1)/2;
for i =z+1: size(object,1)-z
    for j=z+1: size(object,2)-z
                            % taking multiplication of the stuct and obj  
        k = sum(sum(elem.*object(i-z:i+z,j-z:j+z)));
        if k >0             %this means that there were some structure pixels on
            D(i,j)=1;       %set the center on 
        end
    end
end
end


