function a = classify(output)
    a = zeros(1,size(output, 2));
    
    for column = 1:size(output,2)    
        for index = 1:size(output, 1)
            if output(index, column) == 1
                a(1, column) = index;
            end            
        end
    end
end