import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure UtilityPreferencePackage where
  consumptionSet : Type u
  preferenceRelation : consumptionSet → consumptionSet → Prop
  completeness : ∀ x y : consumptionSet, preferenceRelation x y ∨ preferenceRelation y x
  transitivity : ∀ x y z : consumptionSet, preferenceRelation x y → preferenceRelation y z → preferenceRelation x z
  continuity : Prop
  monotonicity : Prop
  convexity : Prop

structure UtilityPreferenceEvidence (U : UtilityPreferencePackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  monotonicityClosed : U.monotonicity
  convexityClosed : U.convexity

def UtilityPreferenceClosed (U : UtilityPreferencePackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.monotonicity ∧ U.convexity

theorem utility_preference_closed_from_evidence (U : UtilityPreferencePackage) (E : UtilityPreferenceEvidence U) : UtilityPreferenceClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed (And.intro E.continuityClosed (And.intro E.monotonicityClosed E.convexityClosed)))

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse