import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def cwProjection : Projection CWEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cw_projection_idempotent (x : CWEndgameState) :
    cwProjection.toFun (cwProjection.toFun x) = cwProjection.toFun x := by
  exact cwProjection.idempotent x

end CAlgebrasWAlgebrasRelationTheoremCanonicalLaneLean
end HautevilleHouse
