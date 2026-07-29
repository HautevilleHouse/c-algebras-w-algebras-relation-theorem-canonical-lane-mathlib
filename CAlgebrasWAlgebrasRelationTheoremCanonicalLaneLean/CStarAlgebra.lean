import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CStarAlgebra where
  carrier : Type u
  star : carrier → carrier
  norm : carrier → ℝ
  multiplication : carrier → carrier → carrier
  addition : carrier → carrier → carrier
  zero : carrier
  one : carrier
  CStarIdentity : ∀ a : carrier, ‖star a * a‖ = ‖a‖ ^ 2
  complete : Prop

def CStarAlgebraClosed (A : CStarAlgebra) : Prop :=
  A.CStarIdentity ∧ A.complete

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse