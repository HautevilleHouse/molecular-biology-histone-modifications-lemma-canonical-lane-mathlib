import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.HistoneModificationStates

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure ChIPSeqData where
  antibody : String
  peakPositions : List Nat
  enrichmentScore : Float
  significance : Prop

structure ChromatinImmunoprecipitationEvidence where
  dataset : ChIPSeqData
  qualityControlPass : Prop
  normalizationValid : Prop
  qualityControlPassTerm : qualityControlPass
  normalizationValidTerm : normalizationValid

def ChIPSeqClosed (data : ChIPSeqData) : Prop :=
  data.significance

theorem chip_seq_closed_from_evidence (data : ChIPSeqData) (E : ChromatinImmunoprecipitationEvidence) :
    ChIPSeqClosed data := by
  exact E.dataset.significance

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse