# Lecture notes

## Motivations

### Non-linear Hypotheses

Suppose we have a housing cost prediction problem.
Suppose we are considering 100 features.
If you were to include all the quadratic terms, i.e.:

    x1 * x1, x1 * x2, ..., x100 * x100
Then you end up with ~ 5000 features.

You might end up with overfitting problem.

So, simple logistic regression together with adding in maybe the quadratic or the cubic features - that's just not a good way to learn complex nonlinear hypotheses when `n` is large.

### Neurons and the Brain

Some of the background on Neural Networks:
- Origins: Algorithms that try to mimic the brain.
- Was very widely used throughout the 1980's and 1990's
- Today: state of the art technique for many applications

- The "one learning algorithm" hypotheses
    - neuro-rewiring experiments: the same piece of physical brain tissue can process sight or sound or touch
    - then maybe there is one learning algorithm that can process sight or sound or touch?

if you want to mimic the brain it seems like you have to write lots of different pieces of software to mimic all of these different fascinating, amazing things that the brain tell us, but does is this fascinating hypothesis that the way the brain does all of these different things is not worth like a thousand different programs, but instead, the way the brain does it is worth just a single learning algorithm. This is just a hypothesis but let me share with you some of the evidence for this.

## Neural Networks

### Model Representation I

* Neural networks were developed as simulating neurons or networks of neurons in the brain.

### Model Representation II

## Applications

### Examples and Intuitions

### Multiclass Classification
