import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

def HistoneModificationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem histone_modification_endgame (A : AdmissibleClass) :
    HistoneModificationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse