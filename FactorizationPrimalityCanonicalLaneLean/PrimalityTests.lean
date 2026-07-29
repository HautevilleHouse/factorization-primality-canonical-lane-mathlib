import FactorizationPrimalityCanonicalLaneLean.PrimeFactorizationAlgorithms

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure FermatTestPackage where
  base : ℕ
  iterations : ℕ
  witnesses : List ℕ

structure MillerRabinTestPackage where
  bases : List ℕ
  accuracy : ℚ

structure AKSPrimalityTestPackage where
  polynomialDegree : ℕ
  proofLength : ℕ
  deterministic : Prop

structure PrimalityTestsPackage where
  fermat : FermatTestPackage
  millerRabin : MillerRabinTestPackage
  aks : AKSPrimalityTestPackage

structure PrimalityTestsEvidence (P : PrimalityTestsPackage) where
  fermatClosed : Prop
  millerRabinClosed : Prop
  aksClosed : Prop

def PrimalityTestsClosed (P : PrimalityTestsPackage) : Prop :=
  P.fermat.iterations > 0 ∧ P.millerRabin.bases ≠ [] ∧ P.aks.deterministic

theorem primality_tests_closed_from_evidence (P : PrimalityTestsPackage) (E : PrimalityTestsEvidence P) : PrimalityTestsClosed P := by
  exact And.intro E.fermatClosed (And.intro E.millerRabinClosed E.aksClosed)

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse