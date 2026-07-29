import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CWRelationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse
