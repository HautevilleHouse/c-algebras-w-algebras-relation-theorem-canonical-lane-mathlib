import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure ClassificationFactorsPackage {C : CStarAlgebraPackage} {W : WStarAlgebraPackage C} {T : TomitaTakesakiPackage C W} where
  typeI : Prop
  typeII : Prop
  typeIII : Prop
  hyperfinite : Prop
  amenable : Prop
  bicommutantRelation : Prop

structure ClassificationFactorsEvidence {C : CStarAlgebraPackage} {W : WStarAlgebraPackage C} {T : TomitaTakesakiPackage C W} (F : ClassificationFactorsPackage C W T) where
  typeIClosed : F.typeI
  typeIIClosed : F.typeII
  typeIIIClosed : F.typeIII
  hyperfiniteClosed : F.hyperfinite
  amenableClosed : F.amenable
  bicommutantRelationClosed : F.bicommutantRelation

def ClassificationFactorsClosed {C : CStarAlgebraPackage} {W : WStarAlgebraPackage C} {T : TomitaTakesakiPackage C W} (F : ClassificationFactorsPackage C W T) : Prop :=
  F.typeI ∧ F.typeII ∧ F.typeIII ∧ F.hyperfinite ∧ F.amenable ∧ F.bicommutantRelation

theorem classification_factors_closed_from_evidence {C : CStarAlgebraPackage} {W : WStarAlgebraPackage C} {T : TomitaTakesakiPackage C W} (F : ClassificationFactorsPackage C W T) (E : ClassificationFactorsEvidence F) :
    ClassificationFactorsClosed F := by
  exact And.intro E.typeIClosed (And.intro E.typeIIClosed (And.intro E.typeIIIClosed (And.intro E.hyperfiniteClosed (And.intro E.amenableClosed E.bicommutantRelationClosed))))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse