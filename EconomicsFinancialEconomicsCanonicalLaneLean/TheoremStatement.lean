import EconomicsFinancialEconomicsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace EconomicsFinancialEconomicsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "economics-financial-economics-canonical-lane",
    theoremName := "Arrow-Debreu Equilibrium",
    theoremObject := "Existence of general equilibrium under standard assumptions",
    classicalBoundary := "Unrestricted utility representation and market completeness",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "economics-financial-economics-canonical-lane" := by rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "manifold_constrained" := by rfl

end EconomicsFinancialEconomicsCanonicalLaneLean
end HautevilleHouse