import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneCodeHypothesis

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneModificationsLemma where
  histoneCodeHypothesis : HistoneCodeHypothesis
  bridgingProposition : Prop
  gatingProposition : Prop

structure HistoneModificationsLemmaEvidence (l : HistoneModificationsLemma) where
  bridgingPropositionClosed : l.bridgingProposition
  gatingPropositionClosed : l.gatingProposition

define HistoneModificationsLemmaClosed (l : HistoneModificationsLemma) : Prop :=
  l.bridgingProposition ∧ l.gatingProposition

theorem histone_modifications_lemma_closed_from_evidence (l : HistoneModificationsLemma) (e : HistoneModificationsLemmaEvidence l) : HistoneModificationsLemmaClosed l :=
  And.intro e.bridgingPropositionClosed e.gatingPropositionClosed

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse