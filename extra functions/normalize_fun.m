function normalized = normalize_fun(matrix, threshold)
    normalized = zeros(size(matrix, 1), size(matrix, 2));

    for row = 1:size(matrix, 1)
        for column = 1:size(matrix, 2)
            if matrix(row, column) > threshold
                normalized(row, column) = 1;
            else
                normalized(row, column) = 0;
            end
        end
    end
end