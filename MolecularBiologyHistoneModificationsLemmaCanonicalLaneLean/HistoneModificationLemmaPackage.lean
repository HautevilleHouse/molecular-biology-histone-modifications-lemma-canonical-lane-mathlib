import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneModificationStates

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneModificationLemmaPackage where
  targetGene : String
  modificationState : HistoneModificationState
  transcriptionalOutcome : Prop
  lemmaStatement : Prop

structure HistoneModificationLemmaEvidence (P : HistoneModificationLemmaPackage) where
  transcriptionalOutcomeClosed : P.transcriptionalOutcome
  lemmaStatementClosed : P.lemmaStatement

def HistoneModificationLemmaClosed (P : HistoneModificationLemmaPackage) : Prop :=
  P.transcriptionalOutcome ∧ P.lemmaStatement

theorem histone_modification_lemma_closed_from_evidence
  (P : HistoneModificationLemmaPackage) (E : HistoneModificationLemmaEvidence P) :
  HistoneModificationLemmaClosed P := by
  exact And.intro E.transcriptionalOutcomeClosed E.lemmaStatementClosed

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse