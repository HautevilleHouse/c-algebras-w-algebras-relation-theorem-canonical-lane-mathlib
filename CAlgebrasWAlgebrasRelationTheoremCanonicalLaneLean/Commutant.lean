import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure Commutant (A : CStarAlgebra) where
  subalgebra : Set A.carrier
  closedUnderStar : ∀ x ∈ subalgebra, star x ∈ subalgebra
  containsIdentity : A.one ∈ subalgebra
  commutantProperty : ∀ x y ∈ subalgebra, x * y = y * x

structure DoubleCommutant (A : CStarAlgebra) where
  commutant : Commutant A
  doubleCommutantProperty : Commutant (Subtype (fun (x : A.carrier) => x ∈ commutant.subalgebra))

def CommutantClosed {A : CStarAlgebra} (C : Commutant A) : Prop :=
  C.closedUnderStar ∧ C.containsIdentity ∧ C.commutantProperty

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse