function max = get_maximum(vector)
    max = vector(1,1);

    for i = 1:size(vector, 2)
        max = vector(1,i);

        for j = 2:size(vector, 1)
            if vector(j,1) > max
                max = vector(j,1);
            end
        end
    end
end