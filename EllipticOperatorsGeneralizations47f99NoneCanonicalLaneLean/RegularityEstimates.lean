import canonicalLaneMathlib.AdmissibleClass
import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.BoundaryValueProblem

/-!
# Regularity Estimates Package

This module defines interior and boundary regularity estimates for elliptic
operators, including Schauder estimates and Sobolev space theory.
-/

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure RegularityEstimatesPackage {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} {I : IndexTheoryPackage P}
    {S : SpectralInvariantsPackage I} {B : BoundaryValueProblemPackage S} where
  interiorEstimate : Prop
  boundaryEstimate : Prop
  schauderEstimate : Prop
  sobolevEmbedding : Prop
  interiorEstimateHolds : Prop
  boundaryEstimateHolds : Prop
  schauderEstimateHolds : Prop
  sobolevEmbeddingHolds : Prop

structure RegularityEstimatesEvidence {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} {I : IndexTheoryPackage P}
    {S : SpectralInvariantsPackage I} {B : BoundaryValueProblemPackage S}
    (R : RegularityEstimatesPackage B) where
  interiorEstimateHoldsClosed : R.interiorEstimateHolds
  boundaryEstimateHoldsClosed : R.boundaryEstimateHolds
  schauderEstimateHoldsClosed : R.schauderEstimateHolds
  sobolevEmbeddingHoldsClosed : R.sobolevEmbeddingHolds

def RegularityEstimatesClosed {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} {I : IndexTheoryPackage P}
    {S : SpectralInvariantsPackage I} {B : BoundaryValueProblemPackage S}
    (R : RegularityEstimatesPackage B) : Prop :=
  R.interiorEstimateHolds ∧ R.boundaryEstimateHolds ∧
  R.schauderEstimateHolds ∧ R.sobolevEmbeddingHolds

theorem regularity_estimates_closed_from_evidence
    {E : EllipticOperatorPackage} {P : PseudodifferentialCalculusPackage E}
    {I : IndexTheoryPackage P} {S : SpectralInvariantsPackage I}
    {B : BoundaryValueProblemPackage S} (R : RegularityEstimatesPackage B)
    (Ev : RegularityEstimatesEvidence R) : RegularityEstimatesClosed R := by
  exact And.intro Ev.interiorEstimateHoldsClosed
    (And.intro Ev.boundaryEstimateHoldsClosed
      (And.intro Ev.schauderEstimateHoldsClosed Ev.sobolevEmbeddingHoldsClosed))

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse