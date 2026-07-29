import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure FactorizationPrimalitySpace where
  carrier : Type
  discreteTopology : TopologicalSpace carrier

structure FactorizationAdmittedObject where
  space : FactorizationPrimalitySpace
  expectedPrime : ℕ
  compositeCandidate : ℕ
  factorFound : Prop
  conclusion : factorFound

structure FactorizationEndgameState where
  object : FactorizationAdmittedObject

def FactorizationWitnessClosed (O : FactorizationAdmittedObject) : Prop :=
  O.factorFound

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse