import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CWStarAdmittedObject where
  algebra : Type
  cstarNorm : algebra → ℝ
  wstarTopology : TopologicalSpace algebra
  cstarComplete : Prop
  wstarDualSpace : Prop
  doubleDualIsometry : Prop
  conclusion : cstarComplete ∧ wstarDualSpace ∧ doubleDualIsometry
  conclusionTerm : conclusion

structure AdmissibleClass where
  object : CWStarAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  let O := A.object
  O.cstarComplete ∧ O.wstarDualSpace ∧ O.doubleDualIsometry ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse