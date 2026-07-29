import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.GeneticEllipticOperator

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure SequenceAlignmentPackage {E : EllipticOperatorPackage} where
  sequences : Type u
  alignmentScore : Type v
  optimalAlignmentExists : Prop
  operatorRegularization : Prop

structure SequenceAlignmentEvidence {E : EllipticOperatorPackage}
    (S : SequenceAlignmentPackage E) where
  optimalAlignmentExistsClosed : S.optimalAlignmentExists
  operatorRegularizationClosed : S.operatorRegularization

def SequenceAlignmentClosed {E : EllipticOperatorPackage}
    (S : SequenceAlignmentPackage E) : Prop :=
  S.optimalAlignmentExists ∧ S.operatorRegularization

theorem sequence_alignment_closed_from_evidence
    {E : EllipticOperatorPackage} (S : SequenceAlignmentPackage E)
    (Ev : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro Ev.optimalAlignmentExistsClosed Ev.operatorRegularizationClosed

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse