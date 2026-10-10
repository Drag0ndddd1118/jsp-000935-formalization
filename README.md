# JSP-000935 Formalization

Standalone Lean 4 verification repository for **JSP-000935** (Erdős Problem #1127).

## Problem Description
Can Euclidean space be partitioned into countably many sets each having all pairwise distances distinct?

## Mathematical Background
Paul Erdős (1950) investigated partitioning Euclidean space into countably many subsets with distinct distances.
Roy O. Davies (1952) proved that the continuum hypothesis $2^{\aleph_0} = \aleph_1$ is equivalent to the statement that for every $n \in \mathbb{N}$, the Euclidean space $\mathbb{R}^n$ can be partitioned into countably many subsets each having all pairwise distances distinct (Erdős Problem #1127).

## Verification & Architecture
- **Problem Contract**: `Challenge.lean` (`JSP000935.jsp000935Statement`)
- **DefEq Bridge**: `Submission.lean` (`JSP000935.jsp_000935_solved : jsp000935Statement`)
- **Underlying Formalization**: `Erdos1127.lean` (`Erdos1127.erdos_1127`)
- **Automated Check**: `check.py` verifies clean build, zero `sorry`/`admit`/`axiom`, type-checked contract bridge, and strict axiom conformance.
- **Axioms**: `[Classical.choice, Quot.sound, propext]` (Lean standard foundational axioms).
