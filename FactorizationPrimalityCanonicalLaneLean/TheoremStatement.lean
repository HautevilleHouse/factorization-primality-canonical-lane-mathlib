import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure FactorizationAdmittedObject where
  number : ℕ
  isPrime : Prop
  factorization : List ℕ
  conclusion : isPrime ∨ (∃ (f : ℕ), f ≠ 1 ∧ f ≠ number ∧ f ∣ number)

def FactorizationWitnessClosed (O : FactorizationAdmittedObject) : Prop :=
  O.isPrime ∨ (∃ (f : ℕ), f ≠ 1 ∧ f ≠ number ∧ f ∣ number)

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse
