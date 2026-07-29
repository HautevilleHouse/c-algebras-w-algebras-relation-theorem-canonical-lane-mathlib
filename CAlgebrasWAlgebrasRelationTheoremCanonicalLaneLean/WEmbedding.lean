import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

structure WEmbedding (A : CAlgebra) (W : WAlgebra) where
  phi : A.carrier → W.carrier
  multiplicative : ∀ a b : A.carrier, phi (A.mul a b) = W.mul (phi a) (phi b)
  starPreserving : ∀ a : A.carrier, phi (A.star a) = W.star (phi a)
  isometric : ∀ a : A.carrier, W.norm (phi a) = A.norm a
  unital : phi A.one = W.one

structure WEmbeddingEvidence (A : CAlgebra) (W : WAlgebra) (E : WEmbedding A W) where
  multiplicativeClosed : E.multiplicative
  starPreservingClosed : E.starPreserving
  isometricClosed : E.isometric
  unitalClosed : E.unital

def WEmbeddingClosed (A : CAlgebra) (W : WAlgebra) (E : WEmbedding A W) : Prop :=
  E.multiplicative ∧ E.starPreserving ∧ E.isometric ∧ E.unital

theorem w_embedding_closed_from_evidence (A : CAlgebra) (W : WAlgebra) (E : WEmbedding A W)
    (Ev : WEmbeddingEvidence A W E) : WEmbeddingClosed A W E :=
  And.intro Ev.multiplicativeClosed (And.intro Ev.starPreservingClosed (And.intro Ev.isometricClosed Ev.unitalClosed))

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse