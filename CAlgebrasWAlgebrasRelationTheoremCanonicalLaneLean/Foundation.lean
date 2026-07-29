import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure FoundationPackage where
  cstar : CStarAlgebraPackage
  wstar : WStarAlgebraPackage
  relation : RelationTheoremPackage cstar wstar
  cstarEvidence : CStarAlgebraEvidence cstar
  wstarEvidence : WStarAlgebraEvidence wstar
  relationEvidence : RelationTheoremEvidence relation

def FoundationClosed (F : FoundationPackage) : Prop :=
  CStarAlgebraClosed F.cstar ∧
  WStarAlgebraClosed F.wstar ∧
  RelationTheoremClosed F.relation

theorem foundation_closed_from_evidence (F : FoundationPackage) :
    FoundationClosed F := by
  exact And.intro (cstar_algebra_closed_from_evidence F.cstar F.cstarEvidence)
    (And.intro (wstar_algebra_closed_from_evidence F.wstar F.wstarEvidence)
      (relation_theorem_closed_from_evidence F.relation F.relationEvidence))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse
