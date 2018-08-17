function plotData(X, y)
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
yPos = find(y==1); yNeg = find (y==0);


plot(X(yPos,1), X(yPos,2), 'k+', 'LineWidth', 2, 'MarkerSize', 7, 'MarkerFaceColor', 'g');

plot(X(yNeg,1), X(yNeg,2), 'ko', 'MarkerSize', 7, 'MarkerFaceColor', 'r');





% =========================================================================



hold off;

end
