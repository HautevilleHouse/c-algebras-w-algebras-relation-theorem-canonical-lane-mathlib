import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure Representation (A : CAlgebra) (H : Type u) [NormedAddCommGroup H] [InnerProductSpace ℂ H] where
  pi : A.carrier → (H →ₗ[ℂ] H)
  starPreserving : ∀ a : A.carrier, pi (A.star a) = (pi a)†
  multiplicative : ∀ a b : A.carrier, pi (A.mul a b) = (pi a) ∘ (pi b)
  unital : pi A.one = 1

structure RepresentationEvidence (A : CAlgebra) (H : Type u) [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (R : Representation A H) where
  starPreservingClosed : R.starPreserving
  multiplicativeClosed : R.multiplicative
  unitalClosed : R.unital

def RepresentationClosed (A : CAlgebra) (H : Type u) [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (R : Representation A H) : Prop :=
  R.starPreserving ∧ R.multiplicative ∧ R.unital

theorem representation_closed_from_evidence (A : CAlgebra) (H : Type u) [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (R : Representation A H) (E : RepresentationEvidence A H R) : RepresentationClosed A H R :=
  And.intro E.starPreservingClosed (And.intro E.multiplicativeClosed E.unitalClosed)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse