import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneModificationTypes

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure ChromatinState where
  histoneModifications : List HistoneModification
  openState : Prop
  closedState : Prop
  transitionRegulated : Prop

structure ChromatinStateEvidence (c : ChromatinState) where
  openStateClosed : c.openState
  closedStateClosed : c.closedState
  transitionRegulatedClosed : c.transitionRegulated

define ChromatinStateClosed (c : ChromatinState) : Prop :=
  c.openState ∧ c.closedState ∧ c.transitionRegulated

theorem chromatin_state_closed_from_evidence (c : ChromatinState) (e : ChromatinStateEvidence c) : ChromatinStateClosed c :=
  And.intro e.openStateClosed (And.intro e.closedStateClosed e.transitionRegulatedClosed)

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse