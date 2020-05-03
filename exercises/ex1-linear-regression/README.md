## Lecture notes
### Intro

1. Supervised Learning
    - Categories of Supervised learning problems:
        - Regression problem - to predict a continuous valued output.
        - Classification problem - to predict a discrete value.
    - "Support Vector Machine" algorithm - allows to deal with an infinite number of features.
1. Unsupervised Learning
    - Examples:
        - Clustering algorithm - to cluster the data based on relationships among the variables in the data.
        - Cocktail party algorithm - to identify individual voices and music from a mesh of sounds.
    - Tool: Octave programming environment

### Model and Cost Function

1. Model Representation
    - What the overall process of supervised learning looks like?
        - Example: "Linear regression" algorithm
        - Hypothesis Function - h(x)
        - Cost Function - J(θ1, θ2)

### Parameter Learning
- "Gradient descent" algorithm

### Multivariate Linear Regression
- feature scaling
- mean normalization
- Learning Rate (α)

### Normal Equation

Normal Equation allows to find the optimum theta without iteration.

Formula: θ = (Xtr * X)−1 * Xtr * y

Comparison of 2 algorithms:

**Gradient Descent**

cons:
- Need to choose alpha
- Needs many iterations

Pros:
- low complexity: O(k * n^2)
- Works well when n is large

**Normal Equation**

Pros:
- No need to choose alpha
- No need to iterate

Cons:
- high complexity (O(n^3)) to calculate inverse of (Xtr * X)
- Slow if n is very large (more than 10 ^4)
