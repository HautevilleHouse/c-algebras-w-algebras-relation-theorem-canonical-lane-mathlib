import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

/-!
# C*-algebras Package

This module defines the formal structure for C*-algebras, a key ingredient
in the relation between C*-algebras and W*-algebras.
-/

structure CStarAlgebra where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  star : carrier → carrier
  norm : carrier → ℝ
  scalarMul : ℂ → carrier → carrier
  cStarIdentity : ∀ x : carrier, norm (star x * x) = (norm x)^2
  submultiplicativity : ∀ x y : carrier, norm (x * y) ≤ norm x * norm y
  completeness : Prop

structure CStarAlgebraEvidence (A : CStarAlgebra) where
  cStarIdentityClosed : A.cStarIdentity
  submultiplicativityClosed : A.submultiplicativity
  completenessClosed : A.completeness

def CStarAlgebraClosed (A : CStarAlgebra) : Prop :=
  A.cStarIdentity ∧ A.submultiplicativity ∧ A.completeness

theorem cstar_algebra_closed_from_evidence (A : CStarAlgebra) (E : CStarAlgebraEvidence A) :
    CStarAlgebraClosed A := by
  exact And.intro E.cStarIdentityClosed (And.intro E.submultiplicativityClosed E.completenessClosed)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse