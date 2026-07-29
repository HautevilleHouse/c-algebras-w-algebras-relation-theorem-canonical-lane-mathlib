import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure PredualPackage where
  algebra : Type u
  predual : Type v
  isometricEmbedding : algebra → (predual → ℝ)
  banachSpaceProperty : Prop
  uniquePredualProperty : Prop

def PredualClosed (P : PredualPackage) : Prop :=
  P.banachSpaceProperty ∧ P.uniquePredualProperty

structure PredualEvidence (P : PredualPackage) where
  banachSpacePropertyClosed : P.banachSpaceProperty
  uniquePredualPropertyClosed : P.uniquePredualProperty

theorem predual_closed_from_evidence
    (P : PredualPackage) (E : PredualEvidence P) :
    PredualClosed P := by
  exact And.intro E.banachSpacePropertyClosed E.uniquePredualPropertyClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse