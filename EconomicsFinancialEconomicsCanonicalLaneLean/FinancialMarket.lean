import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure FinancialMarket where
  traders : Type u
  securities : Type v
  priceProcess : Type w
  tradingStrategy : Type x
  marketClearing : Prop
  selfFinancing : Prop
  noArbitrage : Prop
  marketClearingTerm : marketClearing
  selfFinancingTerm : selfFinancing
  noArbitrageTerm : noArbitrage

structure MarketEvidence (M : FinancialMarket) where
  marketClearingClosed : M.marketClearing
  selfFinancingClosed : M.selfFinancing
  noArbitrageClosed : M.noArbitrage

def FinancialMarketClosed (M : FinancialMarket) : Prop :=
  M.marketClearing ∧ M.selfFinancing ∧ M.noArbitrage

theorem financial_market_closed_from_evidence (M : FinancialMarket) (Ev : MarketEvidence M) :
    FinancialMarketClosed M := by
  exact And.intro Ev.marketClearingClosed
    (And.intro Ev.selfFinancingClosed Ev.noArbitrageClosed)

end HautevilleHouse.EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse