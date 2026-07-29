import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.WStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure SpectralTheoremPackage (W : WStarAlgebra) where
  normalElements : Set W.carrier
  spectralMeasure : Type u
  functionalCalculus : Prop
  spectralDecomposition : Prop

def SpectralTheoremClosed {W : WStarAlgebra} (S : SpectralTheoremPackage W) : Prop :=
  S.functionalCalculus ∧ S.spectralDecomposition

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse