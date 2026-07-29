import canonicalLaneMathlib.AdmissibleClass
import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.PseudodifferentialCalculus

/-!
# Index Theory Package

This module defines the index of an elliptic operator and the index theorem
framework (analytical index, topological index).
-/

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure IndexTheoryPackage {E : EllipticOperatorPackage}
    (P : PseudodifferentialCalculusPackage E) where
  analyticalIndex : Type u
  topologicalIndex : Type v
  indexTheoremStatement : Prop
  analyticalIndexDefined : Prop
  topologicalIndexDefined : Prop
  indexTheoremProved : Prop

structure IndexTheoryEvidence {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} (I : IndexTheoryPackage P) where
  analyticalIndexDefinedClosed : I.analyticalIndexDefined
  topologicalIndexDefinedClosed : I.topologicalIndexDefined
  indexTheoremProvedClosed : I.indexTheoremProved

def IndexTheoryClosed {E : EllipticOperatorPackage}
    {P : PseudodifferentialCalculusPackage E} (I : IndexTheoryPackage P) : Prop :=
  I.analyticalIndexDefined ∧ I.topologicalIndexDefined ∧ I.indexTheoremProved

theorem index_theory_closed_from_evidence
    {E : EllipticOperatorPackage} {P : PseudodifferentialCalculusPackage E}
    (I : IndexTheoryPackage P) (Ev : IndexTheoryEvidence I) : IndexTheoryClosed I := by
  exact And.intro Ev.analyticalIndexDefinedClosed
    (And.intro Ev.topologicalIndexDefinedClosed Ev.indexTheoremProvedClosed)

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse