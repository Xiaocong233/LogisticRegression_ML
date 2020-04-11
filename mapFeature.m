% maps polynomial features to function (2 vars)
function out = mapFeature(X1, X2)

  % degree of polynomial
  degree = 6;

  % output initialization
  out = ones(size(X1(:,1)));
  
  % mapping of features
  for i = 1:degree
      for j = 0:i
          out(:, end+1) = (X1.^(i-j)).*(X2.^j);
      end
  end

end