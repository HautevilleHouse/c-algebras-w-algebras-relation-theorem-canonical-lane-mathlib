import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure TomitaTakesakiPackage {C : CStarAlgebraPackage} {W : WStarAlgebraPackage C} where
  modularOperator : Type u
  modularConjugation : Type v
  modularAutomorphismGroup : Type w
  kmsCondition : Prop
  standardForm : Prop

structure TomitaTakesakiEvidence {C : CStarAlgebraPackage} {W : WStarAlgebraPackage C} (T : TomitaTakesakiPackage C W) where
  kmsConditionClosed : T.kmsCondition
  standardFormClosed : T.standardForm

def TomitaTakesakiClosed {C : CStarAlgebraPackage} {W : WStarAlgebraPackage C} (T : TomitaTakesakiPackage C W) : Prop :=
  T.kmsCondition ∧ T.standardForm

theorem tomita_takesaki_closed_from_evidence {C : CStarAlgebraPackage} {W : WStarAlgebraPackage C} (T : TomitaTakesakiPackage C W) (E : TomitaTakesakiEvidence T) :
    TomitaTakesakiClosed T := by
  exact And.intro E.kmsConditionClosed E.standardFormClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse