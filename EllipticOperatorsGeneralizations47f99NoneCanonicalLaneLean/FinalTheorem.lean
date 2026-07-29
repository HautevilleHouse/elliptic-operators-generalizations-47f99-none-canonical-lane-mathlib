import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

def ConstrainedEllipticOperatorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_elliptic_operator_endgame (A : AdmissibleClass) :
    ConstrainedEllipticOperatorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse