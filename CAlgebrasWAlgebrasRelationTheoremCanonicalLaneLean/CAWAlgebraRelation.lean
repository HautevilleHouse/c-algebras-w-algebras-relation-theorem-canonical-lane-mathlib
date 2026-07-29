import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CAWAlgebraRelationPackage where
  cStarAlgebra : Type u
  wStarAlgebra : Type v
  representation : Type w
  inclusionMap : cStarAlgebra → wStarAlgebra
  doubleCommutantProperty : Prop
  predual : Type x
  sigmaWeakTopology : Prop
  normalHomomorphism : Prop
  spatialIsomorphism : Prop
  functoriality : Prop

def CAWAlgebraRelationClosed (P : CAWAlgebraRelationPackage) : Prop :=
  P.doubleCommutantProperty ∧ P.sigmaWeakTopology ∧ P.normalHomomorphism ∧
  P.spatialIsomorphism ∧ P.functoriality

structure CAWAlgebraRelationEvidence (P : CAWAlgebraRelationPackage) where
  doubleCommutantPropertyClosed : P.doubleCommutantProperty
  sigmaWeakTopologyClosed : P.sigmaWeakTopology
  normalHomomorphismClosed : P.normalHomomorphism
  spatialIsomorphismClosed : P.spatialIsomorphism
  functorialityClosed : P.functoriality

theorem ca_w_algebra_relation_closed_from_evidence
    (P : CAWAlgebraRelationPackage) (E : CAWAlgebraRelationEvidence P) :
    CAWAlgebraRelationClosed P := by
  exact And.intro E.doubleCommutantPropertyClosed
    (And.intro E.sigmaWeakTopologyClosed
      (And.intro E.normalHomomorphismClosed
        (And.intro E.spatialIsomorphismClosed E.functorialityClosed)))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse