function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

%vectorized implementation of calculating theta' * x for all x.
z = X*theta;
g = sigmoid(z);
%g now = n-vector of sigmoided-predictions for all x parameterized by theta

% vectorized logistic regression cost function:
a = ((log(g))')*(-y);
b = ((-y) + 1); 
c = log((-g) + 1);
d = c' * b;

sumCost = sum(a - d);
J = sumCost ./ m;


% vectorized logistic regression gradient function:
sumGrad = (X') * (g-y);
grad = sumGrad ./ m;



% =============================================================

end
