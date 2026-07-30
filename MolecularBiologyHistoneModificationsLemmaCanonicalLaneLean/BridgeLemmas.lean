import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HistoneModificationsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.modificationEvidence

end MolecularBiologyHistoneModificationsLemmaCanonicalLaneLean
end HautevilleHouse