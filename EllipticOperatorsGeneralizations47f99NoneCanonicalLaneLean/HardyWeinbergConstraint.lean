import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure HardyWeinbergPackage where
  populationSize : ℕ
  alleleFrequencies : Type
  genotypeFrequencies : Type
  hwEquilibrium : Prop
  deviationMeasure : ℝ

structure HardyWeinbergEvidence (P : HardyWeinbergPackage) where
  hwEquilibriumClosed : P.hwEquilibrium
  deviationMeasureClosed : P.deviationMeasure = 0

def HardyWeinbergClosed (P : HardyWeinbergPackage) : Prop :=
  P.hwEquilibrium ∧ P.deviationMeasure = 0

theorem hardy_weinberg_closed_from_evidence (P : HardyWeinbergPackage) (E : HardyWeinbergEvidence P) :
  HardyWeinbergClosed P := by
  exact And.intro E.hwEquilibriumClosed E.deviationMeasureClosed

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse
