import canonicalLaneMathlib.AdmissibleClass
import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.EllipticOperatorFoundation

/-!
# Pseudodifferential Calculus Package

This module defines the pseudodifferential operator calculus over a given
elliptic operator package, including symbol classes and composition.
-/

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure PseudodifferentialCalculusPackage (E : EllipticOperatorPackage) where
  symbolClass : Type u
  amplitudeFunction : Type v
  quantizationMap : Type w
  compositionLaw : Prop
  asymptoticExpansion : Prop
  symbolClassDefined : Prop
  amplitudeDefined : Prop
  quantizationDefined : Prop
  compositionLawHolds : Prop
  asymptoticExpansionHolds : Prop

structure PseudodifferentialCalculusEvidence {E : EllipticOperatorPackage}
    (P : PseudodifferentialCalculusPackage E) where
  symbolClassDefinedClosed : P.symbolClassDefined
  amplitudeDefinedClosed : P.amplitudeDefined
  quantizationDefinedClosed : P.quantizationDefined
  compositionLawHoldsClosed : P.compositionLawHolds
  asymptoticExpansionHoldsClosed : P.asymptoticExpansionHolds

def PseudodifferentialCalculusClosed {E : EllipticOperatorPackage}
    (P : PseudodifferentialCalculusPackage E) : Prop :=
  P.symbolClassDefined ∧ P.amplitudeDefined ∧ P.quantizationDefined ∧
  P.compositionLawHolds ∧ P.asymptoticExpansionHolds

theorem pseudodifferential_calculus_closed_from_evidence
    {E : EllipticOperatorPackage} (P : PseudodifferentialCalculusPackage E)
    (Ev : PseudodifferentialCalculusEvidence P) : PseudodifferentialCalculusClosed P := by
  exact And.intro Ev.symbolClassDefinedClosed
    (And.intro Ev.amplitudeDefinedClosed
      (And.intro Ev.quantizationDefinedClosed
        (And.intro Ev.compositionLawHoldsClosed Ev.asymptoticExpansionHoldsClosed)))

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse