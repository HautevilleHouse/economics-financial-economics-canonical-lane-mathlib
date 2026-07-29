import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure GeneralEquilibriumPackage where
  consumers : Type u
  firms : Type v
  commodities : Type w
  preferenceProfile : consumers → commodities → Prop
  productionSet : firms → Set (commodities → ℝ)
  initialEndowments : consumers → (commodities → ℝ)
  priceSystem : Type x
  marketClearing : priceSystem → Prop
  existenceCondition : Prop
  uniquenessCondition : Prop
  existenceConditionTerm : existenceCondition
  uniquenessConditionTerm : uniquenessCondition

structure GeneralEquilibriumEvidence (E : GeneralEquilibriumPackage) where
  existenceConditionClosed : E.existenceCondition
  uniquenessConditionClosed : E.uniquenessCondition

def GeneralEquilibriumClosed (E : GeneralEquilibriumPackage) : Prop :=
  E.existenceCondition ∧ E.uniquenessCondition

theorem general_equilibrium_closed_from_evidence (E : GeneralEquilibriumPackage) (Ev : GeneralEquilibriumEvidence E) : GeneralEquilibriumClosed E := by
  exact And.intro Ev.existenceConditionClosed Ev.uniquenessConditionClosed

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse