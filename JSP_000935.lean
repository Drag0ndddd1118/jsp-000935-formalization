import Erdos1127

theorem jsp_000935_solved :
    (Cardinal.continuum = (Cardinal.aleph 1 : Cardinal.{0})) ↔
      (∀ n : ℕ, ∃ color : EuclideanSpace ℝ (Fin n) → ℕ,
        Erdos1127.HasDistinctPairDistances color) :=
  Erdos1127.erdos_1127

#print axioms jsp_000935_solved
-- 'jsp_000935_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
