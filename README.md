## Description
Written in Octave/MATLAB, this repository Contains a set of vectorized algorithms/functions serving to compute logistic regression for classification problems.

## MATLAB/Octave Logistic Regression Class Functions
```
mapFeature(X1, X2)
```
  - maps polynomial features to function (2 variables)
___

```
costFunction(theta, X, y)
```
  - computes cost and gradient for logistic regression parameterized by theta
___
  
```
costFunctionReg(theta, X, y, lambda)
```
  - computes the cost and gradient of using theta as the parameter for regularized logistic regression
  - prevents overfitting by keeping thetas relatively small
    - lambda value should be chosen carefully in avoiding side effects (underfitting, overfitting)
___

```
oneVsAll(X, y, num_labels, lambda)
```
  - trains multiple logistic regression classifiers and returns all where the i-th row of all_theta corresponds to the classifier for label i with thetas regularized
  - as known as Multinomial or Multi-class Logistic Regression(regularized)
___
  
```
predict(theta, X)
```
  - predicts whether the label is 0 or 1 using learned logistic regression parameters theta
___
  
```
predictOneVsAll(all_theta, X)
```
  - predicts the label for a trained one-vs-all classifier (label in range 1-K), where K = size(all_theta, 1). 
___

```
sigmoid(z)
```
  - computes the sigmoid of argument z, which can be in the form a scalar, a vector, or a matrix

## Python Logistic Regression Template
  - created by [SuperDataScience Team](https://www.superdatascience.com/)
  - can be ran through Jupyter Notebook or in Python terminal
    - substitude 'ENTER_THE_NAME_OF_YOUR_DATASET_HERE.csv' with dataset
      - ensure data is a csv file containing features from first to second last column and labels on the last column


