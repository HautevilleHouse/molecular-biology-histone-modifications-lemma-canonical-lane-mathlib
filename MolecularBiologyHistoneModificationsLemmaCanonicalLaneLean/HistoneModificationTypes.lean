import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneModification where
  modificationType : String
  residue : String
  position : Nat
  function : String

define HistoneModificationEvidence (h : HistoneModification) : Prop :=
  h.modificationType ≠ "" ∧ h.residue ≠ "" ∧ h.position > 0

define HistoneModificationClosed (h : HistoneModification) : Prop :=
  HistoneModificationEvidence h ∧ h.function ≠ ""

theorem histone_modification_closed_from_evidence {h : HistoneModification} (e : HistoneModificationEvidence h) (f : h.function ≠ "") : HistoneModificationClosed h :=
  And.intro e f

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse