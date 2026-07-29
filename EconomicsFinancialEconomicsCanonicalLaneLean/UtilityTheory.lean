import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure UtilityPackage where
  preferenceRelation : Type u → Type u → Prop
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  convexity : Prop
  representationTheorem : Prop
  completenessTerm : completeness
  transitivityTerm : transitivity
  continuityTerm : continuity
  convexityTerm : convexity
  representationTheoremTerm : representationTheorem

structure UtilityEvidence (U : UtilityPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  convexityClosed : U.convexity
  representationTheoremClosed : U.representationTheorem

def UtilityClosed (U : UtilityPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.convexity ∧ U.representationTheorem

theorem utility_closed_from_evidence (U : UtilityPackage) (Ev : UtilityEvidence U) : UtilityClosed U := by
  exact And.intro Ev.completenessClosed (And.intro Ev.transitivityClosed (And.intro Ev.continuityClosed (And.intro Ev.convexityClosed Ev.representationTheoremClosed)))

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse