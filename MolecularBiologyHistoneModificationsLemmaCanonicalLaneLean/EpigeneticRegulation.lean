import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.ChromatinState

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure EpigeneticRegulation where
  modifyingEnzyme : String
  chromatinState : ChromatinState
  modificationEffect : Prop
  regulationMechanism : Prop

structure EpigeneticRegulationEvidence (e : EpigeneticRegulation) where
  modificationEffectClosed : e.modificationEffect
  regulationMechanismClosed : e.regulationMechanism

define EpigeneticRegulationClosed (e : EpigeneticRegulation) : Prop :=
  e.modificationEffect ∧ e.regulationMechanism

theorem epigenetic_regulation_closed_from_evidence (e : EpigeneticRegulation) (ev : EpigeneticRegulationEvidence e) : EpigeneticRegulationClosed e :=
  And.intro ev.modificationEffectClosed ev.regulationMechanismClosed

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse