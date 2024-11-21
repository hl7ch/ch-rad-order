### Purpose

The CH RAD-Order Implementation Guide defines the content of a radiology order and covers the following use cases:

* Referral for imaging
* Referral for radiological intervention
* Request for second Opinion
* Request for remote reporting
* Request for previous imaging results

CH RAD-Order is intended for use in directional communication as well as for the use in the SWISS EPR.
  
<div markdown="1" class="stu-note">

[Significant changes, open and closed issues.](changelog.html)

</div>

**Download**: You can download this implementation guide in [npm format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Foundation 
This Implementation Guide uses FHIR defined resources. For details on HL7 FHIR R4 see [http://hl7.org/fhir/r4](http://hl7.org/fhir/r4).

Because the Implementation Guide relies heavily on the FHIR Resources Questionnaire and QuestionnaireResponse, forms are addressed here as Questionnaires.
  
This Implementation Guide is derived from the [CH Order & Referral by Form (CH ORF) Implementation Guide (CH ORF)](http://build.fhir.org/ig/hl7ch/ch-orf/index.html) which relies on HL7 Structured Data Capture Implementation Guide, see [SDC](http://build.fhir.org/ig/HL7/sdc/) and uses the Swiss Core Profiles, see [CH Core](http://build.fhir.org/ig/hl7ch/ch-core/index.html).

There has been a discussion whether population of the resources such as Patient Resource, ServiceRequest Resource 
etc. with the content of the QuestionnaireResponse Resource should be done by the order placer application or rather 
by the order filler application. The argument for assigning the task to the order placer is a result of the following 
consideration: the authors of a particular implementation guide  may decide to define a questionnaire and its rendering but to leave it open if in a particular implementation the questionnaire is implemented or if the representation towards the user is made (in accordance to the questionnaire definition) by other technical means. In such a case, there would be no QuestionnaireResponse Resource in the bundle because all content is already in concerning resources. In order to handle all FHIR exchange formats equal (as far as sensible), the authors decided to mandate the order placer application with the task.

Applications claiming for conformance with the ORF Implementation Guide shall:

* Render (and in case of the Questionnaire Filler allow for data entry) all elements of a questionnaire in the user interface (e.g. on screen, in print). Grouping of items and the order of items within shall be adequately reproduced according to the questionnaire.
* In case of an implementation without the resources Questionnaire and QuestionnaireResponse, the content of otherwise implemented user interfaces shall be in accordance to the questionnaire definition.
* Be able to process all codes related to the generic elements in a Questionnaire.

Actors, transactions and safety considerations are covered in the corresponding sections of 
[CH ORF](http://build.fhir.org/ig/hl7ch/ch-orf/index.html).

### Terminology

CH RAD-Order allows coding of the requested imaging service by means of [LOINC/RSNA RADIOL0GY PLAYBOOK](https://loinc.org/collaboration/rsna/).

Systems such as PIS and KIS may not yet support RADIOLOGY PLAYBOOK. For this reason, CH RAD-Order allows coding of the relevant dimensions 
by means of [RADLEX](https://www.rsna.org/practice-tools/data-tools-and-standards/radlex-radiology-lexicon).

The relevant dimensions are defined by PLAYBOOK such as:

Modality
Region
Focus
Laterality
Maneuvre
Guidance for action (used for interventions)
  
 Coding of these dimensions is done by [RADLEX terms](https://www.rsna.org/practice-tools/data-tools-and-standards/radlex-radiology-lexicon).
 
IMPORTANT NOTICE: Value sets, in particular those containing Radlex terms, are still experimental. Definitive value sets will be defined when CH-Rad-Order becomes operational.All coding is preliminary and not yet approved by eHealth Suisse.

#### Previous Images

Results from earlier can be provided be means of attachments or - in case of DICOM SOP Instances - by means of a DICOM Service (e.g. WADO-RS). The ImagingStudy Resource allows for indicating DICOM tags such as SOP Instance UID, Series instance UID etc. DICOM Imaging data as well as other data (pdf, jpeg etc.) can be attached by means of a document reference.

The implementation of a DICOM service requires prerequisites in terms of infrastructure and policies (e.g. access rights). CH RAD-Order does not give guidance about that.

IMPORTANT NOTICE: Questionnaire items allowing entry for DICOM tags (such as study instance ID, series instance ID etc.) are for illustration / experimental use. A real world application shall hopefully provide other means for the selection of images / reports etc.
 
#### IP Statements
This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

#### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

#### Dependency Table

{% include dependency-table.xhtml %}

#### Globals Table

{% include globals-table.xhtml %}
