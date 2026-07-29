import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure CStarAlgebraPackage where
  underlyingSpace : Type u
  norm : underlyingSpace → ℝ
  involution : underlyingSpace → underlyingSpace
  multiplication : underlyingSpace → underlyingSpace → underlyingSpace
  cstarIdentity : ∀ x : underlyingSpace, norm (multiplication x (involution x)) = (norm x) ^ 2
  complete : Prop
  completeTerm : complete

structure CStarAlgebraEvidence (C : CStarAlgebraPackage) where
  cstarIdentityClosed : C.cstarIdentity
  completeClosed : C.complete

def CStarAlgebraClosed (C : CStarAlgebraPackage) : Prop :=
  C.cstarIdentity ∧ C.complete

theorem cstar_algebra_closed_from_evidence (C : CStarAlgebraPackage) (E : CStarAlgebraEvidence C) :
    CStarAlgebraClosed C := by
  exact And.intro E.cstarIdentityClosed E.completeClosed

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse
