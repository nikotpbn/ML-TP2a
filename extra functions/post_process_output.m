% Function to post process output "Y" from sigmoidal NNs
function output = post_process_output(y)
    % Alocate new ouput vector
    output = zeros(size(y, 1), size(y, 2));

    % Iterate through columns
    for column = 1:size(y, 2)
        % Initialize maximum value as the 1st row of the column
        index = 1;
        max = y(1, column);
    
        % Iterate through rows
        for row = 2:size(y, 1)
            % Find if there is a greater value then the set maximum
            if y(row, column) > max
                max = y(row, column);
                index = row;
            end
        end
        
        % Set the maximum value found index in the new output vector
        output(index, column) = 1;
    end
end