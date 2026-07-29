import CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CStarWStarMathlibObjects

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure DoubleDualPackage where
  cstarAlgebra : CStarAlgebra
  envelopingWStar : WStarAlgebra
  doubleDualIsWStar : Prop
  cstarStruct : cstarAlgebra.algebraStructure ∧ cstarAlgebra.involution ∧ cstarAlgebra.norm ∧ cstarAlgebra.complete
  wstarStruct : envelopingWStar.algebraStructure ∧ envelopingWStar.involution ∧ envelopingWStar.norm ∧ envelopingWStar.complete ∧ envelopingWStar.predual

structure DoubleDualEvidence (D : DoubleDualPackage) where
  doubleDualIsWStarClosed : D.doubleDualIsWStar

def DoubleDualClosed (D : DoubleDualPackage) : Prop :=
  D.doubleDualIsWStar

theorem double_dual_closed_from_evidence (D : DoubleDualPackage) (E : DoubleDualEvidence D) :
    DoubleDualClosed D := by
  exact E.doubleDualIsWStarClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse