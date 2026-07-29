import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean.CStarAlgebrasPackage

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

/-!
# W*-algebras Package

This module defines the formal structure for W*-algebras, which are
C*-algebras that are duals of Banach spaces.
-/

structure WStarAlgebra where
  cstar : CStarAlgebra
  predual : Type u
  isometricIsomorphism : (normedDual predual) ≃ₘ[ℂ] carrier
  where
    carrier : Type u := cstar.carrier
    normedDual : Type u := predual → ℂ

structure WStarAlgebraEvidence (W : WStarAlgebra) where
  isometricIsomorphismClosed : W.isometricIsomorphism

def WStarAlgebraClosed (W : WStarAlgebra) : Prop :=
  W.isometricIsomorphism

theorem wstar_algebra_closed_from_evidence (W : WStarAlgebra) (E : WStarAlgebraEvidence W) :
    WStarAlgebraClosed W := by
  exact E.isometricIsomorphismClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse