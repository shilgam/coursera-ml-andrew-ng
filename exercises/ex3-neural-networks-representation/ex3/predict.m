function p = predict(Theta1, Theta2, X)
    %PREDICT Predict the label of an input given a trained neural network
    %   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
    %   trained weights of a neural network (Theta1, Theta2)

    % Useful values
    m = size(X, 1);
    num_labels = size(Theta2, 1);

    % You need to return the following variables correctly
    p = zeros(size(X, 1), 1);

    % ====================== YOUR CODE HERE ======================
    % Instructions: Complete the following code to make predictions using
    %               your learned neural network. You should set p to a
    %               vector containing labels between 1 to num_labels.
    %
    % Hint: The max function might come in useful. In particular, the max
    %       function can also return the index of the max element, for more
    %       information see 'help max'. If your examples are in rows, then, you
    %       can use max(A, [], 2) to obtain the max for each row.
    %


    % Add ones to the X data matrix
    X_extended = [ones(m, 1) X];  % dim: m x 401


    a2 = sigmoid(X_extended * Theta1'); % dim: m x 25

    % Add ones to the a2 matrix
    a2_extended = [ones(m, 1) a2];  % dim: m x 26

    for index = 1:m
        a3 = sigmoid(a2_extended(index, :) * Theta2');  % dim: 1 x 10

        [max_number, max_number_index] = max(a3);

        p(index) = max_number_index;
        fprintf('# of iter:  %i', index)
        fprintf(';     ')
        fprintf('max_val: %f', max_number)
        fprintf(';     ')
        fprintf('max_number_index: %i', max_number_index);
        fprintf('\n');
    endfor
    % =========================================================================
end
