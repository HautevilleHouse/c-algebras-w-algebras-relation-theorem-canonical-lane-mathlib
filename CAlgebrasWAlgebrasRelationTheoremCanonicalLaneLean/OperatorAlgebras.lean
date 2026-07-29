import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CStarAlgebra where
  carrier : Type u
  norm : carrier → ℝ
  star : carrier → carrier
  CStarIdentity : ∀ x : carrier, ‖star x * x‖ = ‖x‖^2
  positivity : Prop
  complete : Prop

structure WStarAlgebra extends CStarAlgebra where
  isVonNeumannAlgebra : Prop
  predual : Type v

structure CStarAlgebraEvidence (A : CStarAlgebra) where
  CStarIdentityClosed : A.CStarIdentity
  positivityClosed : A.positivity
  completeClosed : A.complete

def CStarAlgebraClosed (A : CStarAlgebra) : Prop :=
  A.CStarIdentity ∧ A.positivity ∧ A.complete

theorem cstar_algebra_closed_from_evidence (A : CStarAlgebra) (E : CStarAlgebraEvidence A) :
    CStarAlgebraClosed A := by
  exact And.intro E.CStarIdentityClosed (And.intro E.positivityClosed E.completeClosed)

structure WStarAlgebraEvidence (M : WStarAlgebra) where
  isVonNeumannAlgebraClosed : M.isVonNeumannAlgebra
  cstar_evidence : CStarAlgebraEvidence M.toCStarAlgebra

def WStarAlgebraClosed (M : WStarAlgebra) : Prop :=
  M.isVonNeumannAlgebra ∧ CStarAlgebraClosed M.toCStarAlgebra

theorem wstar_algebra_closed_from_evidence (M : WStarAlgebra) (E : WStarAlgebraEvidence M) :
    WStarAlgebraClosed M := by
  exact And.intro E.isVonNeumannAlgebraClosed (cstar_algebra_closed_from_evidence M.toCStarAlgebra E.cstar_evidence)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse