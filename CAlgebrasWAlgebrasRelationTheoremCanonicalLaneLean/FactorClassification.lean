import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.StarAlgebras

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

inductive FactorType where
  | TypeI
  | TypeII_1
  | TypeII_∞
  | TypeIII

structure Factor (A : Type u) extends WStarAlgebra A where
  centerTrivial : ∀ x : A, (∀ y : A, x * y = y * x) → x ∈ {0,1}
  factorType : FactorType

structure FactorEvidence (A : Type u) (F : Factor A) where
  wstarBase : WStarAlgebraEvidence A F.toWStarAlgebra
  centerTrivialClosed : F.centerTrivial
  factorTypeClosed : F.factorType = F.factorType

def FactorClosed (A : Type u) (F : Factor A) : Prop :=
  WStarAlgebraClosed A F.toWStarAlgebra ∧ F.centerTrivial

theorem factor_closed_from_evidence (A : Type u) (F : Factor A) (E : FactorEvidence A F) : FactorClosed A F := by
  exact And.intro (wstar_algebra_closed_from_evidence A F.toWStarAlgebra E.wstarBase) E.centerTrivialClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse