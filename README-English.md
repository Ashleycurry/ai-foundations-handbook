# AI Foundations Handbook

[中文](README.md) | [English](README-English.md)

This repository collects study notes on artificial intelligence foundations, organised across six sections: introduction, mathematical foundations, machine learning, artificial neural networks, deep learning, and neural networks under deep learning frameworks. Sixteen notes (000-015) are finished and proofread so far. They are written in Chinese, use LaTeX for formulas (rendered natively by GitHub), and end with a glossary table.

## Repository Layout

```text
ai-foundations-handbook/
├── README.md
├── README-English.md
├── docs/                            # Course slides and PDF / DOCX materials
└── notes/
    ├── 000-开篇/                     # Introduction and technical routes
    ├── 001-数学基础/                 # Linear algebra, probability, statistics, optimization, information theory, logic
    ├── 002-机器学习/                 # Nine classic machine learning methods
    ├── 003-人工神经网络/             # Neurons, perceptrons, and network structures
    ├── 004-深度学习/                 # Deep networks and training techniques
    └── 005-深度学习框架下的神经网络/ # Framework implementations and engineering practice
```

## Notes Index

Notes are organised as "section / number", with file names such as `007-机器学习-主题.md`. Each note ends with a glossary table (term / full name / abbreviation / brief description).

Reading order: start with 000 for the big picture, then work through 001-006 for the mathematical foundations, and finally move on to 007-015 for the classic machine learning algorithms. Each note also contains blockquotes labelled "新手提示" (beginner tips) that explain the terms and formulas most likely to trip up newcomers.

### 000 Introduction

| No. | Note | Topics |
| --- | --- | --- |
| 000 | [Introduction to AI: from hype to technical routes](notes/000-开篇/000-人工智能导论：从热潮到技术路线.md) | Technical routes, knowledge map |

### 001 Mathematical Foundations

| No. | Note | Topics |
| --- | --- | --- |
| 001 | [Linear Algebra: vectors, matrices, and eigen-decomposition](notes/001-数学基础/001-线性代数：向量、矩阵与特征分解.md) | Norms, inner product, EVD, SVD |
| 002 | [Probability: uncertainty, Bayes, and common distributions](notes/001-数学基础/002-概率论：不确定性、贝叶斯与常见分布.md) | Conditional probability, Bayes, distributions |
| 003 | [Mathematical Statistics: estimation and hypothesis testing](notes/001-数学基础/003-数理统计：参数估计与假设检验.md) | Point estimation, confidence intervals, bias-variance |
| 004 | [Optimization: gradient descent, Newton's method, and heuristics](notes/001-数学基础/004-最优化：梯度下降、牛顿法与启发式算法.md) | Lagrange multipliers, SGD, trust region |
| 005 | [Information Theory: entropy, mutual information, and maximum entropy](notes/001-数学基础/005-信息论：熵、互信息与最大熵.md) | Entropy, KL divergence, MaxEnt |
| 006 | [Formal Logic: predicate logic, production systems, and incompleteness](notes/001-数学基础/006-形式逻辑：谓词逻辑、产生式系统与不完备性.md) | Knowledge representation, inference, Gödel |

### 002 Machine Learning

| No. | Note | Topics |
| --- | --- | --- |
| 007 | [Machine learning overview: peaks to climb, seas to cross](notes/002-机器学习/007-机器学习概论：数山有路，学海无涯.md) | Hypothesis space, overfitting, cross validation, generative vs discriminative |
| 008 | [Linear regression: simple, not simplistic](notes/002-机器学习/008-线性回归：简约而不简单.md) | Least squares, maximum likelihood, ridge, LASSO |
| 009 | [Naive Bayes: the great way is simple](notes/002-机器学习/009-朴素贝叶斯方法：大道至简.md) | Bayes decision, conditional independence, Laplace smoothing |
| 010 | [Logistic regression: from simple to intricate](notes/002-机器学习/010-逻辑回归：衍化至繁.md) | Sigmoid, maximum likelihood, log-odds, Softmax |
| 011 | [Decision trees: step by step, rule by rule](notes/002-机器学习/011-决策树：步步为营，有章可循.md) | Information gain, gain ratio, Gini, pruning |
| 012 | [Support vector machines: when exhausted, change](notes/002-机器学习/012-支持向量机：穷则变，变则通.md) | Margin maximization, soft margin, kernel trick, SMO |
| 013 | [Ensemble learning: three cobblers outwit Zhuge Liang](notes/002-机器学习/013-集成学习：三个臭皮匠，赛过诸葛亮.md) | Boosting, Bagging, AdaBoost, random forest |
| 014 | [Cluster analysis: birds of a feather flock together](notes/002-机器学习/014-聚类分析：物以类聚，人以群分.md) | Distance measures, k-means, EM, DBSCAN |
| 015 | [Dimensionality reduction: use the steel on the blade](notes/002-机器学习/015-降维学习：好钢用在刀刃上.md) | PCA, kernel PCA, feature selection |

Sections after machine learning are still being organised: the directories for 003 onwards are in place, and their notes will be added to this index as they are written.

## Planned Sections

### 003 Artificial Neural Networks

- Physiological background: from biological to artificial neurons.
- Perceptron, linear separability, and the XOR problem.
- Multi-layer structures, activation functions, and universal approximation.

### 004 Deep Learning

- Full derivation of forward and backward propagation.
- Convolutional networks, recurrent networks, and Transformers.
- Training techniques: initialization, normalization, learning-rate schedules, and regularization.

### 005 Neural Networks under Deep Learning Frameworks

- Tensors, automatic differentiation, and computational graphs in mainstream frameworks.
- Model building, training, and tuning workflows for common tasks.
- Model inference deployment and engineering practices.

## How to Use

- Materials in `docs/` are numbered by topic, for example `001-xxx.pdf`.
- Notes in `notes/` are grouped by section; file names follow "number-section-topic" for easy sorting and lookup.
- Formulas in the notes are written in LaTeX and render directly on GitHub. For local reading, use an editor with math support (e.g. VS Code with Markdown Preview Enhanced).
- Inline math is mostly replaced by plain-text symbols; only a few block-level formulas are kept, so the notes stay readable in any terminal.

## Keywords

`AI Foundations` `Machine Learning` `Linear Algebra` `Probability` `Optimization` `Neural Network` `Deep Learning`

## License

This project is licensed under the [MIT License](LICENSE).
