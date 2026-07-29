import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure AdmissibleClass where
  object : FactorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FactorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse