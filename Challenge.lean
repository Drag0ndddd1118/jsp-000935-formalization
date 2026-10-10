import Erdos1127

namespace JSP000935

/--
Formal statement of JSP-000935 (Erdős Problem #1127):
Can Euclidean space be partitioned into countably many sets each having all pairwise distances distinct?

References:
- R. O. Davies, Partitioning the plane into sets having all distances distinct, J. London Math. Soc. 27 (1952), 429-431.
- P. Erdős, Some remarks on set theory, Proc. Amer. Math. Soc. 1 (1950), 127-141.
-/
def jsp000935Statement : Prop :=
  (Cardinal.continuum = (Cardinal.aleph 1 : Cardinal.{0})) ↔
    (∀ n : ℕ, ∃ color : EuclideanSpace ℝ (Fin n) → ℕ,
      Erdos1127.HasDistinctPairDistances color)

end JSP000935
