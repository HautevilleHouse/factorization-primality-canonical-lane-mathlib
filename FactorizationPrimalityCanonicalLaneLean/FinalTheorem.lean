import FactorizationPrimalityCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

def ConstrainedFactorizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_factorization_endgame (A : AdmissibleClass) :
    ConstrainedFactorizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse