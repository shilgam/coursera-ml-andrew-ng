function plotData2(X, y)
    %PLOTDATA Plots the data points X and y into a new figure
    %   PLOTDATA(x,y) plots the data points with + for the positive examples
    %   and o for the negative examples. X is assumed to be a Mx2 matrix.

    % Create New Figure
    figure; hold on;

    % ====================== YOUR CODE HERE ======================
    % Instructions: Plot the positive and negative examples on a
    %               2D plot, using the option 'k+' for the positive
    %               examples and 'ko' for the negative examples.
    %

    % Part 1: Plotting

    positive = find(y == 1); % indexes
    negative = find(y == 0);

    close all; clc
    title ('Scatter plot of training data');
    xlabel('Microchip Test 1');
    ylabel('Microchip Test 2');

    hold on;
    plot(X(:, 1)(positive), X(:, 2)(positive),
      ';accepted;',
      'marker', '+',
      'MarkerSize', 7,
      'LineStyle', 'none',
      'LineWidth', 3,
      'color', 'k'
    );

    plot(X(:, 1)(negative), X(:, 2)(negative),
      ';rejected;',
      'marker', 'o',
      'MarkerSize', 7,
      'LineStyle', 'none',
      'MarkerEdgeColor', 'k',
      'MarkerFaceColor', 'y'
    );

    print ("../output/p2.1_ex2data2.png");

    % =========================================================================
    hold off;
end
