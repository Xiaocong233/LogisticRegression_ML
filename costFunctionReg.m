% computes the cost and gradient of using theta as the parameter for 
% regularized logistic regression
function [J, grad] = costFunctionReg(theta, X, y, lambda)

  % training samples size, cost, gradient initializations
  m = length(y);
  J = 0;
  grad = zeros(size(theta));

  % regularized cost calculation
  J = -1 / m * (sum(y' * log(sigmoid(X * theta)) ... 
      + (1 - y)' * log(1 - sigmoid(X * theta)))) ... 
      + lambda /(2 * m) * sum(theta(2 : length(theta)) .^ 2);
  
  % non-regularized gradient for theta(1)
  grad(1) = (1 / m * ((sigmoid(X * theta) - y)' * X)')(1);
  
  % regularized gradient for the rest
  grad(2 : length(grad)) = (1 / m * ((sigmoid(X * theta) - y)' * X)' ...
                            + lambda / m * theta)(2 : length(grad));
    
end
