import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.EpigeneticRegulation

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure GeneExpressionControl where
  gene : String
  epigeneticRegulation : EpigeneticRegulation
  expressionLevel : Nat
  controlMechanism : Prop

structure GeneExpressionControlEvidence (g : GeneExpressionControl) where
  controlMechanismClosed : g.controlMechanism

define GeneExpressionControlClosed (g : GeneExpressionControl) : Prop :=
  g.controlMechanism

theorem gene_expression_control_closed_from_evidence (g : GeneExpressionControl) (e : GeneExpressionControlEvidence g) : GeneExpressionControlClosed g :=
  e.controlMechanismClosed

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse