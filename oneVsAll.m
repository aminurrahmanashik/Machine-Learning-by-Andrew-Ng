function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%ONEVSALL trains multiple logistic regression classifiers and returns all
%the classifiers in a matrix all_theta, where the i-th row of all_theta 
%corresponds to the classifier for label i
%   [all_theta] = ONEVSALL(X, y, num_labels, lambda) trains num_labels
%   logistic regression classifiers and returns each of these classifiers
%   in a matrix all_theta, where the i-th row of all_theta corresponds 
%   to the classifier for label i
% X_row_size = 5000
% X_col_size = 400

% Some useful variables
m = size(X, 1);% row 
n = size(X, 2); % col

all_theta = zeros(num_labels, n + 1); 
%Add ones to the X data matrix
X = [ones(m, 1) X];

for c = 1:num_labels
  % initilizing the matrix for theta calculation, n+1 for bias unit
  initial_theta = zeros(n + 1, 1);
  
  % for 100 time iteration, we've passed 100 as parameter
  options = optimset('GradObj', 'on', 'MaxIter', 100);
  
  % in lrCostFunction parameter,we've just passed y == c as the parameter 
  %  y for our given condition
  [theta] = fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)),initial_theta, options);
  
  % saving the theta for corresponding label
  all_theta(c, :) = theta';
  
endfor 

end