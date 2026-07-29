import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CStarAlgebra
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.WStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CStarWStarRelationPackage (C : CStarAlgebraPackage) (W : WStarAlgebraPackage) where
  cstarEmbedding : C.carrier → W.carrier
  embeddingIsStarHom : StarHom C.carrier W.carrier cstarEmbedding
  embeddingIsIsometric : ∀ x : C.carrier, ‖cstarEmbedding x‖ = ‖x‖
  doubleDualIsWStar : IsDoubleDual (C.carrier) (W.carrier)
  predualOfWStarIsCStar : Predual (W.carrier) ≃+ C.carrier

structure CStarWStarRelationEvidence {C : CStarAlgebraPackage} {W : WStarAlgebraPackage}
    (R : CStarWStarRelationPackage C W) where
  embeddingIsStarHomClosed : R.embeddingIsStarHom
  embeddingIsIsometricClosed : R.embeddingIsIsometric
  doubleDualIsWStarClosed : R.doubleDualIsWStar
  predualOfWStarIsCStarClosed : R.predualOfWStarIsCStar

def CStarWStarRelationClosed {C : CStarAlgebraPackage} {W : WStarAlgebraPackage}
    (R : CStarWStarRelationPackage C W) : Prop :=
  R.embeddingIsStarHom ∧ R.embeddingIsIsometric ∧ R.doubleDualIsWStar ∧ R.predualOfWStarIsCStar

theorem cstar_wstar_relation_closed_from_evidence
    {C : CStarAlgebraPackage} {W : WStarAlgebraPackage}
    (R : CStarWStarRelationPackage C W) (E : CStarWStarRelationEvidence R) :
    CStarWStarRelationClosed R := by
  exact And.intro E.embeddingIsStarHomClosed
    (And.intro E.embeddingIsIsometricClosed
      (And.intro E.doubleDualIsWStarClosed E.predualOfWStarIsCStarClosed))

def ConstrainedCStarWStarClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cstar_wstar_endgame (A : AdmissibleClass) :
    ConstrainedCStarWStarClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse