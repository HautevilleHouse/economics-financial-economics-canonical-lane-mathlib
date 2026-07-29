import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure AssetPricingPackage where
  stateSpace : Type u
  assetPayoffs : List (stateSpace → ℝ)
  assetPrices : stateSpace → ℝ → ℝ
  representativeAgentUtility : (ℝ → ℝ) → ℝ → ℝ
  stochasticDiscountFactor : (stateSpace → ℝ) → ℝ → ℝ → ℝ
  noArbitrageCondition : Prop
  lawOfOnePrice : Prop
  fundamentalPricingEquation : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageConditionClosed : A.noArbitrageCondition
  lawOfOnePriceClosed : A.lawOfOnePrice
  fundamentalPricingEquationClosed : A.fundamentalPricingEquation

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrageCondition ∧ A.lawOfOnePrice ∧ A.fundamentalPricingEquation

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage) (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.noArbitrageConditionClosed (And.intro E.lawOfOnePriceClosed E.fundamentalPricingEquationClosed)

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse