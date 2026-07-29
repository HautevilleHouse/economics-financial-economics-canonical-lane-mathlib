import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure GrowthModelRamseyPackage where
  productionFunction : Type u
  capitalAccumulation : Type v
  householdOptimization : Type w
  steadyStateCapital : Prop
  goldenRuleCondition : Prop
  saddlePathStability : Prop
  convergenceDynamics : Prop

structure GrowthModelRamseyEvidence (P : GrowthModelRamseyPackage) where
  steadyStateCapitalClosed : P.steadyStateCapital
  goldenRuleConditionClosed : P.goldenRuleCondition
  saddlePathStabilityClosed : P.saddlePathStability
  convergenceDynamicsClosed : P.convergenceDynamics

def GrowthModelRamseyClosed (P : GrowthModelRamseyPackage) : Prop :=
  P.steadyStateCapital ∧ P.goldenRuleCondition ∧
  P.saddlePathStability ∧ P.convergenceDynamics

theorem growth_model_ramsey_closed_from_evidence
    (P : GrowthModelRamseyPackage) (E : GrowthModelRamseyEvidence P) :
    GrowthModelRamseyClosed P := by
  exact And.intro E.steadyStateCapitalClosed
    (And.intro E.goldenRuleConditionClosed
      (And.intro E.saddlePathStabilityClosed
        E.convergenceDynamicsClosed))

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse
