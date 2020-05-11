function g = sigmoid(z)
    %SIGMOID Compute sigmoid function
    %   g = SIGMOID(z) computes the sigmoid of z.

    % You need to return the following variables correctly
    g = zeros(size(z));

    % ====================== YOUR CODE HERE ======================
    % Instructions: Compute the sigmoid of each value of z (z can be a matrix,
    %               vector or scalar).


    %     1. Logistic Regression
    %   1.2. Implementation
    % 1.2.1. Warmup exercise: sigmoid function

    g = 1 ./ (1 + e .^-z);
    % =============================================================
end

close all; clc
hold on;
title ('Sigmoid function  g(z) = 1 / (1 + e\^-z)');
xlabel('z');
ylabel('g(z)');
box on;

t = -6.0:0.2:6.0;
plot (t, sigmoid(t),
  'LineWidth', 2
);
hold off;

print ("../output/p1.2_sigmoid_func.png");
