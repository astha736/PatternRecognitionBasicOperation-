function [E] = Erosion(object,elem)
E = zeros(size(object));
z = size(elem,1)*size(elem,2);           %size of the element
for i =4: size(object,1)-3
    for j=4: size(object,2)-3
                                         % taking multiplication of the stuct and obj  
        k = sum(sum(elem.*object(i-3:i+3,j-3:j+3)));
        if k ~= z                        %this means that there were some structure pixels on
            E(i,j)=0;                    %set the center on 
        else
            E(i,j)=1;
        end
    end
end

end

