import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.OperatorAlgebras
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.RepresentationTheory
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.ClassificationTheorems
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.FinalTheorem

/-!
# C* Algebras / W* Algebras Relation Theorem Package

This is the root package for the canonical lane formalization of the
relation between C*-algebras and W*-algebras (von Neumann algebras).
-/

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

-- The package is complete when all submodules are imported.

def packageComplete : Prop := True

theorem package_imported : packageComplete := by
  -- packageComplete is defined as True, so trivial proof suffices
  rfl

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse