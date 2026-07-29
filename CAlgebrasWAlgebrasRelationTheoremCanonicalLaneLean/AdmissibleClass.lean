import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CWAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CWRelationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse
