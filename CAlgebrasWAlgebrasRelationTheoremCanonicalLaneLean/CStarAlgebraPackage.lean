import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CStarAlgebraPackage where
  carrier : Type u
  norm : carrier → ℝ
  involution : carrier → carrier
  multiplication : carrier → carrier → carrier
  addition : carrier → carrier → carrier
  scalarMultiplication : ℂ → carrier → carrier
  cstarIdentity : ∀ x : carrier, ‖star x * x‖ = ‖x‖ ^ 2
  completeness : Prop
  representationTheory : Prop

structure CStarAlgebraEvidence (C : CStarAlgebraPackage) where
  cstarIdentityClosed : C.cstarIdentity
  completenessClosed : C.completeness
  representationTheoryClosed : C.representationTheory

def CStarAlgebraClosed (C : CStarAlgebraPackage) : Prop :=
  C.cstarIdentity ∧ C.completeness ∧ C.representationTheory

theorem cstar_algebra_closed_from_evidence (C : CStarAlgebraPackage) (E : CStarAlgebraEvidence C) :
    CStarAlgebraClosed C := by
  exact And.intro E.cstarIdentityClosed (And.intro E.completenessClosed E.representationTheoryClosed)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse