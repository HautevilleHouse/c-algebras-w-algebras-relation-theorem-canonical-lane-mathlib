import CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CWStarAlgebrasAdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CWStarDualityPackage (O : CWStarAdmittedObject) where
  cstarEmbedding : Type
  wstarPredual : Type
  isometricEmbedding : Prop
  weakStarDensity : Prop
  doubleDualIsometry : Prop
  isometricEmbeddingTerm : isometricEmbedding
  weakStarDensityTerm : weakStarDensity
  doubleDualIsometryTerm : doubleDualIsometry

def CWStarDualityClosed (O : CWStarAdmittedObject) (D : CWStarDualityPackage O) : Prop :=
  D.isometricEmbedding ∧ D.weakStarDensity ∧ D.doubleDualIsometry

theorem cwstar_duality_closed (O : CWStarAdmittedObject) (D : CWStarDualityPackage O) :
    CWStarDualityClosed O D := by
  exact And.intro D.isometricEmbeddingTerm (And.intro D.weakStarDensityTerm D.doubleDualIsometryTerm)

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse