import Mathlib.Analysis.Calculus.ContDiff
import Mathlib.MeasureTheory.Integral.Bochner

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure EllipticOperatorPackage where
  carrier : Type u
  operator : (carrier → ℝ) → (carrier → ℝ)
  ellipticCondition : Prop
  smoothCoefficients : Prop
  coercivityEstimate : Prop

structure EllipticOperatorEvidence (E : EllipticOperatorPackage) where
  ellipticConditionClosed : E.ellipticCondition
  smoothCoefficientsClosed : E.smoothCoefficients
  coercivityEstimateClosed : E.coercivityEstimate

def EllipticOperatorClosed (E : EllipticOperatorPackage) : Prop :=
  E.ellipticCondition ∧ E.smoothCoefficients ∧ E.coercivityEstimate

theorem elliptic_operator_closed_from_evidence
    (E : EllipticOperatorPackage) (Ev : EllipticOperatorEvidence E) :
    EllipticOperatorClosed E := by
  exact And.intro Ev.ellipticConditionClosed
    (And.intro Ev.smoothCoefficientsClosed Ev.coercivityEstimateClosed)

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse