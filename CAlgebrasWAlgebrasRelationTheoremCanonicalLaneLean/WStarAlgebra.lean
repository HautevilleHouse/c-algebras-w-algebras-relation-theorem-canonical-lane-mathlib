import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure WStarAlgebra where
  carrier : Type u
  star : carrier → carrier
  norm : carrier → ℝ
  multiplication : carrier → carrier → carrier
  addition : carrier → carrier → carrier
  zero : carrier
  one : carrier
  predual : Type u
  isDual : Prop
  CStarAlgebraCondition : Prop
  weakStarClosed : Prop

def WStarAlgebraClosed (W : WStarAlgebra) : Prop :=
  W.CStarAlgebraCondition ∧ W.weakStarClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse