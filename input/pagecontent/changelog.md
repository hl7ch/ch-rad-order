
All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 3 (2024)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH RAD-Order:

* [Issue #62](https://github.com/hl7ch/ch-rad-order/issues/62): Revision (harmonization, usage SCT) of code system and value set ServiceRequest Category

See also open issues on [GitHub](https://github.com/hl7ch/ch-rad-order/issues).

#### Changed / Updated 
* [#63](https://github.com/hl7ch/ch-rad-order/issues/63): Update Coverage.type according to changes in parent profile CH ORF (see [CH ORF #177](https://github.com/hl7ch/ch-orf/issues/177))

### STU 2 Ballot (2024-05-17)
#### Open Issues
* [Issue #63](https://github.com/hl7ch/ch-rad-order/issues/62): Update Coverage
* [Issue #62](https://github.com/hl7ch/ch-rad-order/issues/63): Update ServiceRequest

#### Added
* [Issue #36](https://github.com/hl7ch/ch-rad-order/issues/36): Added  SCT#373068000 as initial value to caveat Diabetes mellitus".
* [Issue #37](https://github.com/hl7ch/ch-rad-order/issues/37): Added item Modality (for series) to Questionnaire because this item has card 1..1 in ImagingStudy Resource.
* [Issue #39](https://github.com/hl7ch/ch-rad-order/issues/39): Added a default value to "Bildgebendes Verfahren"; This item will therefore never be empty.
* [Issue #46](https://github.com/hl7ch/ch-rad-order/issues/47): Added details about attachments to index.html
* [Issue #47](https://github.com/hl7ch/ch-rad-order/issues/47): Updated index.html
* [Issue #48](https://github.com/hl7ch/ch-rad-order/issues/48): Updated Questionnaire Response according to #37
* [Issue #49](https://github.com/hl7ch/ch-rad-order/issues/49): Added UNKNOWN to VS Acquisition Modality.
* [Issue #59](https://github.com/hl7ch/ch-rad-order/issues/59): Use CH Core Condition as parent profile
* [Issue #57](https://github.com/hl7ch/ch-rad-order/issues/57): Fix StructureMap errors and adapt map to new Questionnaire


##### Adopted from CH ORF
* [ORF Issue #71](https://github.com/hl7ch/ch-orf/issues/71): Added Initiator and his relationship to to the patient.
* [ORF Issue #72](https://github.com/hl7ch/ch-orf/issues/72): Added Patient consent.
* [ORF Issue #73](https://github.com/hl7ch/ch-orf/issues/73): Added Entry date, discharge Date and Organization of stationary episode antecedent to requested service (e.g spitex).
* [ORF Issue #61](https://github.com/hl7ch/ch-orf/issues/61): Added Family doctor.
* [ORF Issue #106](https://github.com/hl7ch/ch-orf/issues/106): Changed Cardinality of Contact Person from 0..1 to 0..*.* 

#### Changed / Updated
* [Issue #41](https://github.com/hl7ch/ch-rad-order/issues/41): Corrected radlex url
* [Issue #44](https://github.com/hl7ch/ch-rad-order/issues/44): Changed license to CC0 1.0 Universal (CC0 1.0)
* [Issue #51](https://github.com/hl7ch/ch-rad-order/issues/51): Dropped group, changed hierarchy of device and choice (present, absent, undetermined) in caveat.device item of questionnaire.
* [Issue #52](https://github.com/hl7ch/ch-rad-order/issues/52): Change according to CH-ORF#50: attachment embedded in the DocumentReference resource instead of CH RAD-Order Media.
* [Issue #53](https://github.com/hl7ch/ch-rad-order/issues/53): Added series.instance.sopClass which has has cardinality 1..1 to questionnaire and questionnaire response.
* [Issue #54](https://github.com/hl7ch/ch-rad-order/issues/54): Snomed Code 182817000 -Drug prescription (situation)- is not active anymore; replaced with Changed to 1290126002 -Drug therapy with explicit context (situation).
* [Issue #56](https://github.com/hl7ch/ch-rad-order/issues/56): Replaced Platelets unit of measurement 10^3/µL with 10^9/L (According to http://unitsofmeasure.org V2.01).

##### Adopted from CH ORF
* [ORF Issue Issue #108](https://github.com/hl7ch/ch-orf/issues/108): Improve slicing that info entry[x] warnings are not shown.

### STU 1 (2022-02-22)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:

* [Issue #22](https://github.com/hl7ch/ch-rad-order/issues/22): Value Sets are draft; will be refined with Swiss Rad. Society. 
* Interactive behavior of the questionnaire (such as conditional display of items) will be added in the next release.
* Use case dependent constraints in the questionnaire are subject of further discussions.

#### Follow up of changes in CH ORF
* [ORF Issue #31](https://github.com/hl7ch/ch-rad-order/issues/31): The values for the readonly fields order.title, order.type, order.category are now defined fix in the composition and shown no more in the questionnaire. 
* [ORF Issue #50](https://github.com/hl7ch/ch-rad-order/issues/50): Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.
* [ORF Issue #53](https://github.com/hl7ch/ch-rad-order/issues/53) (Feedback 1): The patient in the order defined as required ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html), [CH ORF Composition Profile](http://build.fhir.org/ig/hl7ch/ch-orf/StructureDefinition-ch-orf-composition.html).
* [ORF Issue #57](https://github.com/hl7ch/ch-rad-order/issues/57):Added 'GLN' to organization ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html)).
* [ORF Issue #60](https://github.com/hl7ch/ch-rad-order/issues/60) and [Issue #63](https://github.com/hl7ch/ch-rad-order/issues/63):   Added patients marital status to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
* [ORF Issue #64](https://github.com/hl7ch/ch-rad-order/issues/64): Add patients language of correspondence to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
* [ORF Issue #65](https://github.com/hl7ch/ch-rad-order/issues/65): Added 'ZSR' as Practitioner.identifier to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html).
* [ORF Issue #80](https://github.com/hl7ch/ch-rad-order/issues/80): Expansion of the [questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) field 'coverage.self'. Differentiation between [patient himself](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfPatient.html) or [related person](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfRelatedPerson.html) as self-payer.
* [ORF Issue #84](https://github.com/hl7ch/ch-rad-order/issues/84): Copy receiver is meant to receive a copy from the order and all evolving results thereof.
* [ORF Issue #91](https://github.com/hl7ch/ch-rad-order/issues/91): Change source of the codes for [desired accommodation](http://build.fhir.org/ig/hl7ch/ch-orf/ValueSet-ch-orf-vs-desiredaccommodation.html).
* [ORF Issue #101](https://github.com/hl7ch/ch-rad-order/issues/101) Cardinality for Questionnaire and QR in Composition set to 0..1. For details see home.

#### Added
* [Issue #2](https://github.com/hl7ch/ch-rad-order/issues/2): PDF added as original representation.
* [Issue #17](https://github.com/hl7ch/ch-rad-order/issues/17): Added References to Images of previous results to questionnaire.
* [Issue #19](https://github.com/hl7ch/ch-rad-order/issues/19): Caveats changed from boolean to Undetermined/absent/present.
* [Issue #23](https://github.com/hl7ch/ch-rad-order/issues/23): Caveat Drug prescription improved; added B-Blocker.

#### Changed / Updated
* [Issue #18](https://github.com/hl7ch/ch-rad-order/issues/18): Cardinality for Questionnaire and QR in Composition set to 0..1. Updated [documentation](http://fhir.ch/ighttp://build.fhir.org/ig/hl7ch/ch-orf/index.html) accordingly.
* [Issue #4](https://github.com/hl7ch/ch-rad-order/issues/4): Change type of item 'attachment.attachment' to attachment.

#### Issues resolved without amendment
 * [Issue #20](https://github.com/hl7ch/ch-rad-order/issues/20) Multiple imaging procedures in the same order: Not implemented in order to avoid complexity. 
