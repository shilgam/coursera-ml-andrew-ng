# Lecture notes

## Classification

Examples of classification problems:
- email: spam/not spam ?
- online transactions: Fraudulent (Y/n) ?

### Hypothesis Representation

For Linear Regression Model we had following equations for hypothesis function:

        0 ≤ h(x) ≤ 1

        h(x) = θ' * x

For Logistic Regression function:

    h(x) = g(θ' * x)
    where g(z) = 1 / (1 + e ^ -z)

Where `g(z)` - Sigmoid Function OR Logistic Function.

`h(x)` will give us the probability that our output is 1. For example, `h(x)=0.7` gives us a probability of 70% that our output is 1.

### Decision Boundary

In order to get our discrete 0 or 1 classification, we can translate the output of the hypothesis function as follows:

    h(x) ≥ 0.5  →  y = 1
    h(x) < 0.5  →  y = 0

The **decision boundary** is the line that separates the area where y = 0 and where y = 1. It is created by our hypothesis function.


## Logistic Regression Model

### Cost Function

Q: How to fit the parameters of θ for the logistic regression?

A: It is supervised learning problem of fitting logistic regression model.
We have:
- a training set of `m ` training examples
- as usual, examples are represented by a `n + 1` dimensional vector `X`.
- Every label `y` = 0 or 1 always.

NOTE: We cannot define the same Cost function as for Linear regression. Because it will be "non-convex" function (will have multiple local minimums).

Cost function `Cost(h(x), y)` definition:
- if `y = 1` then it eq to  `- log(h(x))`
- if `y = 0` then it eq to  `- log(1 - h(x))`

### Simplified Cost Function and Gradient Descent

    Cost(h(x),y)=−y * ln(h(x)) - (1 − y) * ln(1 − h(x))

This formula defined by the principle of "Maximum likelihood estimation".

The way we're going to minimize the cost function is using gradient descent.

    θj := θj - α * d(J(θ)) / dθj

A vectorized implementation is:

    θ := θ − α / m * X' * (g(X * θ) - y)

### Advanced Optimization

Аdvanced optimization algorithms:
- Conjugate gradient
- BFGS
- L-BFGS

Аdvantages:
- no need to manually pick `α`
- often faster than Gradient Descent.

Disadvantages:
- More complex

Build-in function in octave: `fminunc`

## Multiclass Classification

### Multiclass Classification: One-vs-all

Examples of multiclass classification problems:
- Email foldering/tagging: Work, Friends, Family, Hobby
- Medical diagrams: Not ill, Cold, Flu
- Weather: Sunny, Cloud, Rain, Snow

"One-versus-all" algorithm

## Solving the Problem of Overfitting

**Underfitting**, or high bias, is when the form of our hypothesis function h maps poorly to the trend of the data.
- It is usually caused by a function that is too simple or uses too few features.

At the other extreme, **overfitting**, or high variance, is caused by a hypothesis function that fits the available data but does not generalize well to predict new data. It is usually caused by a complicated function that creates a lot of unnecessary curves and angles unrelated to the data.

This terminology is applied to both linear and logistic regression. There are two main options to address the issue of overfitting:

1. Reduce the number of features:
    - Manually select which features to keep.
    - Use a model selection algorithm (see later in the course).
1. Regularization
    - Keep all the features, but reduce the magnitude of parameters θj
    - Regularization works well when we have a lot of slightly useful features.


**Regularized Linear Regression**

**Regularized Logistic Regression**
