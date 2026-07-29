import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure WStarAlgebraPackage {C : CStarAlgebraPackage} where
  predual : Type u
  weakStarTopology : Prop
  normalStates : Prop
  bicommutant : Prop
  isAWStar : Prop

structure WStarAlgebraEvidence {C : CStarAlgebraPackage} (W : WStarAlgebraPackage C) where
  weakStarTopologyClosed : W.weakStarTopology
  normalStatesClosed : W.normalStates
  bicommutantClosed : W.bicommutant
  isAWStarClosed : W.isAWStar

def WStarAlgebraClosed {C : CStarAlgebraPackage} (W : WStarAlgebraPackage C) : Prop :=
  W.weakStarTopology ∧ W.normalStates ∧ W.bicommutant ∧ W.isAWStar

theorem wstar_algebra_closed_from_evidence {C : CStarAlgebraPackage} (W : WStarAlgebraPackage C) (E : WStarAlgebraEvidence W) :
    WStarAlgebraClosed W := by
  exact And.intro E.weakStarTopologyClosed (And.intro E.normalStatesClosed (And.intro E.bicommutantClosed E.isAWStarClosed))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse