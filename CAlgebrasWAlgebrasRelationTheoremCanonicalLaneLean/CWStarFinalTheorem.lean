import CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CWStarGateLemmas

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

def ConstrainedCWStarClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cwstar_endgame (A : AdmissibleClass) :
    ConstrainedCWStarClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse