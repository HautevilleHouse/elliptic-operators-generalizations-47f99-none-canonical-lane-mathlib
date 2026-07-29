import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure AdmissibleClass where
  object : GeneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeneticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse