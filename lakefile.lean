import Lake
open Lake DSL

package "jsp-000935-formalization" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib Erdos1127

@[default_target]
lean_lib «JSP_000935» where
  roots := #[`JSP_000935, `Erdos1127]
