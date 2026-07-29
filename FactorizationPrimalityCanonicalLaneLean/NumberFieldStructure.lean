import FactorizationPrimalityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationPrimalityCanonicalLaneLean

structure NumberFieldPackage where
  baseField : Type u
  ringOfIntegers : Type v
  discriminant : ℕ
  classNumber : ℕ
  unitRank : ℕ
  signature : ℕ × ℕ

structure NumberFieldEvidence (N : NumberFieldPackage) where
  ringOfIntegersClosed : Prop
  discriminantClosed : Prop
  classNumberClosed : Prop
  unitRankClosed : Prop
  signatureClosed : Prop

def NumberFieldClosed (N : NumberFieldPackage) : Prop :=
  N.ringOfIntegers ≠ Empty ∧ N.discriminant > 0 ∧ N.classNumber > 0

theorem number_field_closed_from_evidence (N : NumberFieldPackage) (E : NumberFieldEvidence N) : NumberFieldClosed N := by
  exact And.intro E.ringOfIntegersClosed (And.intro E.discriminantClosed (And.intro E.classNumberClosed (And.intro E.unitRankClosed E.signatureClosed)))

end FactorizationPrimalityCanonicalLaneLean
end HautevilleHouse