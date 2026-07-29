import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CStarAlgebra where
  carrier : Type
  algebraStructure : Prop
  involution : Prop
  norm : Prop
  complete : Prop

structure WStarAlgebra where
  carrier : Type
  algebraStructure : Prop
  involution : Prop
  norm : Prop
  complete : Prop
  predual : Prop

structure CStarWStarAdmittedObject where
  cstarAlgebra : CStarAlgebra
  envelopingWStarAlgebra : WStarAlgebra
  isCStarAlgebra : cstarAlgebra.algebraStructure ∧ cstarAlgebra.involution ∧ cstarAlgebra.norm ∧ cstarAlgebra.complete
  isWStarAlgebra : envelopingWStarAlgebra.algebraStructure ∧ envelopingWStarAlgebra.involution ∧ envelopingWStarAlgebra.norm ∧ envelopingWStarAlgebra.complete ∧ envelopingWStarAlgebra.predual
  doubleDualRelation : Prop
  conclusion : doubleDualRelation

structure CStarWStarEndgameState where
  object : CStarWStarAdmittedObject

def CStarWStarWitnessClosed (O : CStarWStarAdmittedObject) : Prop :=
  O.doubleDualRelation

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse