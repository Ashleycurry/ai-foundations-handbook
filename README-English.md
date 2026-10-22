# AI Foundations Handbook

[中文](README.md) | [English](README-English.md)

This repository collects study notes on artificial intelligence foundations, organised across six sections: introduction, mathematical foundations, machine learning, artificial neural networks, deep learning, and neural networks under deep learning frameworks. Thirty-three notes (000-032) are finished, and each has been checked for formulas, worked examples and cross-references. They are written in Chinese, use LaTeX for formulas (rendered natively by GitHub), and end with a glossary table.

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
    └── 005-深度学习框架下的神经网络/ # Deep belief networks, convolution, recurrence and memory networks
```

## Notes Index

Notes are organised as "section / number", with file names such as `007-机器学习概论：假设空间、泛化误差与模型评估.md`, where the topic comes before the colon and the subtitle after it. Each note ends with a glossary table (term / full name / abbreviation / brief description).

Reading order: start with 000 for the big picture, then work through 001-006 for the mathematical foundations, move on to 007-015 for the classic machine learning algorithms, and finish with 016-021 on neural network structures, 022-027 on deep learning, and 028-032 on deep belief networks, convolutional networks, recurrent networks, generative adversarial networks and long short-term memory. Each note also contains blockquotes labelled "新手提示" (beginner tips) that explain the terms and formulas most likely to trip up newcomers.

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
| 007 | [Machine learning overview: hypothesis space, generalization error and model evaluation](notes/002-机器学习/007-机器学习概论：假设空间、泛化误差与模型评估.md) | Overfitting, cross validation, generative vs discriminative |
| 008 | [Linear regression: least squares, regularization and GLM](notes/002-机器学习/008-线性回归：最小二乘、正则化与广义线性模型.md) | Maximum likelihood, ridge, LASSO, basis functions |
| 009 | [Naive Bayes: Bayes decision, conditional independence and smoothing](notes/002-机器学习/009-朴素贝叶斯：贝叶斯决策、条件独立与平滑.md) | Priors and posteriors, MLE, text classification |
| 010 | [Logistic regression: log-odds, maximum likelihood and Softmax](notes/002-机器学习/010-逻辑回归：对数几率、最大似然与%20Softmax.md) | Sigmoid, gradient descent, multiclass extension |
| 011 | [Decision trees: information gain, Gini index and pruning](notes/002-机器学习/011-决策树：信息增益、基尼系数与剪枝.md) | ID3, C4.5, CART, pre-pruning and post-pruning |
| 012 | [Support vector machines: margin maximization, kernel trick and SMO](notes/002-机器学习/012-支持向量机：间隔最大化、核技巧与%20SMO.md) | Hard margin, soft margin, dual problem, support vectors |
| 013 | [Ensemble learning: Boosting, Bagging and random forests](notes/002-机器学习/013-集成学习：Boosting、Bagging%20与随机森林.md) | AdaBoost, bootstrap sampling, bias and variance |
| 014 | [Clustering: distance measures, k-means and DBSCAN](notes/002-机器学习/014-聚类分析：距离度量、k%20均值与%20DBSCAN.md) | Hierarchical clustering, EM, density-reachability |
| 015 | [Dimensionality reduction: PCA, kernel PCA and feature selection](notes/002-机器学习/015-降维学习：主成分分析、核化%20PCA%20与特征选择.md) | Covariance matrix, eigendecomposition, wrapper and filter methods |

### 003 Artificial Neural Networks

| No. | Note | Topics |
| --- | --- | --- |
| 016 | [Physiological background of neural networks: neurons, cognitive hierarchy and the limits of silicon](notes/003-人工神经网络/016-神经网络的生理学背景：神经元、认知层级与硅基局限.md) | Connectionism, perceptual objects, synchronous oscillation, memory wall |
| 017 | [Neurons and perceptrons: the MP model, Hebbian learning and the XOR dilemma](notes/003-人工神经网络/017-神经元与感知器：MP%20模型、赫布学习与异或困境.md) | Threshold logic unit, Hebbian rule, linear separability and convergence |
| 018 | [Multilayer perceptrons: hidden layers, backpropagation and gradient descent](notes/003-人工神经网络/018-多层感知器：隐藏层、反向传播与梯度下降.md) | Squared error, chain rule, local gradient, universal approximation |
| 019 | [Radial basis function networks: local approximation, receptive fields and k-means training](notes/003-人工神经网络/019-径向基函数网络：局部逼近、感受野与%20K%20均值训练.md) | Gaussian function, interpolation, recursive least squares |
| 020 | [Self-organizing maps: competitive learning, lateral inhibition and topological ordering](notes/003-人工神经网络/020-自组织特征映射：竞争学习、侧向抑制与拓扑排序.md) | Winner-takes-all, neighborhood function, vector quantization, U-matrix |
| 021 | [Fuzzy neural networks: fuzzy sets, level sets and genetic algorithms](notes/003-人工神经网络/021-模糊神经网络：模糊集合、水平集与遗传算法.md) | Membership degree, extension principle, cutoff point, conjugate gradient |

### 004 Deep Learning

| No. | Note | Topics |
| --- | --- | --- |
| 022 | [Deep learning overview: Deep Blue vs. AlphaGo, hierarchical abstraction and engineering conditions](notes/004-深度学习/022-深度学习概述：深蓝与%20AlphaGo、层级抽象与工程条件.md) | Deep Blue and AlphaGo, hierarchical features, data and compute |
| 023 | [Deep feedforward networks: universal approximation, loss functions and activation functions](notes/004-深度学习/023-深度前馈网络：通用逼近、损失函数与激活函数.md) | Universal approximation theorem, cross-entropy, ReLU |
| 024 | [Regularization: data augmentation, weight sharing and weight decay](notes/004-深度学习/024-正则化：数据增强、参数共享与权重衰减.md) | Data augmentation, Dropout, L1/L2, early stopping |
| 025 | [Optimization: ill-conditioned Hessian, SGD and momentum](notes/004-深度学习/025-优化：病态%20Hessian、随机梯度下降与动量法.md) | Condition number, saddle points, variance reduction, momentum |
| 026 | [Autoencoders: undercomplete coding, stacked pre-training and variational generation](notes/004-深度学习/026-自编码器：欠完备编码、栈式预训练与变分生成.md) | Bottleneck representation, stacked pre-training, denoising, VAE |
| 027 | [Deep reinforcement learning: Markov decision processes, DQN and policy gradients](notes/004-深度学习/027-深度强化学习：马尔可夫决策、深度%20Q%20网络与策略梯度.md) | MDP, DQN, policy gradient, model-based methods |

### 005 Neural Networks under Deep Learning Frameworks

| No. | Note | Topics |
| --- | --- | --- |
| 028 | [Deep belief networks: restricted Boltzmann machines, contrastive divergence and layer-wise pre-training](notes/005-深度学习框架下的神经网络/028-深度信念网络：受限玻尔兹曼机、对比散度与逐层预训练.md) | RBM, contrastive divergence, layer-wise pre-training |
| 029 | [Convolutional neural networks: convolution, sparse interaction and feature maps](notes/005-深度学习框架下的神经网络/029-卷积神经网络：卷积运算、稀疏感知与特征映射.md) | Kernels, parameter sharing, pooling, residual networks |
| 030 | [Recurrent neural networks: temporal weight sharing, bidirectional structure and recursive networks](notes/005-深度学习框架下的神经网络/030-循环神经网络：时序参数共享、双向结构与递归网络.md) | BPTT, bidirectional RNN, recursive networks |
| 031 | [Generative adversarial networks: zero-sum games, minimax and training difficulties](notes/005-深度学习框架下的神经网络/031-生成式对抗网络：零和博弈、极小极大与训练难题.md) | Generator, discriminator, JS divergence, mode collapse |
| 032 | [Long short-term memory: gating, memory cells and gradient vanishing](notes/005-深度学习框架下的神经网络/032-长短期记忆网络：门控机制、记忆单元与梯度弥散.md) | Forget gate, input gate, output gate, peephole connections |

## How to Use

- Materials in `docs/` are numbered by topic, for example `001-xxx.pdf`.
- Notes in `notes/` are grouped by section; file names follow "number-topic: subtitle".
- Formulas in the notes are written in LaTeX and render directly on GitHub. For local reading, use an editor with math support (e.g. VS Code with Markdown Preview Enhanced).
- Inline math is mostly replaced by plain-text symbols; only a few block-level formulas are kept, so the notes stay readable in any terminal.
- Review follows three rules: every formula can be verified term by term, every definition or conclusion has a clear source, and every number or cross-reference points to the right note.

## Keywords

`AI Foundations` `Machine Learning` `Linear Algebra` `Probability` `Optimization` `Neural Network` `Deep Learning`

## License

This project is licensed under the [MIT License](LICENSE).
