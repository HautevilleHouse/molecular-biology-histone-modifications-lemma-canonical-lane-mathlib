import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean.GeneExpressionControl

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneCodeHypothesis where
  histoneModifications : List String
  combinatorialCode : Prop
  readoutProteins : List String
  functionalOutcome : Prop

structure HistoneCodeHypothesisEvidence (h : HistoneCodeHypothesis) where
  combinatorialCodeClosed : h.combinatorialCode
  functionalOutcomeClosed : h.functionalOutcome

define HistoneCodeHypothesisClosed (h : HistoneCodeHypothesis) : Prop :=
  h.combinatorialCode ∧ h.functionalOutcome

theorem histone_code_hypothesis_closed_from_evidence (h : HistoneCodeHypothesis) (e : HistoneCodeHypothesisEvidence h) : HistoneCodeHypothesisClosed h :=
  And.intro e.combinatorialCodeClosed e.functionalOutcomeClosed

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse