import FactorizationPrimalityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def factorProjection : Projection FactorEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem factor_projection_idempotent (x : FactorEndgameState) :
    factorProjection.toFun (factorProjection.toFun x) = factorProjection.toFun x := by
  exact factorProjection.idempotent x

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse