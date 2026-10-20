# AI Foundations Handbook

[中文](README.md) | [English](README-English.md)

This repository collects course materials, study notes, and sample code for artificial intelligence foundations. It covers four areas: mathematical fundamentals, machine learning, deep learning, and large language model applications. The repository is in its initial stage: the directory skeleton is ready, and content will be added to `docs/`, `notes/`, and `src/` over time.

## Repository Layout

```text
ai-foundations-handbook/
├── README.md
├── README-English.md
├── docs/            # Course slides and PDF / DOCX materials
├── notes/           # Markdown study notes and summaries
└── src/             # Sample code and exercises
```

## Notes Index

Seven notes on the introduction and mathematical foundations are available. Each note ends with a glossary table (term / full name / abbreviation / brief description). The notes themselves are written in Chinese.

| No. | Note | Topics |
| --- | --- | --- |
| 000 | [Introduction to AI: from hype to technical routes](notes/000-人工智能导论：从热潮到技术路线.md) | Technical routes, knowledge map |
| 001 | [Linear Algebra: vectors, matrices, and eigen-decomposition](notes/001-线性代数：向量、矩阵与特征分解.md) | Norms, inner product, EVD, SVD |
| 002 | [Probability: uncertainty, Bayes, and common distributions](notes/002-概率论：不确定性、贝叶斯与常见分布.md) | Conditional probability, Bayes, distributions |
| 003 | [Mathematical Statistics: estimation and hypothesis testing](notes/003-数理统计：参数估计与假设检验.md) | Point estimation, confidence intervals, bias-variance |
| 004 | [Optimization: gradient descent, Newton's method, and heuristics](notes/004-最优化：梯度下降、牛顿法与启发式算法.md) | Lagrange multipliers, SGD, trust region |
| 005 | [Information Theory: entropy, mutual information, and maximum entropy](notes/005-信息论：熵、互信息与最大熵.md) | Entropy, KL divergence, MaxEnt |
| 006 | [Formal Logic: predicate logic, production systems, and incompleteness](notes/006-形式逻辑：谓词逻辑、产生式系统与不完备性.md) | Knowledge representation, inference, Gödel |

## Planned Content

### 1. Mathematics and Fundamentals

- Linear algebra: vectors, matrix operations, eigenvalues and eigenvectors.
- Probability and statistics: random variables, common distributions, estimation, and hypothesis testing.
- Calculus and optimization: gradients, derivatives, convex optimization, and numerical methods.

### 2. Machine Learning

- Supervised and unsupervised learning paradigms.
- Classic algorithms: linear regression, logistic regression, decision trees, ensemble learning, and clustering.
- Feature engineering, cross validation, and evaluation metrics.
- Overfitting, regularization, and the bias-variance trade-off.

### 3. Deep Learning

- Neural network structures, forward propagation, and backpropagation.
- Convolutional neural networks, recurrent neural networks, and Transformers.
- Training techniques: initialization, normalization, learning-rate schedules, and regularization.
- Model design and tuning for common tasks.

### 4. Large Language Models and Applications

- Pretraining, fine-tuning, and prompt engineering.
- Vector retrieval and retrieval-augmented generation (RAG).
- Model inference deployment and engineering practices.

## How to Use

- Materials in `docs/` are numbered by topic, for example `001-xxx.pdf`.
- Notes in `notes/` keep the same numbering as the matching materials.
- Code in `src/` is organized into chapter directories and stays runnable on its own.
- Key conclusions in notes and code should record their sources for later review.

## Keywords

`AI Foundations` `Machine Learning` `Deep Learning` `Neural Network` `Transformer` `RAG` `Prompt Engineering`

## License

This project is licensed under the [MIT License](LICENSE).
