
All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 1 Ballot

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:

* [Issue #22](https://github.com/hl7ch/ch-rad-order/issues/22): Value Sets are draft; will be refined with Swiss Rad. Society 

* Interactive behaviour of the questionnaire (such as conditional display of items) will be added in the next release

* Use case dependent contraints in the questionnaire are subject of furhter disussions 

#### Follow up of changes in CH-ORF
* [ORF Issue #31](https://github.com/hl7ch/ch-orf/issues/31): The values for the readonly fields order.title, order.type, order.category are now defined fix in the composition and shonw no more in the questionnaire. 

* [ORF Issue #50](https://github.com/hl7ch/ch-orf/issues/50): Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.
   
* [ORF Issue #53](https://github.com/hl7ch/ch-orf/issues/53) (Feedback 1): The patient in the order defined as required ([Questionnaire](Questionnaire-order-referral-form.html), [CH ORF Composition Profile](StructureDefinition-ch-orf-composition.html)

* [ORF Issue #57](https://github.com/hl7ch/ch-orf/issues/57):Added 'GLN' to organization ([Questionnaire](Questionnaire-order-referral-form.html)).

* [ORF Issue #60](https://github.com/hl7ch/ch-orf/issues/60) and [Issue #63](https://github.com/hl7ch/ch-orf/issues/63):   Added patients marital status to the [Questionnaire](Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](Bundle-bundle-order-referral-form.html)).
    
* [ORF Issue #64](https://github.com/hl7ch/ch-orf/issues/64): Add patients language of correspondance to the [Questionnaire](Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](Bundle-bundle-order-referral-form.html)).
  
* [ORF Issue #65](https://github.com/hl7ch/ch-orf/issues/65): Added 'ZSR' as Practitioner.identifier to the [Questionnaire](Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](Bundle-bundle-order-referral-form.html)

* [ORF Issue #80](https://github.com/hl7ch/ch-orf/issues/80): Expansion of the [questionnaire](Questionnaire-order-referral-form.html) field 'coverage.self'. Differentiation between [patient himself](Coverage-CoverageSelfPatient.html) or [related person](Coverage-CoverageSelfRelatedPerson.html) as self-payer.

* [ORF Issue #84](https://github.com/hl7ch/ch-orf/issues/84): Copy receiver is ment to receive a copy from the order and all evolving results thereof.

* [ORF Issue #91](https://github.com/hl7ch/ch-orf/issues/91): Change source of the codes for [desired accommodation](ValueSet-ch-orf-vs-desiredaccommodation.html).

* [ORF Issue #101](https://github.com/hl7ch/ch-orf/issues/101) Cardinality for Questionnaire and QR in Composition set to 0..1. For details see home.

#### Added
* [Issue #2](https://github.com/hl7ch/ch-rad-order/issues/2): PDF added as original representation.
* [Issue #17](https://github.com/hl7ch/ch-rad-order/issues/17): Added References to Images of precedent results to questionnaire.
* [Issue #19](https://github.com/hl7ch/ch-rad-order/issues/19): Caveats changed from boolean to Undetermined/absent/present.
* [Issue #23](https://github.com/hl7ch/ch-rad-order/issues/23): Caveat Drug prescription improved; added B-Blocker.

#### Changed / Updated
* [Issue #18](https://github.com/hl7ch/ch-rad-order/issues/18): Cardinality for Questionnaire and QR in Composition set to 0..1. Updated [documentation](http://fhir.ch/ig/ch-rad-order/index.html) accordingly.
* [Issue #4](https://github.com/hl7ch/ch-rad-order/issues/4): Change type of item 'previousResults.attachment' to attachment.

#### Issues resolved without amendment
 * [Issue #20] (https://github.com/hl7ch/ch-orf/issues/20) Multiple imaging procedures in the same order: Not implmented in order to avoid complexity. 
