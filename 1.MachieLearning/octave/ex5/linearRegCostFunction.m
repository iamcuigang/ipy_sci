function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

%theta_but0 = theta(2:end);
%J1 = 1/(2*m)*sum( (X*theta - y).^2);
%J2 = lambda / (2*m) * sum(theta_but0.^2);
%J = J1 + J2;

J = (1/(2*m)) * sumsq(X*theta-y);
reg = lambda/(2*m)*sumsq(theta(2:end));
J += reg;

%d = (X*theta-y);
%delta = repmat(d, 1, size(X, 2));
%
%g1 = 1/m * sum( delta .* X )';
%theta(1) = 0;
%g2 = lambda / m .* theta;
%grad = g1 + g2;

grad = (X' * (X*theta-y)) / m;
grad(2:end) += lambda * theta(2:end) / m;
% =========================================================================

grad = grad(:);

end
