## Description
Written in Octave/MATLAB, this repository Contains a set of algorithms/functions serving to compute logistic regression for classification problems.

- costFunction
  - computes cost and gradient for logistic regression parameterized by theta


- sigmoid
  - computes the sigmoid of argument z, which can be in the form a scalar, a vector, or a matrix


- predict
  - predicts whether the label is 0 or 1 using learned logistic regression parameters theta


- mapFeature
  - maps polynomial features to function (2 variables)


- costFunctionReg
  - computes the cost and gradient of using theta as the parameter for regularized logistic regression
  - prevents overfitting by keeping thetas relatively small
    - lambda value should be chosen carefully in avoiding side effects (underfitting, overfitting)


## Usages
```
costFunction(theta, X, y)

sigmoid(z)

predict(theta, X)

mapFeature(X1, X2)

costFunctionReg(theta, X, y, lambda)
```
