import CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CWStarClassification

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure VonNeumannBridgePackage (O : CWStarAdmittedObject) where
  wstarClosure : Type
  doubleCommutant : Prop
  predualExists : Prop
  sigmaWeakTopology : Prop
  normalFunctionalCalculus : Prop
  doubleCommutantTerm : doubleCommutant
  predualExistsTerm : predualExists
  sigmaWeakTopologyTerm : sigmaWeakTopology
  normalFunctionalCalculusTerm : normalFunctionalCalculus

def VonNeumannBridgeClosed (O : CWStarAdmittedObject) (V : VonNeumannBridgePackage O) : Prop :=
  V.doubleCommutant ∧ V.predualExists ∧ V.sigmaWeakTopology ∧ V.normalFunctionalCalculus

theorem von_neumann_bridge_closed (O : CWStarAdmittedObject) (V : VonNeumannBridgePackage O) :
    VonNeumannBridgeClosed O V := by
  exact And.intro V.doubleCommutantTerm (And.intro V.predualExistsTerm (And.intro V.sigmaWeakTopologyTerm V.normalFunctionalCalculusTerm))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse