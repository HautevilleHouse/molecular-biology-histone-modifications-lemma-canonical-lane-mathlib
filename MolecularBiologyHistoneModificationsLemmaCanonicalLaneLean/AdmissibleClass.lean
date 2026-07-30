import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneModificationsAdmittedObject where
  cellType : Type
  histoneModificationMap : String
  modificationState : Prop
  modificationEvidence : modificationState

def HistoneModificationsWitnessClosed (O : HistoneModificationsAdmittedObject) : Prop :=
  O.modificationState

structure AdmissibleClass where
  object : HistoneModificationsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HistoneModificationsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse