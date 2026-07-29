import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure EllipticOperatorSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  differentiableStructure : Prop

structure EllipticAdmittedObject where
  space : EllipticOperatorSpace
  ellipticOperator : Type
  domain : Type
  symbolCondition : Prop
  fredholmIndex : ℤ
  indexComputed : indexComputed = fredholmIndex
  conclusion : symbolCondition ∧ fredholmIndex = 0

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse
