% predicts whether the label is 0 or 1 using learned logistic 
% regression parameters theta
function p = predict(theta, X)
  
  % training sample size, prediction (scalar, vector) initialization
  m = size(X, 1);
  p = zeros(m, 1);

  % calculate probability value for y = 1, given X, parameterized by theta
  p = sigmoid(X * theta) >= 0.5;
  
end
