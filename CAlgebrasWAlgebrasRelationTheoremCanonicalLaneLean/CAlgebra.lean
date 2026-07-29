import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CAlgebra where
  carrier : Type u
  star : carrier → carrier
  norm : carrier → ℝ
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  scalar : ℂ → carrier → carrier
  starRing : StarRing carrier
  cstarNorm : NormedRing carrier
  complete : CompleteSpace carrier
  cstarIdentity : ∀ a : carrier, ‖star a * a‖ = ‖a‖ ^ 2

structure CStarAlgebraEvidence (A : CAlgebra) where
  starRingClosed : StarRing A.carrier
  cstarNormClosed : NormedRing A.carrier
  completeClosed : CompleteSpace A.carrier
  cstarIdentityClosed : A.cstarIdentity

def CStarAlgebraClosed (A : CAlgebra) : Prop :=
  StarRing A.carrier ∧ NormedRing A.carrier ∧ CompleteSpace A.carrier ∧ A.cstarIdentity

theorem cstar_algebra_closed_from_evidence (A : CAlgebra)
    (E : CStarAlgebraEvidence A) : CStarAlgebraClosed A :=
  And.intro E.starRingClosed (And.intro E.cstarNormClosed (And.intro E.completeClosed E.cstarIdentityClosed))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse