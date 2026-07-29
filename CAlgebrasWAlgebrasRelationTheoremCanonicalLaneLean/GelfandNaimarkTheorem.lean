import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure GelfandNaimarkTheoremStatement where
  algebraCarrier : Type u
  isCommutativeCStar : Prop
  isCompactHausdorff : Prop
  homeomorphicSpectrum : Prop
  isometricStarAlgebraIsomorphism : Prop

structure GelfandNaimarkTheoremEvidence (G : GelfandNaimarkTheoremStatement) where
  isCommutativeCStarClosed : G.isCommutativeCStar
  isCompactHausdorffClosed : G.isCompactHausdorff
  homeomorphicSpectrumClosed : G.homeomorphicSpectrum
  isometricStarAlgebraIsomorphismClosed : G.isometricStarAlgebraIsomorphism

def GelfandNaimarkTheoremClosed (G : GelfandNaimarkTheoremStatement) : Prop :=
  G.isCommutativeCStar ∧ G.isCompactHausdorff ∧ G.homeomorphicSpectrum ∧ G.isometricStarAlgebraIsomorphism

theorem gelfand_naimark_theorem_closed_from_evidence (G : GelfandNaimarkTheoremStatement)
    (E : GelfandNaimarkTheoremEvidence G) : GelfandNaimarkTheoremClosed G :=
  And.intro E.isCommutativeCStarClosed (And.intro E.isCompactHausdorffClosed (And.intro E.homeomorphicSpectrumClosed E.isometricStarAlgebraIsomorphismClosed))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse