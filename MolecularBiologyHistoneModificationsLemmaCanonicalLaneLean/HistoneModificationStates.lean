import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneModificationState where
  histoneType : String
  modificationType : String
  position : Nat
  cellType : String
  condition : String

structure ChromatinContext where
  cellType : String
  genomicRegion : String
  state : HistoneModificationState
  evidenceStrength : Prop

structure HistoneModificationEvidence (state : HistoneModificationState) where
  modificationPresent : Prop
  modificationPresentTerm : modificationPresent

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse