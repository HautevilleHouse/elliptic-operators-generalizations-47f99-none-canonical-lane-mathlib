import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.GeneticEllipticOperator

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure LinkageAnalysisPackage {E : EllipticOperatorPackage} where
  markers : Type u
  lodScore : Type v
  linkageDetected : Prop
  operatorBoundaryValue : Prop

structure LinkageAnalysisEvidence {E : EllipticOperatorPackage}
    (L : LinkageAnalysisPackage E) where
  linkageDetectedClosed : L.linkageDetected
  operatorBoundaryValueClosed : L.operatorBoundaryValue

def LinkageAnalysisClosed {E : EllipticOperatorPackage}
    (L : LinkageAnalysisPackage E) : Prop :=
  L.linkageDetected ∧ L.operatorBoundaryValue

theorem linkage_analysis_closed_from_evidence
    {E : EllipticOperatorPackage} (L : LinkageAnalysisPackage E)
    (Ev : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro Ev.linkageDetectedClosed Ev.operatorBoundaryValueClosed

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse