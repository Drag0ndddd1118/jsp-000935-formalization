# Formalization of JSP-000935 (Erdős Problem #1127: Countable Partition of Euclidean Space with Distinct Pairwise Distances)

## Problem Overview

**Catalog ID:** [JSP-000935](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0901-1000.md#JSP-000935)  
**Erdős Problem:** [#1127](https://www.erdosproblems.com/1127)  
**Mathematical Area:** Geometry / Distance Geometry / Set Theory  

### Problem Statement
Can Euclidean space $\mathbb{R}^n$ be partitioned into countably many subsets such that all pairwise distances between distinct points in the same subset are distinct?

### Resolution & History
- **Erdős and Kakutani (1943):** Proved in *On non-denumerable graphs* (Bull. Amer. Math. Soc. 49 (1943), 457–461) that the real line $\mathbb{R}$ can be partitioned into countably many sets with distinct pairwise distances if and only if the Continuum Hypothesis (CH) holds ($\mathfrak{c} = \aleph_1$).
- **Roy O. Davies (1972, 1979):** Extended the result to the Euclidean plane $\mathbb{R}^2$ and higher-dimensional Euclidean spaces under CH (*Partitioning the plane into denumberably many sets without repeated distances*, Proc. Cambridge Philos. Soc. 72 (1972), 179–183).
- **Kenneth Kunen (1987):** Established in *Partitioning Euclidean space* (Math. Proc. Cambridge Philos. Soc. 102 (1987), 379–383) the complete resolution: for every $n \ge 1$, Euclidean space $\mathbb{R}^n$ admits a countable partition with distinct pairwise distances if and only if the Continuum Hypothesis holds ($\mathfrak{c} = \aleph_1$).

## Formalization Details

- **Bridge File:** `JSP_000935.lean`
- **Main Module:** `Erdos1127.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000935_solved :
      (Cardinal.continuum = (Cardinal.aleph 1 : Cardinal.{0})) ↔
        (∀ n : ℕ, ∃ color : EuclideanSpace ℝ (Fin n) → ℕ,
          Erdos1127.HasDistinctPairDistances color) :=
    Erdos1127.erdos_1127
  ```
- **Axiom Audit:**
  `#print axioms jsp_000935_solved` depends solely on standard Lean 4 / Mathlib axioms:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  Zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build & Verify
```bash
lake update
lake exe cache get
lake build
```

Verify zero unproved assumptions:
```bash
grep -rn --exclude-dir=".lake" --include="*.lean" "sorry" .
grep -rn --exclude-dir=".lake" --include="*.lean" "admit" .
```

## Attribution & Provenance
- **Mathematical Solution:** Paul Erdős & Shizuo Kakutani (1943), Roy O. Davies (1972, 1979), Kenneth Kunen (1987).
- **Formal Proof Authors:** OpenAI Codex, GPT-5.6 Sol via upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos1127.lean`).
- **Packaging & Verification:** Maintained and verified by Qin Zhao ([@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
