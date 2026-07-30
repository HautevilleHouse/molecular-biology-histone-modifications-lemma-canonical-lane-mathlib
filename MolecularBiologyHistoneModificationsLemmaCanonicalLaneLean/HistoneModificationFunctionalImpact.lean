import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneModificationTypes
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneModificationDetection

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure FunctionalImpactEvidence {H : HistoneModificationPackage}
    {H0 : HistoneModificationTypesClosed H}
    {D : HistoneModificationDetectionPackage H0} where
  geneExpressionRegulation : Prop
  chromatinStructureRemodeling : Prop
  dnaRepairInvolvement : Prop
  transcriptionalMemory : Prop

def functional_impact_evidence_implies_histone_modification_lemma
    {H : HistoneModificationPackage} {H0 : HistoneModificationTypesClosed H}
    {D : HistoneModificationDetectionPackage H0}
    (E : FunctionalImpactEvidence) : Prop :=
  E.geneExpressionRegulation ∧ E.chromatinStructureRemodeling ∧
  E.dnaRepairInvolvement ∧ E.transcriptionalMemory

theorem functional_impact_evidence_closed
    {H : HistoneModificationPackage} {H0 : HistoneModificationTypesClosed H}
    {D : HistoneModificationDetectionPackage H0}
    (E : FunctionalImpactEvidence) (hgene : E.geneExpressionRegulation)
    (hchromatin : E.chromatinStructureRemodeling) (hdna : E.dnaRepairInvolvement)
    (hmemory : E.transcriptionalMemory) :
    functional_impact_evidence_implies_histone_modification_lemma E := by
  exact And.intro hgene (And.intro hchromatin (And.intro hdna hmemory))

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse