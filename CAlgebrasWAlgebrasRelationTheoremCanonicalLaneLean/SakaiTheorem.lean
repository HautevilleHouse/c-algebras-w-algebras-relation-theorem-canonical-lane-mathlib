import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure SakaiTheoremStatement where
  cstarAlgebraCarrier : Type u
  wstarAlgebraCarrier : Type v
  wstarAlgebraIsDual : IsDual wstarAlgebraCarrier (Type w)
  isometricEmbedding : Prop
  wstarClosedSubalgebra : Prop
  equivalence : isometricEmbedding ↔ wstarClosedSubalgebra

structure SakaiTheoremEvidence (S : SakaiTheoremStatement) where
  equivalenceClosed : S.equivalence

def SakaiTheoremClosed (S : SakaiTheoremStatement) : Prop :=
  S.equivalence

theorem sakai_theorem_closed_from_evidence (S : SakaiTheoremStatement)
    (E : SakaiTheoremEvidence S) : SakaiTheoremClosed S :=
  E.equivalenceClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse