import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneCodeGate

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

def ConstrainedHistoneModificationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_histone_modification_endgame (A : AdmissibleClass) :
    ConstrainedHistoneModificationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse