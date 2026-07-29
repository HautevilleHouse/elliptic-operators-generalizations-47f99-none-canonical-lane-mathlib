import canonicalLaneMathlib.AdmissibleClass

/-!
# Elliptic Operator Foundation Package

This module defines the basic structure for elliptic operators on a smooth manifold,
including symbol, principal symbol, and ellipticity condition.
-/

namespace HautevilleHouse
namespace EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean

structure EllipticOperatorPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  vectorBundle : Type v
  sectionSpace : Type w
  symbol : Type x
  principalSymbol : Type y
  ellipticityCondition : Prop
  smoothManifold : Prop
  vectorBundleSmooth : Prop
  symbolDefined : Prop
  principalSymbolDefined : Prop
  ellipticityHolds : Prop

structure EllipticOperatorEvidence (E : EllipticOperatorPackage) where
  smoothManifoldClosed : E.smoothManifold
  vectorBundleSmoothClosed : E.vectorBundleSmooth
  symbolDefinedClosed : E.symbolDefined
  principalSymbolDefinedClosed : E.principalSymbolDefined
  ellipticityHoldsClosed : E.ellipticityHolds

def EllipticOperatorClosed (E : EllipticOperatorPackage) : Prop :=
  E.smoothManifold ∧ E.vectorBundleSmooth ∧ E.symbolDefined ∧
  E.principalSymbolDefined ∧ E.ellipticityHolds

theorem elliptic_operator_closed_from_evidence (E : EllipticOperatorPackage)
    (Ev : EllipticOperatorEvidence E) : EllipticOperatorClosed E := by
  exact And.intro Ev.smoothManifoldClosed
    (And.intro Ev.vectorBundleSmoothClosed
      (And.intro Ev.symbolDefinedClosed
        (And.intro Ev.principalSymbolDefinedClosed Ev.ellipticityHoldsClosed)))

end EllipticOperatorsGeneralizations47f99NoneCanonicalLaneLean
end HautevilleHouse