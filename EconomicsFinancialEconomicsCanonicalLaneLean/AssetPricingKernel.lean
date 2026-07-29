import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure AssetPricingKernelPackage where
  stateSpace : Type u
  payoffVector : stateSpace -> ℝ
  discountFactor : stateSpace -> ℝ
  riskNeutralMeasure : Prop
  pricingLinearFunctional : Prop
  absenceOfArbitrage : Prop

structure AssetPricingKernelEvidence (A : AssetPricingKernelPackage) where
  riskNeutralMeasureClosed : A.riskNeutralMeasure
  pricingLinearFunctionalClosed : A.pricingLinearFunctional
  absenceOfArbitrageClosed : A.absenceOfArbitrage

def AssetPricingKernelClosed (A : AssetPricingKernelPackage) : Prop :=
  A.riskNeutralMeasure ∧ A.pricingLinearFunctional ∧ A.absenceOfArbitrage

theorem asset_pricing_kernel_closed_from_evidence (A : AssetPricingKernelPackage) (E : AssetPricingKernelEvidence A) : AssetPricingKernelClosed A := by
  exact And.intro E.riskNeutralMeasureClosed (And.intro E.pricingLinearFunctionalClosed E.absenceOfArbitrageClosed)

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse