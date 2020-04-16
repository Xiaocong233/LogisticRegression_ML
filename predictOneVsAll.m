% predicts the label for a trained one-vs-all classifier (label in range 1-K),
% where K = size(all_theta, 1). 
function p = predictOneVsAll(all_theta, X)

  % variable initializations
  m = size(X, 1); % sample size
  p = zeros(size(X, 1), 1); % prediction vector
  X = [ones(m, 1) X]; % input matrix with X0s added

  % temporary placeholder for the probabilities prediction matrix
  probs = sigmoid(X * all_theta');

  % get the class indices of the maximum probabilities in each row (sample) 
  [max, indices] = max(probs, [], 2);
  
  % assign each indices to the prediction vector
  p = indices;

end
