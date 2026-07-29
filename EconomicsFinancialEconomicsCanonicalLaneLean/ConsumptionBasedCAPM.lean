import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure ConsumptionBasedCAPMPackage where
  representativeAgentUtility : Type u
  consumptionProcess : Type v
  assetReturnDistribution : Type w
  eulerEquation : Prop
  riskFreeRateDetermination : Prop
  equityPremiumPuzzle : Prop
  betaRepresentation : Prop

structure ConsumptionBasedCAPMEvidence (P : ConsumptionBasedCAPMPackage) where
  eulerEquationClosed : P.eulerEquation
  riskFreeRateDeterminationClosed : P.riskFreeRateDetermination
  equityPremiumPuzzleClosed : P.equityPremiumPuzzle
  betaRepresentationClosed : P.betaRepresentation

def ConsumptionBasedCAPMClosed (P : ConsumptionBasedCAPMPackage) : Prop :=
  P.eulerEquation ∧ P.riskFreeRateDetermination ∧
  P.equityPremiumPuzzle ∧ P.betaRepresentation

theorem consumption_based_capm_closed_from_evidence
    (P : ConsumptionBasedCAPMPackage) (E : ConsumptionBasedCAPMEvidence P) :
    ConsumptionBasedCAPMClosed P := by
  exact And.intro E.eulerEquationClosed
    (And.intro E.riskFreeRateDeterminationClosed
      (And.intro E.equityPremiumPuzzleClosed
        E.betaRepresentationClosed))

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse
