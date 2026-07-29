import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure FinancialEconometricsPackage where
  garch : Prop
  cointegration : Prop
  varModel : Prop
  riskMetrics : Prop
  garchTerm : garch
  cointegrationTerm : cointegration
  varModelTerm : varModel
  riskMetricsTerm : riskMetrics

structure FinancialEconometricsEvidence (F : FinancialEconometricsPackage) where
  garchClosed : F.garch
  cointegrationClosed : F.cointegration
  varModelClosed : F.varModel
  riskMetricsClosed : F.riskMetrics

def FinancialEconometricsClosed (F : FinancialEconometricsPackage) : Prop :=
  F.garch ∧ F.cointegration ∧ F.varModel ∧ F.riskMetrics

theorem financial_econometrics_closed_from_evidence (F : FinancialEconometricsPackage)
    (E : FinancialEconometricsEvidence F) : FinancialEconometricsClosed F := by
  exact And.intro E.garchClosed
    (And.intro E.cointegrationClosed
      (And.intro E.varModelClosed E.riskMetricsClosed))

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse
