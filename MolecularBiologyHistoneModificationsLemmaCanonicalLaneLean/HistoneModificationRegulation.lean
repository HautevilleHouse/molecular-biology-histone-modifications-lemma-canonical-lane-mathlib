import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneModificationTypes

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure RegulationPackage {H : HistoneModificationPackage}
    (H0 : HistoneModificationTypesClosed H) where
  writerEnzymes : Prop
  eraserEnzymes : Prop
  readerProteins : Prop
  crossTalkMechanisms : Prop
  writerEnzymesClosed : writerEnzymes
  eraserEnzymesClosed : eraserEnzymes
  readerProteinsClosed : readerProteins
  crossTalkMechanismsClosed : crossTalkMechanisms

structure RegulationEvidence {H : HistoneModificationPackage}
    {H0 : HistoneModificationTypesClosed H}
    (R : RegulationPackage H0) where
  writerEnzymesClosedEvidence : R.writerEnzymes
  eraserEnzymesClosedEvidence : R.eraserEnzymes
  readerProteinsClosedEvidence : R.readerProteins
  crossTalkMechanismsClosedEvidence : R.crossTalkMechanisms

def RegulationClosed {H : HistoneModificationPackage}
    {H0 : HistoneModificationTypesClosed H}
    (R : RegulationPackage H0) : Prop :=
  R.writerEnzymes ∧ R.eraserEnzymes ∧ R.readerProteins ∧ R.crossTalkMechanisms

theorem regulation_closed_from_evidence
    {H : HistoneModificationPackage} {H0 : HistoneModificationTypesClosed H}
    (R : RegulationPackage H0) (E : RegulationEvidence R) :
    RegulationClosed R := by
  exact And.intro E.writerEnzymesClosedEvidence
    (And.intro E.eraserEnzymesClosedEvidence
      (And.intro E.readerProteinsClosedEvidence
        E.crossTalkMechanismsClosedEvidence))

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse