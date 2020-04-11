% computes cost and gradient for logistic regression parameterized by theta
function [J, grad] = costFunction(theta, X, y)
  
  % number of training examples
  m = length(y);

  % cost & gradient initializations
  J = 0;
  grad = zeros(size(theta));

  % cost calculation
  J = -1 / m * (sum(y' * log(sigmoid(X * theta)) + 
  (1 - y)' * log(1 - sigmoid(X * theta))));
  
  % gradient calculation
  grad = 1 / m * ((sigmoid(X * theta) - y)' * X)';
  
end