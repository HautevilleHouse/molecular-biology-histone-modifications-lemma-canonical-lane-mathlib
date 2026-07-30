import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneModification (H : Type) where
  residue : H
  modificationType : String
  position : Nat
  evidence : Prop

structure ChromatinState where
  modifications : List HistoneModification
  transcriptionalActivity : Prop
  structuralCompaction : Prop

structure HistoneModificationPackage where
  histoneType : Type
  residueSet : List histoneType
  modificationTypes : List String
  modificationPatterns : List (HistoneModification histoneType)
  readingMechanisms : Prop
  recruitmentSignals : Prop
  crossTalkRegulation : Prop

structure HistoneModificationEvidence (P : HistoneModificationPackage) where
  modificationPatternsClosed : P.modificationPatterns ≠ []
  readingMechanismsClosed : P.readingMechanisms
  recruitmentSignalsClosed : P.recruitmentSignals
  crossTalkRegulationClosed : P.crossTalkRegulation

def HistoneModificationEvidence.provideEvidence (P : HistoneModificationPackage) (E : HistoneModificationEvidence P) : HistoneModificationEvidence P := E

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse