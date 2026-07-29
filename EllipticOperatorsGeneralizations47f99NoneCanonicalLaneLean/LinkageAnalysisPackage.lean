import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerSet : Type
  recombinationRate : ℝ → ℝ
  lodScore : ℝ
  significantLinkage : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  lodScoreCalculated : L.lodScore > 3.0
  significantLinkageClosed : L.significantLinkage

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.lodScore > 3.0 ∧ L.significantLinkage

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
  LinkageAnalysisClosed L := by
  exact And.intro E.lodScoreCalculated E.significantLinkageClosed

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse
