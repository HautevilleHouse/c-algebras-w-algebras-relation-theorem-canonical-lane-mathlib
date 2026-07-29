import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CStarAlgebrasPackage

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

/-!
# Commutant Theorem Package

This module defines the double commutant theorem, which characterizes
W*-algebras as C*-algebras that equal their double commutant.
-/

structure DoubleCommutantTheorem where
  algebra : CStarAlgebra
  commutant : Set (carrier → carrier) := {φ : carrier → carrier | ∀ x ∈ carrier, φ ∘ leftMul x = leftMul x ∘ φ}
  doubleCommutant : Set (carrier → carrier) := {φ : carrier → carrier | ∀ ψ ∈ commutant, φ ∘ ψ = ψ ∘ φ}
  wStarCondition : algebra.carrier = doubleCommutant
  where
    carrier : Type u := algebra.carrier
    leftMul : carrier → (carrier → carrier) := λ a b => algebra.mul a b

structure DoubleCommutantEvidence (T : DoubleCommutantTheorem) where
  wStarConditionClosed : T.wStarCondition

def DoubleCommutantClosed (T : DoubleCommutantTheorem) : Prop :=
  T.wStarCondition

theorem double_commutant_closed_from_evidence (T : DoubleCommutantTheorem) (E : DoubleCommutantEvidence T) :
    DoubleCommutantClosed T := by
  exact E.wStarConditionClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse