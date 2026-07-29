import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FactorizationPrimalityCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "factorization-primality-canonical-lane",
    theoremObject := "Factorization Primality",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "theorem-specific endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse