import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneModificationEnzymePackage where
  histoneAcetyltransferaseActivity : Prop
  histoneDeacetylaseActivity : Prop
  histoneMethyltransferaseActivity : Prop
  histoneDemethylaseActivity : Prop
  substrateSpecificity : Prop

structure HistoneModificationEnzymeEvidence (E : HistoneModificationEnzymePackage) where
  histoneAcetyltransferaseActivityClosed : E.histoneAcetyltransferaseActivity
  histoneDeacetylaseActivityClosed : E.histoneDeacetylaseActivity
  histoneMethyltransferaseActivityClosed : E.histoneMethyltransferaseActivity
  histoneDemethylaseActivityClosed : E.histoneDemethylaseActivity
  substrateSpecificityClosed : E.substrateSpecificity

def HistoneModificationEnzymeClosed (E : HistoneModificationEnzymePackage) : Prop :=
  E.histoneAcetyltransferaseActivity ∧ E.histoneDeacetylaseActivity ∧ E.histoneMethyltransferaseActivity ∧ E.histoneDemethylaseActivity ∧ E.substrateSpecificity

theorem histone_modification_enzyme_closed_from_evidence (E : HistoneModificationEnzymePackage) (Ev : HistoneModificationEnzymeEvidence E) : HistoneModificationEnzymeClosed E := by
  exact And.intro Ev.histoneAcetyltransferaseActivityClosed (And.intro Ev.histoneDeacetylaseActivityClosed (And.intro Ev.histoneMethyltransferaseActivityClosed (And.intro Ev.histoneDemethylaseActivityClosed Ev.substrateSpecificityClosed)))

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse