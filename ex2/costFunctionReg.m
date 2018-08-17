function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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
unregJ = sumCost ./ m;

e = sum((theta(2:end)).^2) .* (lambda./(2*m));


J = unregJ + e;

% vectorized logistic regression gradient function:
sumGrad = (X') * (g-y);
grad = sumGrad ./ m;

gradRegAddition = theta .* lambda ./ m;
gradRegAddition(1) = 0;

grad = grad + gradRegAddition;



% =============================================================

end
