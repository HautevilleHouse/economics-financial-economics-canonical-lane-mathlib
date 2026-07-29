import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure EconomicAgent where
  preferences : Type u
  endowment : Type v
  rationality : Prop

structure Market where
  priceSystem : Type w
  feasibleAllocation : Prop
  equilibrium : Prop

structure AdmittedObject where
  agent : EconomicAgent
  market : Market
  presentValue : Prop
  arrowDebreuStatePrices : Prop
  conclusion : presentValue ∧ arrowDebreuStatePrices

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.presentValue ∧ A.object.arrowDebreuStatePrices) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse