import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure CAPMPackage where
  marketPortfolio : ℝ
  riskFreeRate : ℝ
  beta : Type u → ℝ
  expectedReturn : Type u → ℝ
  securityMarketLine : Prop
  efficientFrontier : Prop
  securityMarketLineTerm : securityMarketLine
  efficientFrontierTerm : efficientFrontier

structure CAPMEvidence (C : CAPMPackage) where
  securityMarketLineClosed : C.securityMarketLine
  efficientFrontierClosed : C.efficientFrontier

def CAPMClosed (C : CAPMPackage) : Prop :=
  C.securityMarketLine ∧ C.efficientFrontier

theorem capm_closed_from_evidence (C : CAPMPackage) (Ev : CAPMEvidence C) : CAPMClosed C := by
  exact And.intro Ev.securityMarketLineClosed Ev.efficientFrontierClosed

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse