import canonicalLaneMathlib.AdmissibleClass
import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.SpectralInvariants

/-!
# Boundary Value Problem Package

This module defines elliptic boundary value problems, including the Fredholm
property and regularity up to the boundary.
-/

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure BoundaryValueProblemPackage {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} {I : IndexTheoryPackage P}
    {S : SpectralInvariantsPackage I} where
  boundaryConditions : Type u
  fredholmProperty : Prop
  regularityEstimate : Prop
  boundaryConditionsDefined : Prop
  fredholmHolds : Prop
  regularityHolds : Prop

structure BoundaryValueProblemEvidence {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} {I : IndexTheoryPackage P}
    {S : SpectralInvariantsPackage I} (B : BoundaryValueProblemPackage S) where
  boundaryConditionsDefinedClosed : B.boundaryConditionsDefined
  fredholmHoldsClosed : B.fredholmHolds
  regularityHoldsClosed : B.regularityHolds

def BoundaryValueProblemClosed {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} {I : IndexTheoryPackage P}
    {S : SpectralInvariantsPackage I} (B : BoundaryValueProblemPackage S) : Prop :=
  B.boundaryConditionsDefined ∧ B.fredholmHolds ∧ B.regularityHolds

theorem boundary_value_problem_closed_from_evidence
    {E : EllipticOperatorPackage} {P : PseudodifferentialCalculusPackage E}
    {I : IndexTheoryPackage P} {S : SpectralInvariantsPackage I}
    (B : BoundaryValueProblemPackage S) (Ev : BoundaryValueProblemEvidence B) :
    BoundaryValueProblemClosed B := by
  exact And.intro Ev.boundaryConditionsDefinedClosed
    (And.intro Ev.fredholmHoldsClosed Ev.regularityHoldsClosed)

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse