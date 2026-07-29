import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.GeneticEllipticOperator

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure HardyWeinbergPackage {E : EllipticOperatorPackage} where
  alleleFrequencies : Type u
  genotypeFrequencies : Type v
  equilibriumEquation : Prop
  operatorSolution : Prop

structure HardyWeinbergEvidence {E : EllipticOperatorPackage}
    (H : HardyWeinbergPackage E) where
  equilibriumEquationClosed : H.equilibriumEquation
  operatorSolutionClosed : H.operatorSolution

def HardyWeinbergClosed {E : EllipticOperatorPackage}
    (H : HardyWeinbergPackage E) : Prop :=
  H.equilibriumEquation ∧ H.operatorSolution

theorem hardy_weinberg_closed_from_evidence
    {E : EllipticOperatorPackage} (H : HardyWeinbergPackage E)
    (Ev : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro Ev.equilibriumEquationClosed Ev.operatorSolutionClosed

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse