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

sig = sigmoid(X * theta);   % hypothesis logistic regression
reg_term = sum(theta(2:end) .^ 2) * lambda / (2 * m);

J = mean((-y .* log(sig)) - ((1 - y) .* log(1 - sig))) + reg_term;

theta_reg = theta;
theta_reg(1) = 0;  % as theta(0) is not regularized and here thete starts from 1

grad = (X' * (sig - y) ./ m) + theta_reg * lambda / m;


% =============================================================

end
