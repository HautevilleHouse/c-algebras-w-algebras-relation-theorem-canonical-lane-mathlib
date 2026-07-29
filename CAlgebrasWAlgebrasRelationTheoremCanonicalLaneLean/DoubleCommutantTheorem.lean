import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure DoubleCommutantPackage where
  algebra : Type u
  representation : Type v
  commutant : Type w
  doubleCommutant : Type x
  inclusionProperty : Prop
  densityProperty : Prop

def DoubleCommutantClosed (P : DoubleCommutantPackage) : Prop :=
  P.inclusionProperty ∧ P.densityProperty

structure DoubleCommutantEvidence (P : DoubleCommutantPackage) where
  inclusionPropertyClosed : P.inclusionProperty
  densityPropertyClosed : P.densityProperty

theorem double_commutant_closed_from_evidence
    (P : DoubleCommutantPackage) (E : DoubleCommutantEvidence P) :
    DoubleCommutantClosed P := by
  exact And.intro E.inclusionPropertyClosed E.densityPropertyClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse