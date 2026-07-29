import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure WAlgebra where
  carrier : Type u
  star : carrier → carrier
  norm : carrier → ℝ
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  scalar : ℂ → carrier → carrier
  predual : Type v
  isDual : IsDual carrier predual
  wstarClosed : Prop

structure WStarAlgebraEvidence (W : WAlgebra) where
  isDualClosed : IsDual W.carrier W.predual
  wstarClosedClosed : W.wstarClosed

def WStarAlgebraClosed (W : WAlgebra) : Prop :=
  IsDual W.carrier W.predual ∧ W.wstarClosed

theorem wstar_algebra_closed_from_evidence (W : WAlgebra)
    (E : WStarAlgebraEvidence W) : WStarAlgebraClosed W :=
  And.intro E.isDualClosed E.wstarClosedClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse