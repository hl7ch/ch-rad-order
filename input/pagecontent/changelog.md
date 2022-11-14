
All significant changes to this FHIR implementation guide will be documented on this page.   


### STU 2 Ballot

#### Added
* [Issue #36](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/36): Added  SCT#373068000 as intial value to caveat Diabetes mellilus".

### STU 1 Ballot

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:

* [Issue #22](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/22): Value Sets are draft; will be refined with Swiss Rad. Society. 

* Interactive behavior of the questionnaire (such as conditional display of items) will be added in the next release.

* Use case dependent constraints in the questionnaire are subject of further disussions.

#### Follow up of changes in CH-orf
* [ORF Issue #31](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/31): The values for the readonly fields order.title, order.type, order.category are now defined fix in the composition and shonw no more in the questionnaire. 

* [ORF Issue #50](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/50): Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.
   
* [ORF Issue #53](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/53) (Feedback 1): The patient in the order defined as required ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html), [CH ORF Composition Profile](http://build.fhir.org/ig/hl7ch/ch-orf/StructureDefinition-ch-orf-composition.html).

* [ORF Issue #57](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/57):Added 'GLN' to organization ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html)).

* [ORF Issue #60](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/60) and [Issue #63](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/63):   Added patients marital status to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
    
* [ORF Issue #64](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/64): Add patients language of correspondence to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
  
* [ORF Issue #65](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/65): Added 'ZSR' as Practitioner.identifier to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html).

* [ORF Issue #80](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/80): Expansion of the [questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) field 'coverage.self'. Differentiation between [patient himself](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfPatient.html) or [related person](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfRelatedPerson.html) as self-payer.

* [ORF Issue #84](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/84): Copy receiver is ment to receive a copy from the order and all evolving results thereof.

* [ORF Issue #91](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/91): Change source of the codes for [desired accommodation](http://build.fhir.org/ig/hl7ch/ch-orf/ValueSet-ch-orf-vs-desiredaccommodation.html).

* [ORF Issue #101](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/101) Cardinality for Questionnaire and QR in Composition set to 0..1. For details see home.

#### Added
* [Issue #2](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/2): PDF added as original representation.
* [Issue #17](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/17): Added References to Images of precedent results to questionnaire.
* [Issue #19](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/19): Caveats changed from boolean to Undetermined/absent/present.
* [Issue #23](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/23): Caveat Drug prescription improved; added B-Blocker.

#### Changed / Updated
* [Issue #18](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/18): Cardinality for Questionnaire and QR in Composition set to 0..1. Updated [documentation](http://fhir.ch/ighttp://build.fhir.org/ig/hl7ch/ch-orf/index.html) accordingly.
* [Issue #4](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/4): Change type of item 'previousResults.attachment' to attachment.

#### Issues resolved without amendment
 * [Issue #20](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/20) Multiple imaging procedures in the same order: Not implmented in order to avoid complexity. 