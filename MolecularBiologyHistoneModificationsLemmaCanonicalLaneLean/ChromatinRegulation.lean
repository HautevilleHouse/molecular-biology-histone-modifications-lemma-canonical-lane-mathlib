import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure ChromatinRegulationPackage where
  histoneModifications : List HistoneModificationState
  chromatinState : Prop
  regulationMechanism : Prop

structure ChromatinRegulationEvidence (C : ChromatinRegulationPackage) where
  histoneModificationsClosed : C.histoneModifications = C.histoneModifications
  chromatinStateClosed : C.chromatinState
  regulationMechanismClosed : C.regulationMechanism

def ChromatinRegulationClosed (C : ChromatinRegulationPackage) : Prop :=
  C.chromatinState ∧ C.regulationMechanism

theorem chromatin_regulation_closed_from_evidence (C : ChromatinRegulationPackage)
    (E : ChromatinRegulationEvidence C) : ChromatinRegulationClosed C := by
  exact And.intro E.chromatinStateClosed E.regulationMechanismClosed

theorem chromatin_regulation_bridge (C : ChromatinRegulationPackage) : bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk C) True True (Or.inl True)) := by
  exact bridge_from_admissible_class (AdmissibleClass.mk (AdmittedObject.mk C) True True (Or.inl True))

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse