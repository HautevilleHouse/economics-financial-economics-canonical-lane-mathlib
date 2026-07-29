import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure ExpectedUtilityTheoryPackage where
  outcomeSet : Type u
  preferenceRelation : Type v
  utilityFunction : Type w
  completenessAxiom : Prop
  transitivityAxiom : Prop
  continuityAxiom : Prop
  independenceAxiom : Prop
  expectedUtilityRepresentation : Prop

structure ExpectedUtilityTheoryEvidence (P : ExpectedUtilityTheoryPackage) where
  completenessAxiomClosed : P.completenessAxiom
  transitivityAxiomClosed : P.transitivityAxiom
  continuityAxiomClosed : P.continuityAxiom
  independenceAxiomClosed : P.independenceAxiom
  expectedUtilityRepresentationClosed : P.expectedUtilityRepresentation

def ExpectedUtilityTheoryClosed (P : ExpectedUtilityTheoryPackage) : Prop :=
  P.completenessAxiom ∧ P.transitivityAxiom ∧
  P.continuityAxiom ∧ P.independenceAxiom ∧ P.expectedUtilityRepresentation

theorem expected_utility_theory_closed_from_evidence
    (P : ExpectedUtilityTheoryPackage) (E : ExpectedUtilityTheoryEvidence P) :
    ExpectedUtilityTheoryClosed P := by
  exact And.intro E.completenessAxiomClosed
    (And.intro E.transitivityAxiomClosed
      (And.intro E.continuityAxiomClosed
        (And.intro E.independenceAxiomClosed
          E.expectedUtilityRepresentationClosed)))

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse
