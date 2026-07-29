import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CWSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CWAdmittedObject where
  space : CWSpace
  cstarAlgebra : Prop
  wstarAlgebra : Prop
  relationHolds : Prop
  conclusion : relationHolds

structure CWEndgameState where
  object : CWAdmittedObject

def CWRelationWitnessClosed (O : CWAdmittedObject) : Prop :=
  O.relationHolds

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse
