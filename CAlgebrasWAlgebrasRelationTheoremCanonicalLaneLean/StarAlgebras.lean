import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CStarAlgebra (A : Type u) where
  norm : A → ℝ
  add : A → A → A
  mul : A → A → A
  inv : A → A
  star : A → A
  zero : A
  one : A
  normedRing : NormedRing A
  cstarIdentity : ∀ x : A, ‖star x * x‖ = ‖x‖^2
  banachSpace : NormedAddCommGroup A
  additiveGroup : AddCommGroup A
  ring : Ring A
  starRing : StarRing A
  normedStarRing : NormedStarRing A

structure CStarAlgebraEvidence (A : Type u) (C : CStarAlgebra A) where
  normedRingClosed : C.normedRing
  cstarIdentityClosed : C.cstarIdentity
  banachSpaceClosed : C.banachSpace
  additiveGroupClosed : C.additiveGroup
  ringClosed : C.ring
  starRingClosed : C.starRing
  normedStarRingClosed : C.normedStarRing

def CStarAlgebraClosed (A : Type u) (C : CStarAlgebra A) : Prop :=
  C.normedRing ∧ C.cstarIdentity ∧ C.banachSpace ∧ C.additiveGroup ∧ C.ring ∧ C.starRing ∧ C.normedStarRing

theorem cstar_algebra_closed_from_evidence (A : Type u) (C : CStarAlgebra A) (E : CStarAlgebraEvidence A C) : CStarAlgebraClosed A C := by
  exact And.intro E.normedRingClosed (And.intro E.cstarIdentityClosed (And.intro E.banachSpaceClosed (And.intro E.additiveGroupClosed (And.intro E.ringClosed (And.intro E.starRingClosed E.normedStarRingClosed)))))

structure WStarAlgebra (A : Type u) extends CStarAlgebra A where
  predual : Type u
  predualNorm : Norm predual
  predualAdd : AddCommGroup predual
  isDual : IsDual A predual
  normalStates : Set (A → ℝ)
  normalStatesClosed : ∀ φ ∈ normalStates, φ (1 : A) = 1

structure WStarAlgebraEvidence (A : Type u) (W : WStarAlgebra A) where
  cstarBase : CStarAlgebraEvidence A W.toCStarAlgebra
  predualNormClosed : W.predualNorm
  predualAddClosed : W.predualAdd
  isDualClosed : W.isDual
  normalStatesClosed : W.normalStatesClosed

def WStarAlgebraClosed (A : Type u) (W : WStarAlgebra A) : Prop :=
  CStarAlgebraClosed A W.toCStarAlgebra ∧ W.predualNorm ∧ W.predualAdd ∧ W.isDual ∧ W.normalStatesClosed

theorem wstar_algebra_closed_from_evidence (A : Type u) (W : WStarAlgebra A) (E : WStarAlgebraEvidence A W) : WStarAlgebraClosed A W := by
  exact And.intro (cstar_algebra_closed_from_evidence A W.toCStarAlgebra E.cstarBase) (And.intro E.predualNormClosed (And.intro E.predualAddClosed (And.intro E.isDualClosed E.normalStatesClosed)))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse