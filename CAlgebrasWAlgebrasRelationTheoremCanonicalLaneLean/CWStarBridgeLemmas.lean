import CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CWStarAlgebrasAdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.cstarComplete ∧ A.object.wstarDualSpace ∧ A.object.doubleDualIsometry

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusionTerm

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse