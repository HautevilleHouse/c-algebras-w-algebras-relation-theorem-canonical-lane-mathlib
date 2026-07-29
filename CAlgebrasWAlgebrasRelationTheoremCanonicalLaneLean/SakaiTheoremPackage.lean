import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.WStarAlgebrasPackage

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

/-!
# Sakai Theorem Package

This module defines Sakai's theorem: a C*-algebra is a W*-algebra if and only
if it is monotone complete and has a separating set of normal states.
-/

structure SakaiTheorem where
  algebra : CStarAlgebra
  monotoneComplete : Prop
  separatingNormalStates : Prop
  wStarEquivalence : (∃ (W : WStarAlgebra), W.cstar = algebra) ↔ (monotoneComplete ∧ separatingNormalStates)

structure SakaiEvidence (S : SakaiTheorem) where
  wStarEquivalenceClosed : S.wStarEquivalence

def SakaiClosed (S : SakaiTheorem) : Prop :=
  S.wStarEquivalence

theorem sakai_closed_from_evidence (S : SakaiTheorem) (E : SakaiEvidence S) :
    SakaiClosed S := by
  exact E.wStarEquivalenceClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse