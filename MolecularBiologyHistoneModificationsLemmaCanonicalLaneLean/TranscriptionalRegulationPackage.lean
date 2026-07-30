import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneModificationStates

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure TranscriptionalRegulationPackage where
  geneName : String
  regulatoryRegion : String
  activatorBinding : Prop
  repressorBinding : Prop
  chromatinAccessibility : Prop
  histoneModificationsPresent : List HistoneModificationState
  expressionLevel : Float

structure TranscriptionalRegulationEvidence (P : TranscriptionalRegulationPackage) where
  activatorBindingClosed : P.activatorBinding
  repressorBindingClosed : P.repressorBinding
  chromatinAccessibilityClosed : P.chromatinAccessibility
  histoneModificationsPresentClosed : P.histoneModificationsPresent.length > 0
  expressionLevelValid : P.expressionLevel > 0.0

def TranscriptionalRegulationClosed (P : TranscriptionalRegulationPackage) : Prop :=
  P.activatorBinding ∧ P.repressorBinding ∧ P.chromatinAccessibility ∧
  (P.histoneModificationsPresent.length > 0) ∧ (P.expressionLevel > 0.0)

theorem transcriptional_regulation_closed_from_evidence
    (P : TranscriptionalRegulationPackage) (E : TranscriptionalRegulationEvidence P) :
    TranscriptionalRegulationClosed P := by
  exact And.intro E.activatorBindingClosed
    (And.intro E.repressorBindingClosed
      (And.intro E.chromatinAccessibilityClosed
        (And.intro E.histoneModificationsPresentClosed E.expressionLevelValid)))

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse