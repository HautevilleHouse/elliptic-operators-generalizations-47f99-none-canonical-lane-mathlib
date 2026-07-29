import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure PhylogeneticsOperatorPackage where
  speciesTree : Type
  distanceMatrix : Matrix ℝ ℝ
  spectralClustering : Prop
  treeConsistency : Prop

structure PhylogeneticsOperatorEvidence (P : PhylogeneticsOperatorPackage) where
  spectralClusteringClosed : P.spectralClustering
  treeConsistencyClosed : P.treeConsistency

def PhylogeneticsOperatorClosed (P : PhylogeneticsOperatorPackage) : Prop :=
  P.spectralClustering ∧ P.treeConsistency

theorem phylogenetics_operator_closed_from_evidence (P : PhylogeneticsOperatorPackage) (E : PhylogeneticsOperatorEvidence P) :
  PhylogeneticsOperatorClosed P := by
  exact And.intro E.spectralClusteringClosed E.treeConsistencyClosed

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse
