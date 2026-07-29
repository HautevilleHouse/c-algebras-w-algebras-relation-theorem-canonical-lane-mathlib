import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure Representation (A : CStarAlgebra) where
  carrier : Type u
  action : A → (carrier → carrier)
  isStarHomomorphism : Prop
  nondegenerate : Prop

structure RepresentationEquivalence (A : CStarAlgebra) (π₁ π₂ : Representation A) where
  unitaryOperator : π₁.carrier → π₂.carrier
  intertwining : Prop

structure RepresentationPackage (A : CStarAlgebra) where
  allRepresentations : Type v
  faithfulRepresentation : Representation A
  irreducibleDecomposition : Prop

structure RepresentationEvidence (A : CStarAlgebra) (P : RepresentationPackage A) where
  faithfulRepresentationClosed : P.faithfulRepresentation.isStarHomomorphism
  irreducibleDecompositionClosed : P.irreducibleDecomposition

def RepresentationPackageClosed (A : CStarAlgebra) (P : RepresentationPackage A) : Prop :=
  P.faithfulRepresentation.isStarHomomorphism ∧ P.irreducibleDecomposition

theorem representation_package_closed_from_evidence (A : CStarAlgebra) (P : RepresentationPackage A)
    (E : RepresentationEvidence A P) : RepresentationPackageClosed A P := by
  exact And.intro E.faithfulRepresentationClosed E.irreducibleDecompositionClosed

structure WStarRepresentation (M : WStarAlgebra) extends Representation M.toCStarAlgebra where
  normal : Prop

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse