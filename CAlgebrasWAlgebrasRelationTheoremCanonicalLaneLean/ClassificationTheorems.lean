import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure ClassificationPackage (A : CStarAlgebra) (M : WStarAlgebra) where
  relationStatement : Prop
  embedding : Type
  spatialIsomorphism : Prop
  connesInvariant : Prop

structure ClassificationEvidence (A : CStarAlgebra) (M : WStarAlgebra) (P : ClassificationPackage A M) where
  relationStatementClosed : P.relationStatement
  embeddingClosed : Nonempty P.embedding
  spatialIsomorphismClosed : P.spatialIsomorphism
  connesInvariantClosed : P.connesInvariant

def ClassificationClosed (A : CStarAlgebra) (M : WStarAlgebra) (P : ClassificationPackage A M) : Prop :=
  P.relationStatement ∧ Nonempty P.embedding ∧ P.spatialIsomorphism ∧ P.connesInvariant

theorem classification_closed_from_evidence (A : CStarAlgebra) (M : WStarAlgebra)
    (P : ClassificationPackage A M) (E : ClassificationEvidence A M P) : ClassificationClosed A M P := by
  exact And.intro E.relationStatementClosed (And.intro E.embeddingClosed
    (And.intro E.spatialIsomorphismClosed E.connesInvariantClosed))

structure CStarWStarRelationTheorem where
  statement : Prop
  proofStrategy : String

def cstar_wstar_relation_theorem_closed (R : CStarWStarRelationTheorem) : Prop :=
  R.statement

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse