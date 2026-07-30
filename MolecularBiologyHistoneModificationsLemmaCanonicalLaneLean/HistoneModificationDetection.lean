import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneModificationTypes

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneModificationDetectionPackage {H : HistoneModificationPackage}
    (H0 : HistoneModificationTypesClosed H) where
  antibodySpecificity : Prop
  massSpectrometryAccuracy : Prop
  chromatinImmunoprecipitationReliability : Prop
  detectionMethodsCataloged : Prop
  antibodySpecificityClosed : antibodySpecificity
  massSpectrometryAccuracyClosed : massSpectrometryAccuracy
  chromatinImmunoprecipitationReliabilityClosed : chromatinImmunoprecipitationReliability
  detectionMethodsCatalogedClosed : detectionMethodsCataloged

structure HistoneModificationDetectionEvidence {H : HistoneModificationPackage}
    {H0 : HistoneModificationTypesClosed H}
    (D : HistoneModificationDetectionPackage H0) where
  antibodySpecificityClosedEvidence : D.antibodySpecificity
  massSpectrometryAccuracyClosedEvidence : D.massSpectrometryAccuracy
  chromatinImmunoprecipitationReliabilityClosedEvidence : D.chromatinImmunoprecipitationReliability
  detectionMethodsCatalogedClosedEvidence : D.detectionMethodsCataloged

def HistoneModificationDetectionClosed {H : HistoneModificationPackage}
    {H0 : HistoneModificationTypesClosed H}
    (D : HistoneModificationDetectionPackage H0) : Prop :=
  D.antibodySpecificity ∧ D.massSpectrometryAccuracy ∧
  D.chromatinImmunoprecipitationReliability ∧ D.detectionMethodsCataloged

theorem histone_modification_detection_closed_from_evidence
    {H : HistoneModificationPackage} {H0 : HistoneModificationTypesClosed H}
    (D : HistoneModificationDetectionPackage H0)
    (E : HistoneModificationDetectionEvidence D) :
    HistoneModificationDetectionClosed D := by
  exact And.intro E.antibodySpecificityClosedEvidence
    (And.intro E.massSpectrometryAccuracyClosedEvidence
      (And.intro E.chromatinImmunoprecipitationReliabilityClosedEvidence
        E.detectionMethodsCatalogedClosedEvidence))

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse