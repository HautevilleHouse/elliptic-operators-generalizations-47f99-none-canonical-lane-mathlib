import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse