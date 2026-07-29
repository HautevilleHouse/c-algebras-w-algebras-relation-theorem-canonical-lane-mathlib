import CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.DoubleDual

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure KaplanskyDensityPackage {D : DoubleDualPackage} where
  cstarAlgebra : Type
  unitBallDenseInEnveloping : Prop
  doubleDualRelationUsed : D.doubleDualIsWStar

structure KaplanskyDensityEvidence {D : DoubleDualPackage} (K : KaplanskyDensityPackage D) where
  unitBallDenseInEnvelopingClosed : K.unitBallDenseInEnveloping

def KaplanskyDensityClosed {D : DoubleDualPackage} (K : KaplanskyDensityPackage D) : Prop :=
  K.unitBallDenseInEnveloping

theorem kaplansky_density_closed_from_evidence
    {D : DoubleDualPackage} (K : KaplanskyDensityPackage D) (E : KaplanskyDensityEvidence K) :
    KaplanskyDensityClosed K := by
  exact E.unitBallDenseInEnvelopingClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse