import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure PrimalityTestingPackage where
  candidate : ℕ
  deterministicTest : Prop
  probabilisticTest : Prop
  witnessSet : Prop
  compositenessCertificate : Prop

structure PrimalityTestingEvidence (P : PrimalityTestingPackage) where
  deterministicTestClosed : P.deterministicTest
  probabilisticTestClosed : P.probabilisticTest
  witnessSetClosed : P.witnessSet
  compositenessCertificateClosed : P.compositenessCertificate

def PrimalityTestingClosed (P : PrimalityTestingPackage) : Prop :=
  P.deterministicTest ∧ P.probabilisticTest ∧ P.witnessSet ∧ P.compositenessCertificate

theorem primality_testing_closed_from_evidence
    (P : PrimalityTestingPackage) (E : PrimalityTestingEvidence P) :
    PrimalityTestingClosed P :=
  And.intro E.deterministicTestClosed
    (And.intro E.probabilisticTestClosed
      (And.intro E.witnessSetClosed E.compositenessCertificateClosed))

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse