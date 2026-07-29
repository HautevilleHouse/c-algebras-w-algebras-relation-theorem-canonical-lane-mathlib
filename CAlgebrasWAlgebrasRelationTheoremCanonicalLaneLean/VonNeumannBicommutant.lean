import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.WStarAlgebra
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.Commutant

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure VonNeumannBicommutantPackage (W : WStarAlgebra) where
  selfAdjointSubalgebra : Type u
  doubleCommutant : DoubleCommutant (CStarAlgebra.mk W.carrier W.star W.norm W.multiplication W.addition W.zero W.one W.CStarAlgebraCondition W.isDual)
  weakClosure : Prop
  bicommutantTheorem : weakClosure ↔ doubleCommutant.doubleCommutantProperty

def VonNeumannBicommutantClosed {W : WStarAlgebra} (V : VonNeumannBicommutantPackage W) : Prop :=
  V.bicommutantTheorem

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse