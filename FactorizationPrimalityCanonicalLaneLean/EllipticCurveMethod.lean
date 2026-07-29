import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure EllipticCurveMethodPackage where
  curveParameters : Prop
  pointAddition : Prop
  scalarMultiplication : Prop
  groupOrderBound : Prop
  factorExtracted : Prop

structure EllipticCurveMethodEvidence (E : EllipticCurveMethodPackage) where
  curveParametersClosed : E.curveParameters
  pointAdditionClosed : E.pointAddition
  scalarMultiplicationClosed : E.scalarMultiplication
  groupOrderBoundClosed : E.groupOrderBound
  factorExtractedClosed : E.factorExtracted

def EllipticCurveMethodClosed (E : EllipticCurveMethodPackage) : Prop :=
  E.curveParameters ∧ E.pointAddition ∧ E.scalarMultiplication ∧
  E.groupOrderBound ∧ E.factorExtracted

theorem elliptic_curve_method_closed_from_evidence
    (E : EllipticCurveMethodPackage) (Ev : EllipticCurveMethodEvidence E) :
    EllipticCurveMethodClosed E :=
  And.intro Ev.curveParametersClosed
    (And.intro Ev.pointAdditionClosed
      (And.intro Ev.scalarMultiplicationClosed
        (And.intro Ev.groupOrderBoundClosed Ev.factorExtractedClosed)))

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse