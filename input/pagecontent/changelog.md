
All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 1 Ballot

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:

* [Issue #22](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/22): Value Sets are draft; will be refined with Swiss Rad. Society 

* Interactive behavior of the questionnaire (such as conditional display of items) will be added in the next release

* Use case dependent constraints in the questionnaire are subject of further disussions 

#### Follow up of changes in CH-ORF
* [ORF Issue #31](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/31): The values for the readonly fields order.title, order.type, order.category are now defined fix in the composition and shonw no more in the questionnaire. 

* [ORF Issue #50](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/50): Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.
   
* [ORF Issue #53](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/53) (Feedback 1): The patient in the order defined as required ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html), [CH ORF Composition Profile](http://build.fhir.org/ig/hl7ch/ch-orf/StructureDefinition-ch-orf-composition.html)

* [ORF Issue #57](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/57):Added 'GLN' to organization ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html)).

* [ORF Issue #60](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/60) and [Issue #63](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/63):   Added patients marital status to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
