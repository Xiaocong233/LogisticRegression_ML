% trains multiple logistic regression classifiers and returns all
% where the i-th row of all_theta corresponds to the classifier for label i
function [all_theta] = oneVsAll(X, y, num_labels, lambda)
  
  % helper variables initialization
  m = size(X, 1); % row length
  n = size(X, 2); % column length

  % return variable initialization
  all_theta = zeros(num_labels, n + 1);

  % input matrix with X0s (1s) added
  X = [ones(m, 1) X];

  % set options for fmincg
  options = optimset('GradObj', 'on', 'MaxIter', 50);

  % compute the most optimal thetas for each class
  for i = 1 : num_labels,
    all_theta(i, :) = fmincg(@(t)(lrCostFunction(t, X, (y == i), lambda)), all_theta(i, :)', options);
  end

end
