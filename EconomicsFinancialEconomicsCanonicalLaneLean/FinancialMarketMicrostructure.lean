import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure FinancialMarketMicrostructurePackage where
  orderFlow : Type u
  priceImpactFunction : orderFlow → ℝ → ℝ
  informedTraderSignal : orderFlow → ℝ
  liquidityProviderStrategy : orderFlow → ℝ
  bayesianUpdatingRule : orderFlow → ℝ → ℝ
  equilibriumBidAskSpread : ℝ
  adverseSelectionCondition : Prop
  inventoryControlCondition : Prop

structure FinancialMarketMicrostructureEvidence (M : FinancialMarketMicrostructurePackage) where
  adverseSelectionConditionClosed : M.adverseSelectionCondition
  inventoryControlConditionClosed : M.inventoryControlCondition

def FinancialMarketMicrostructureClosed (M : FinancialMarketMicrostructurePackage) : Prop :=
  M.adverseSelectionCondition ∧ M.inventoryControlCondition

theorem financial_market_microstructure_closed_from_evidence (M : FinancialMarketMicrostructurePackage) (E : FinancialMarketMicrostructureEvidence M) : FinancialMarketMicrostructureClosed M := by
  exact And.intro E.adverseSelectionConditionClosed E.inventoryControlConditionClosed

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse