All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 2 Technical Correction (2025-12-16)
Updated dependencies to the latest Swiss Implementation Guide versions; applied corresponding IG updates and technical fixes required by the updated HL7 IG Publisher.
* CH Core: 5.0.0 -> 6.0.0
* CH ORF: 3.0.0 -> 3.0.2
* Add required element `ValueSet.experimental` (set to `true`as stated in [#22](https://github.com/hl7ch/ch-rad-order/issues/22))
* [#82](https://github.com/hl7ch/ch-rad-order/issues/82): Add [expansion-parameter](https://build.fhir.org/codesystem-guide-parameter-code.html#:~:text=expansion%2Dparameter,as%20SNOMED%20CT) for the usage of SNOMED CT Swiss Extension
* Add [pin-canonicals](http://build.fhir.org/ig/FHIR/fhir-tools-ig/branches/master/CodeSystem-ig-parameters.html#:~:text=for%20further%20information-,pin%2Dcanonicals,-Pin%20Canonical%20Versions) parameter to define the handling of unversioned canonical references

### STU 2 (2024-12-17)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH RAD-Order:

* [#62](https://github.com/hl7ch/ch-rad-order/issues/62): Revision (harmonization, usage SCT) of code system and value set ServiceRequest Category

See also open issues on [GitHub](https://github.com/hl7ch/ch-rad-order/issues).

#### Changed / Updated 
* [#72](https://github.com/hl7ch/ch-rad-order/issues/72): Update use cases German; added QR for each use case
* [#73](https://github.com/hl7ch/ch-rad-order/issues/73): Update use cases English; added QR for each use case
* [#63](https://github.com/hl7ch/ch-rad-order/issues/63): Update Coverage.type according to changes in parent profile CH ORF (see [CH ORF #177](https://github.com/hl7ch/ch-orf/issues/177))

#### Fixed
* [#71](https://github.com/hl7ch/ch-rad-order/issues/74): Fix typo in example 
* [#74](https://github.com/hl7ch/ch-rad-order/issues/74): Fixing the title and description of the qualifier value extension
* [#79](https://github.com/hl7ch/ch-rad-order/issues/79): Replace deprecated discriminator (`pattern` -> `value`) 
* [#67](https://github.com/hl7ch/ch-rad-order/issues/67): Fix history page

### STU 2 Ballot (2024-05-17)
#### Open Issues
* [#62](https://github.com/hl7ch/ch-rad-order/issues/63): Update ServiceRequest
* [#63](https://github.com/hl7ch/ch-rad-order/issues/62): Update Coverage

#### Added
* [#36](https://github.com/hl7ch/ch-rad-order/issues/36): Added  SCT#373068000 as initial value to caveat Diabetes mellitus".
* [#37](https://github.com/hl7ch/ch-rad-order/issues/37): Added item Modality (for series) to Questionnaire because this item has card 1..1 in ImagingStudy Resource.
* [#39](https://github.com/hl7ch/ch-rad-order/issues/39): Added a default value to "Bildgebendes Verfahren"; This item will therefore never be empty.
* [#46](https://github.com/hl7ch/ch-rad-order/issues/47): Added details about attachments to index.html
* [#47](https://github.com/hl7ch/ch-rad-order/issues/47): Updated index.html
* [#48](https://github.com/hl7ch/ch-rad-order/issues/48): Updated Questionnaire Response according to #37
* [#49](https://github.com/hl7ch/ch-rad-order/issues/49): Added UNKNOWN to VS Acquisition Modality.
* [#59](https://github.com/hl7ch/ch-rad-order/issues/59): Use CH Core Condition as parent profile
* [#57](https://github.com/hl7ch/ch-rad-order/issues/57): Fix StructureMap errors and adapt map to new Questionnaire


##### Adopted from CH ORF
* [ORF #71](https://github.com/hl7ch/ch-orf/issues/71): Added Initiator and his relationship to to the patient.
* [ORF #72](https://github.com/hl7ch/ch-orf/issues/72): Added Patient consent.
* [ORF #73](https://github.com/hl7ch/ch-orf/issues/73): Added Entry date, discharge Date and Organization of stationary episode antecedent to requested service (e.g spitex).
* [ORF #61](https://github.com/hl7ch/ch-orf/issues/61): Added Family doctor.
* [ORF #106](https://github.com/hl7ch/ch-orf/issues/106): Changed Cardinality of Contact Person from 0..1 to 0..*.* 

#### Changed / Updated
* [#41](https://github.com/hl7ch/ch-rad-order/issues/41): Corrected radlex url
* [#44](https://github.com/hl7ch/ch-rad-order/issues/44): Changed license to CC0 1.0 Universal (CC0 1.0)
* [#51](https://github.com/hl7ch/ch-rad-order/issues/51): Dropped group, changed hierarchy of device and choice (present, absent, undetermined) in caveat.device item of questionnaire.
* [#52](https://github.com/hl7ch/ch-rad-order/issues/52): Change according to CH-ORF#50: attachment embedded in the DocumentReference resource instead of CH RAD-Order Media.
* [#53](https://github.com/hl7ch/ch-rad-order/issues/53): Added series.instance.sopClass which has has cardinality 1..1 to questionnaire and questionnaire response.
* [#54](https://github.com/hl7ch/ch-rad-order/issues/54): Snomed Code 182817000 -Drug prescription (situation)- is not active anymore; replaced with Changed to 1290126002 -Drug therapy with explicit context (situation).
* [#56](https://github.com/hl7ch/ch-rad-order/issues/56): Replaced Platelets unit of measurement 10^3/µL with 10^9/L (According to http://unitsofmeasure.org V2.01).

##### Adopted from CH ORF
* [ORF Issue Issue #108](https://github.com/hl7ch/ch-orf/issues/108): Improve slicing that info entry[x] warnings are not shown.

### STU 1 (2022-02-22)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH ORF:

* [#22](https://github.com/hl7ch/ch-rad-order/issues/22): Value Sets are draft; will be refined with Swiss Rad. Society. 
* Interactive behavior of the questionnaire (such as conditional display of items) will be added in the next release.
* Use case dependent constraints in the questionnaire are subject of further discussions.

#### Follow up of changes in CH ORF
* [ORF #31](https://github.com/hl7ch/ch-rad-order/issues/31): The values for the readonly fields order.title, order.type, order.category are now defined fix in the composition and shown no more in the questionnaire. 
* [ORF #50](https://github.com/hl7ch/ch-rad-order/issues/50): Change references of the ch-orf-copyreceiver from `CH Core Organization Profile | CH Core Patient Profile` to `CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson` and update the Questionnaire accordingly.
* [ORF #53](https://github.com/hl7ch/ch-rad-order/issues/53) (Feedback 1): The patient in the order defined as required ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html), [CH ORF Composition Profile](http://build.fhir.org/ig/hl7ch/ch-orf/StructureDefinition-ch-orf-composition.html).
* [ORF #57](https://github.com/hl7ch/ch-rad-order/issues/57):Added 'GLN' to organization ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html)).
* [ORF #60](https://github.com/hl7ch/ch-rad-order/issues/60) and [#63](https://github.com/hl7ch/ch-rad-order/issues/63):   Added patients marital status to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
* [ORF #64](https://github.com/hl7ch/ch-rad-order/issues/64): Add patients language of correspondence to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
* [ORF #65](https://github.com/hl7ch/ch-rad-order/issues/65): Added 'ZSR' as Practitioner.identifier to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html).
* [ORF #80](https://github.com/hl7ch/ch-rad-order/issues/80): Expansion of the [questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) field 'coverage.self'. Differentiation between [patient himself](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfPatient.html) or [related person](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfRelatedPerson.html) as self-payer.
* [ORF #84](https://github.com/hl7ch/ch-rad-order/issues/84): Copy receiver is meant to receive a copy from the order and all evolving results thereof.
* [ORF #91](https://github.com/hl7ch/ch-rad-order/issues/91): Change source of the codes for [desired accommodation](http://build.fhir.org/ig/hl7ch/ch-orf/ValueSet-ch-orf-vs-desiredaccommodation.html).
* [ORF #101](https://github.com/hl7ch/ch-rad-order/issues/101) Cardinality for Questionnaire and QR in Composition set to 0..1. For details see home.

#### Added
* [#2](https://github.com/hl7ch/ch-rad-order/issues/2): PDF added as original representation.
* [#17](https://github.com/hl7ch/ch-rad-order/issues/17): Added References to Images of previous results to questionnaire.
* [#19](https://github.com/hl7ch/ch-rad-order/issues/19): Caveats changed from boolean to Undetermined/absent/present.
* [#23](https://github.com/hl7ch/ch-rad-order/issues/23): Caveat Drug prescription improved; added B-Blocker.

#### Changed / Updated
* [#18](https://github.com/hl7ch/ch-rad-order/issues/18): Cardinality for Questionnaire and QR in Composition set to 0..1. Updated [documentation](http://fhir.ch/ighttp://build.fhir.org/ig/hl7ch/ch-orf/index.html) accordingly.
* [#4](https://github.com/hl7ch/ch-rad-order/issues/4): Change type of item 'attachment.attachment' to attachment.

#### Issues resolved without amendment
 * [#20](https://github.com/hl7ch/ch-rad-order/issues/20) Multiple imaging procedures in the same order: Not implemented in order to avoid complexity. 
