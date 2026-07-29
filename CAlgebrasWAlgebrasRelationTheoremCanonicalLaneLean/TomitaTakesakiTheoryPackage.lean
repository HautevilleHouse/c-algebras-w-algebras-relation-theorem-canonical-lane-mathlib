import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.WStarAlgebrasPackage

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

/-!
# Tomita-Takesaki Theory Package

This module defines the Tomita-Takesaki modular theory, which is central to
understanding the structure of W*-algebras.
-/

structure TomitaTakesaki where
  algebra : WStarAlgebra
  cyclicVector : algebra.carrier
  separatingVector : algebra.carrier
  modularOperator : algebra.carrier → algebra.carrier
  modularConjugation : algebra.carrier → algebra.carrier
  modularGroup : ℝ → (algebra.carrier → algebra.carrier)

structure TomitaTakesakiEvidence (T : TomitaTakesaki) where
  cyclicVectorClosed : T.cyclicVector
  separatingVectorClosed : T.separatingVector
  modularOperatorClosed : T.modularOperator
  modularConjugationClosed : T.modularConjugation
  modularGroupClosed : T.modularGroup

def TomitaTakesakiClosed (T : TomitaTakesaki) : Prop :=
  T.cyclicVector ∧ T.separatingVector ∧ T.modularOperator ∧ T.modularConjugation ∧ T.modularGroup

theorem tomita_takesaki_closed_from_evidence (T : TomitaTakesaki) (E : TomitaTakesakiEvidence T) :
    TomitaTakesakiClosed T := by
  exact And.intro E.cyclicVectorClosed (And.intro E.separatingVectorClosed (And.intro E.modularOperatorClosed (And.intro E.modularConjugationClosed E.modularGroupClosed)))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse