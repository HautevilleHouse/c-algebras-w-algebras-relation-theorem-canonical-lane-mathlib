import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure NormalHomomorphismPackage where
  sourceAlgebra : Type u
  targetAlgebra : Type v
  homomorphism : sourceAlgebra → targetAlgebra
  normalProperty : Prop
  kernelStructure : Prop
  imageStructure : Prop

def NormalHomomorphismClosed (P : NormalHomomorphismPackage) : Prop :=
  P.normalProperty ∧ P.kernelStructure ∧ P.imageStructure

structure NormalHomomorphismEvidence (P : NormalHomomorphismPackage) where
  normalPropertyClosed : P.normalProperty
  kernelStructureClosed : P.kernelStructure
  imageStructureClosed : P.imageStructure

theorem normal_homomorphism_closed_from_evidence
    (P : NormalHomomorphismPackage) (E : NormalHomomorphismEvidence P) :
    NormalHomomorphismClosed P := by
  exact And.intro E.normalPropertyClosed
    (And.intro E.kernelStructureClosed E.imageStructureClosed)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse