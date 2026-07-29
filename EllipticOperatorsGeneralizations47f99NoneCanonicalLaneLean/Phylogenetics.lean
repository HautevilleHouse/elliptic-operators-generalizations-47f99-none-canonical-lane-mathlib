import EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean.GeneticEllipticOperator

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure PhylogeneticsPackage {E : EllipticOperatorPackage} where
  treeTopology : Type u
  branchLengths : Type v
  likelihoodComputed : Prop
  operatorDiffusion : Prop

structure PhylogeneticsEvidence {E : EllipticOperatorPackage}
    (P : PhylogeneticsPackage E) where
  likelihoodComputedClosed : P.likelihoodComputed
  operatorDiffusionClosed : P.operatorDiffusion

def PhylogeneticsClosed {E : EllipticOperatorPackage}
    (P : PhylogeneticsPackage E) : Prop :=
  P.likelihoodComputed ∧ P.operatorDiffusion

theorem phylogenetics_closed_from_evidence
    {E : EllipticOperatorPackage} (P : PhylogeneticsPackage E)
    (Ev : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro Ev.likelihoodComputedClosed Ev.operatorDiffusionClosed

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse