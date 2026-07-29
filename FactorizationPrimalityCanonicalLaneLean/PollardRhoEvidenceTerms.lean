import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure PollardRhoEvidenceTerms where
  cycleDetection : Prop
  collisionProbability : Prop
  expectedIterations : Prop
  factorFound : Prop
  rhoEvidence : PrimalityTestingEvidence (by
    exact { candidate := 0, deterministicTest := False, probabilisticTest := True,
           witnessSet := True, compositenessCertificate := False } : PrimalityTestingPackage)
  primalityTestingClosed : PrimalityTestingClosed (by
    exact { candidate := 0, deterministicTest := False, probabilisticTest := True,
           witnessSet := True, compositenessCertificate := False } : PrimalityTestingPackage)

def PollardRhoEvidenceTerms.mk (c : PrimalityTestingPackage) (e : PrimalityTestingEvidence c)
    (cycle : Prop) (collision : Prop) (iters : Prop) (factor : Prop) : PollardRhoEvidenceTerms :=
  { cycleDetection := cycle,
    collisionProbability := collision,
    expectedIterations := iters,
    factorFound := factor,
    rhoEvidence := e,
    primalityTestingClosed := primality_testing_closed_from_evidence c e
  }

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse