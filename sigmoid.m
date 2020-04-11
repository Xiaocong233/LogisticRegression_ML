% computes the sigmoid of argument z (a scalar, a vector, or a matrix)
function g = sigmoid(z)
  g = zeros(size(z));
  g = 1 ./ (1 + e .^ -z);
end