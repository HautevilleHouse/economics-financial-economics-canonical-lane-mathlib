import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : ℝ → ℝ → ℝ
  capitalAccumulationEquation : ℝ → ℝ → ℝ
  consumptionChoice : ℝ → ℝ → ℝ
  utilityFunction : ℝ → ℝ
  steadyStateCapital : ℝ
  balancedGrowthPath : Prop
  saddlePathProperty : Prop
  transversalityCondition : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  balancedGrowthPathClosed : G.balancedGrowthPath
  saddlePathPropertyClosed : G.saddlePathProperty
  transversalityConditionClosed : G.transversalityCondition

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.balancedGrowthPath ∧ G.saddlePathProperty ∧ G.transversalityCondition

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.balancedGrowthPathClosed (And.intro E.saddlePathPropertyClosed E.transversalityConditionClosed)

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse