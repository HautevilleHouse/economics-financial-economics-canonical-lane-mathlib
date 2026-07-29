import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  agentSet : Type u
  goodSet : Type v
  preferenceProfile : agentSet -> goodSet -> Prop
  initialEndowment : agentSet -> goodSet -> Nat
  priceSystem : goodSet -> Nat
  marketClearing : Prop
  utilityMaximization : Prop
  existenceProof : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  marketClearingClosed : A.marketClearing
  utilityMaximizationClosed : A.utilityMaximization
  existenceProofClosed : A.existenceProof

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.marketClearing ∧ A.utilityMaximization ∧ A.existenceProof

theorem arrow_debreu_equilibrium_closed_from_evidence (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence A) : ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.marketClearingClosed (And.intro E.utilityMaximizationClosed E.existenceProofClosed)

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse