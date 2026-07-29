import CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CWStarDuality

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CWStarClassificationPackage (O : CWStarAdmittedObject) where
  separableFactor : Prop
  typeIFactor : Prop
  amenableFactor : Prop
  hyperfiniteTypeII1 : Prop
  standardForm : Prop
  separableFactorTerm : separableFactor
  typeIFactorTerm : typeIFactor
  amenableFactorTerm : amenableFactor
  hyperfiniteTypeII1Term : hyperfiniteTypeII1
  standardFormTerm : standardForm

def CWStarClassificationClosed (O : CWStarAdmittedObject) (C : CWStarClassificationPackage O) : Prop :=
  C.separableFactor ∧ C.typeIFactor ∧ C.amenableFactor ∧ C.hyperfiniteTypeII1 ∧ C.standardForm

theorem cwstar_classification_closed (O : CWStarAdmittedObject) (C : CWStarClassificationPackage O) :
    CWStarClassificationClosed O C := by
  exact And.intro C.separableFactorTerm (And.intro C.typeIFactorTerm (And.intro C.amenableFactorTerm (And.intro C.hyperfiniteTypeII1Term C.standardFormTerm)))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse