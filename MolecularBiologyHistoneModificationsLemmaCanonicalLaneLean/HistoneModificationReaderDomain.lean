import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

structure HistoneModificationReaderDomainPackage where
  bromodomainBinding : Prop
  chromodomainBinding : Prop
  tudorDomainBinding : Prop
  pwwpDomainBinding : Prop
  specificModificationRecognized : Prop

structure HistoneModificationReaderDomainEvidence (R : HistoneModificationReaderDomainPackage) where
  bromodomainBindingClosed : R.bromodomainBinding
  chromodomainBindingClosed : R.chromodomainBinding
  tudorDomainBindingClosed : R.tudorDomainBinding
  pwwpDomainBindingClosed : R.pwwpDomainBinding
  specificModificationRecognizedClosed : R.specificModificationRecognized

def HistoneModificationReaderDomainClosed (R : HistoneModificationReaderDomainPackage) : Prop :=
  R.bromodomainBinding ∧ R.chromodomainBinding ∧ R.tudorDomainBinding ∧ R.pwwpDomainBinding ∧ R.specificModificationRecognized

theorem histone_modification_reader_domain_closed_from_evidence (R : HistoneModificationReaderDomainPackage) (Ev : HistoneModificationReaderDomainEvidence R) : HistoneModificationReaderDomainClosed R := by
  exact And.intro Ev.bromodomainBindingClosed (And.intro Ev.chromodomainBindingClosed (And.intro Ev.tudorDomainBindingClosed (And.intro Ev.pwwpDomainBindingClosed Ev.specificModificationRecognizedClosed)))

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse