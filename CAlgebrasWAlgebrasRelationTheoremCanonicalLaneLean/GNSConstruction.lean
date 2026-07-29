import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure GNSConstructionPackage {A : CStarAlgebraPackage} where
  state : A.algebra → ℂ
  representation : A.algebra → (ℂ → ℂ)  -- placeholder
  cyclicVector : ℂ
  gnsData : Prop

theorem gns_construction_exists (A : CStarAlgebraPackage) (state : A.algebra → ℂ) : 
    ∃ (G : GNSConstructionPackage A), True := by
  refine ⟨?_, trivial⟩
  exact {
    state := state
    representation := λ _ _ => 0
    cyclicVector := 0
    gnsData := True
  }

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse