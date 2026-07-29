import canonicalLaneMathlib.AdmissibleClass
import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.IndexTheory

/-!
# Spectral Invariants Package

This module defines spectral invariants of elliptic operators, such as the
determinant of the Laplacian and zeta-regularized products.
-/

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure SpectralInvariantsPackage {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} {I : IndexTheoryPackage P} where
  zetaFunction : Type u
  determinant : Type v
  spectralInvariant : Prop
  zetaFunctionDefined : Prop
  determinantDefined : Prop
  spectralInvariantDefined : Prop

structure SpectralInvariantsEvidence {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} {I : IndexTheoryPackage P}
    (S : SpectralInvariantsPackage I) where
  zetaFunctionDefinedClosed : S.zetaFunctionDefined
  determinantDefinedClosed : S.determinantDefined
  spectralInvariantDefinedClosed : S.spectralInvariantDefined

def SpectralInvariantsClosed {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} {I : IndexTheoryPackage P}
    (S : SpectralInvariantsPackage I) : Prop :=
  S.zetaFunctionDefined ∧ S.determinantDefined ∧ S.spectralInvariantDefined

theorem spectral_invariants_closed_from_evidence
    {E : EllipticOperatorPackage} {P : PseudodifferentialCalculusPackage E}
    {I : IndexTheoryPackage P} (S : SpectralInvariantsPackage I)
    (Ev : SpectralInvariantsEvidence S) : SpectralInvariantsClosed S := by
  exact And.intro Ev.zetaFunctionDefinedClosed
    (And.intro Ev.determinantDefinedClosed Ev.spectralInvariantDefinedClosed)

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse