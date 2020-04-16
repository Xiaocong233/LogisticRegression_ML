## Description
Written in Octave/MATLAB, this repository Contains a set of vectorized algorithms/functions serving to compute logistic regression for classification problems.

- mapFeature
  - maps polynomial features to function (2 variables)
  
- costFunction
  - computes cost and gradient for logistic regression parameterized by theta
  
- costFunctionReg
  - computes the cost and gradient of using theta as the parameter for regularized logistic regression
  - prevents overfitting by keeping thetas relatively small
    - lambda value should be chosen carefully in avoiding side effects (underfitting, overfitting)
    
- oneVsAll (multinomialLogisticRegressionReg)
  - trains multiple logistic regression classifiers and returns all where the i-th row of all_theta corresponds to the classifier for label i with thetas regularized
  
- predict
  - predicts whether the label is 0 or 1 using learned logistic regression parameters theta
  
- predictOneVsAll
  - predicts the label for a trained one-vs-all classifier (label in range 1-K), where K = size(all_theta, 1). 

- sigmoid
  - computes the sigmoid of argument z, which can be in the form a scalar, a vector, or a matrix

## mapFeature Usage
```
mapFeature(X1, X2)
```
## costFunction Usage
```
costFunction(theta, X, y)
```
## costFunctionReg Usage
```
costFunctionReg(theta, X, y, lambda)
```
## oneVsAll (multinomialLogisticRegressionReg) Usage
```
oneVsAll(X, y, num_labels, lambda)
```
## predict Usage
```
predict(theta, X)
```
## predictOneVsAll Usage
```
predictOneVsAll(all_theta, X)
```
## sigmoid Usage
```
sigmoid(z)
```




