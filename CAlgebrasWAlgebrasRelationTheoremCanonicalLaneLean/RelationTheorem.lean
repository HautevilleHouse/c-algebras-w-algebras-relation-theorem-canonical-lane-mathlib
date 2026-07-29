import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure RelationTheoremPackage (C : CStarAlgebraPackage) (W : WStarAlgebraPackage) where
  categoricalEquivalence : Prop
  equivalencePreservesStructure : Prop
  equivalencePreservesStructureTerm : equivalencePreservesStructure
  relationEstablished : equivalencePreservesStructure → categoricalEquivalence

structure RelationTheoremEvidence {C : CStarAlgebraPackage} {W : WStarAlgebraPackage}
    (R : RelationTheoremPackage C W) where
  categoricalEquivalenceClosed : R.categoricalEquivalence
  equivalencePreservesStructureClosed : R.equivalencePreservesStructure

def RelationTheoremClosed {C : CStarAlgebraPackage} {W : WStarAlgebraPackage}
    (R : RelationTheoremPackage C W) : Prop :=
  R.categoricalEquivalence ∧ R.equivalencePreservesStructure

theorem relation_theorem_closed_from_evidence
    {C : CStarAlgebraPackage} {W : WStarAlgebraPackage}
    (R : RelationTheoremPackage C W) (E : RelationTheoremEvidence R) :
    RelationTheoremClosed R := by
  exact And.intro E.categoricalEquivalenceClosed E.equivalencePreservesStructureClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse
