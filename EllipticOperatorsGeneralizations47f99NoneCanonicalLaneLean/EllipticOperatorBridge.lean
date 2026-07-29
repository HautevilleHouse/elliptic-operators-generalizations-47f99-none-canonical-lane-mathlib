import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | (O : EllipticAdmittedObject) => O.symbolCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A.object with ⟨O⟩
  exact O.conclusion.1

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse
