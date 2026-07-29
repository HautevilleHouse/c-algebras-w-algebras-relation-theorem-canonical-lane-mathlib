import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure WStarAlgebraPackage where
  underlyingCStar : CStarAlgebraPackage
  predual : Type u
  isVonNeumannAlgebra : Prop
  isVonNeumannAlgebraTerm : isVonNeumannAlgebra

structure WStarAlgebraEvidence (W : WStarAlgebraPackage) where
  isVonNeumannAlgebraClosed : W.isVonNeumannAlgebra

def WStarAlgebraClosed (W : WStarAlgebraPackage) : Prop :=
  W.isVonNeumannAlgebra

theorem wstar_algebra_closed_from_evidence (W : WStarAlgebraPackage) (E : WStarAlgebraEvidence W) :
    WStarAlgebraClosed W := by
  exact E.isVonNeumannAlgebraClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse
