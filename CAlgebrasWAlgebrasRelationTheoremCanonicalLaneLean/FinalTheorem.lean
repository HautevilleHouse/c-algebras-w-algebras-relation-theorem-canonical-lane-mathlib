import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

def ConstrainedCWRelationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cw_relation_endgame (A : AdmissibleClass) :
    ConstrainedCWRelationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse
