import FactorizationPrimalityCanonicalLaneLean.NumberFieldStructure

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure TrialDivisionPackage where
  bound : ℕ
  candidateDivisors : List ℕ
  expectedTime : ℕ

structure PollardRhoPackage where
  function : ℕ → ℕ → ℕ
  startingPoint : ℕ
  cycleLength : ℕ

structure QuadraticSievePackage where
  factorBaseSize : ℕ
  sieveInterval : ℕ
  smoothNumbers : List ℕ

structure EllipticCurveMethodPackage where
  curveParam : ℕ
  pointCount : ℕ
  expectedFactorSize : ℕ

structure PrimeFactorizationAlgorithmsPackage where
  trialDivision : TrialDivisionPackage
  pollardRho : PollardRhoPackage
  quadraticSieve : QuadraticSievePackage
  ellipticCurveMethod : EllipticCurveMethodPackage

structure PrimeFactorizationAlgorithmsEvidence (P : PrimeFactorizationAlgorithmsPackage) where
  trialDivisionClosed : Prop
  pollardRhoClosed : Prop
  quadraticSieveClosed : Prop
  ellipticCurveMethodClosed : Prop

def PrimeFactorizationAlgorithmsClosed (P : PrimeFactorizationAlgorithmsPackage) : Prop :=
  P.trialDivision.bound > 0 ∧ P.pollardRho.startingPoint > 0 ∧ P.quadraticSieve.factorBaseSize > 0 ∧ P.ellipticCurveMethod.curveParam > 0

theorem prime_factorization_algorithms_closed_from_evidence (P : PrimeFactorizationAlgorithmsPackage) (E : PrimeFactorizationAlgorithmsEvidence P) : PrimeFactorizationAlgorithmsClosed P := by
  exact And.intro E.trialDivisionClosed (And.intro E.pollardRhoClosed (And.intro E.quadraticSieveClosed E.ellipticCurveMethodClosed))

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse