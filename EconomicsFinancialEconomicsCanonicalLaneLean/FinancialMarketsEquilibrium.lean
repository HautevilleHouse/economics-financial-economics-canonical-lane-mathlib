import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure FinancialMarketsEquilibriumPackage where
  assetStructure : Type u
  agentEndowments : Type v
  portfolioChoice : Type w
  securityPrices : Prop
  marketClearing : Prop
  noArbitrageCondition : Prop
  existenceOfEquilibrium : Prop

structure FinancialMarketsEquilibriumEvidence (P : FinancialMarketsEquilibriumPackage) where
  securityPricesClosed : P.securityPrices
  marketClearingClosed : P.marketClearing
  noArbitrageConditionClosed : P.noArbitrageCondition
  existenceOfEquilibriumClosed : P.existenceOfEquilibrium

def FinancialMarketsEquilibriumClosed (P : FinancialMarketsEquilibriumPackage) : Prop :=
  P.securityPrices ∧ P.marketClearing ∧
  P.noArbitrageCondition ∧ P.existenceOfEquilibrium

theorem financial_markets_equilibrium_closed_from_evidence
    (P : FinancialMarketsEquilibriumPackage) (E : FinancialMarketsEquilibriumEvidence P) :
    FinancialMarketsEquilibriumClosed P := by
  exact And.intro E.securityPricesClosed
    (And.intro E.marketClearingClosed
      (And.intro E.noArbitrageConditionClosed
        E.existenceOfEquilibriumClosed))

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse
