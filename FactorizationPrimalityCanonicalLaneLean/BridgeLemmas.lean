import FactorizationPrimalityCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FactorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse