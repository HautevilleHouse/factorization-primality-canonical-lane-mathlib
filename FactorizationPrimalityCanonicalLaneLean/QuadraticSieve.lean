import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure QuadraticSievePackage where
  factorBase : Prop
  quadraticPolynomial : Prop
  smoothNumberSearch : Prop
  linearAlgebraStep : Prop
  factorFound : Prop

structure QuadraticSieveEvidence (Q : QuadraticSievePackage) where
  factorBaseClosed : Q.factorBase
  quadraticPolynomialClosed : Q.quadraticPolynomial
  smoothNumberSearchClosed : Q.smoothNumberSearch
  linearAlgebraStepClosed : Q.linearAlgebraStep
  factorFoundClosed : Q.factorFound

def QuadraticSieveClosed (Q : QuadraticSievePackage) : Prop :=
  Q.factorBase ∧ Q.quadraticPolynomial ∧ Q.smoothNumberSearch ∧
  Q.linearAlgebraStep ∧ Q.factorFound

theorem quadratic_sieve_closed_from_evidence
    (Q : QuadraticSievePackage) (E : QuadraticSieveEvidence Q) :
    QuadraticSieveClosed Q :=
  And.intro E.factorBaseClosed
    (And.intro E.quadraticPolynomialClosed
      (And.intro E.smoothNumberSearchClosed
        (And.intro E.linearAlgebraStepClosed E.factorFoundClosed)))

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse