import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneModificationStructure

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | .histoneModification (P : HistoneModificationPackage) => P.readingMechanisms
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  match A.object with
  | .histoneModification P => exact A.object.readingMechanisms
  | _ => exact False.elim (by
    have h : False := by
      apply A.gateWitness
      exact Or.inr A.remainderRecorded
    exact h)

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse