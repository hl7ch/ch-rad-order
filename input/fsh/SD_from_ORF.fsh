
// CH Rad Order Structure Defintions derived from ORF

Profile: ChRadOrderQuestionnaire
Parent: ChOrfQuestionnaire
Title: "CH RAD-Order Questionnaire"
Id: ch-rad-order-questionnaire
Description: "Definition for the Questionnaire resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Questionnaire"

Profile: ChRadOrderServiceRequest
Parent: ChOrfServiceRequest
Id: ch-rad-order-servicerequest
Title: "CH RAD-Order ServiceRequest"
Description: "Base definition for the ServiceRequest resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order ServiceRequest"
* . ^definition = "This IG follows the IHE Scheduled Workflow (SWF) Profile: 
An Order Filler accepts from an Order Placer a single Order that it equates to a Filler Order 
(which is concept commonly used in HL7) or Imaging Service Request (Concept commonly used in DICOM). 
Consequently one CH RAD-Order Document contains one CH RAD-Order ServiceRequest which depicts one Placer Order 
equal one Filler Order equal one Imaging Service Request."

* status and intent and code and orderDetail MS
* subject and authoredOn and requester and performer MS
* replaces and priority and bodySite and locationReference and reasonReference and insurance and patientInstruction and note MS

* category 1..1 MS
* category from ChRadOrderDocumentCategory // Equal to Category in Bundle
* category ^short = "Equal to Category in Bundle"
* category ^definition = "Equal to Category in Bundle"

* reasonCode MS
* reasonCode ^short = "Diagnostic Question in Freetext: Coding of all diagnostic questions not feasable."
* reasonCode.coding 0..0

/* 
short und defintion gehen nicht so
* reasonCode.coding.code ^short = "--"
* reasonCode.coding.code ^definition = "--"
*/
* reasonCode.text MS

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "code.coding.system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = true 
* code.coding ^slicing.description = "Slice based on the component.code pattern"

* code.coding contains
    LncPlbFull 0..1 and
    RdlxModType 0..1

* code.coding[LncPlbFull] from LNCPLAYBFULL

* code.coding[RdlxModType] from VsRadOrderModalityType 

// * code.coding from LNCPLAYBFULL
// * code.text  from VsRadOrderModalityType or LNCPLAYBFULL
* code ^short = "Use RSNA/LOINC Playbook (Full Version support) OR Codes from VsRadOrderModalityType but NOT both. In case of VsRadOrderModalityType
specify Imaging Request Details by means of orderDetail."

* orderDetail ^slicing.discriminator.type = #pattern
* orderDetail ^slicing.discriminator.path = "code.coding.system"
* orderDetail ^slicing.rules = #open
* orderDetail ^slicing.ordered = true 
* orderDetail ^slicing.description = "Slice based on the component.code pattern"

* orderDetail contains 
//    RadOrderModalityType 0..1 and
    RadOrderImagingRegion 0..* and 
    RadOrderImagingFocus 0..* and   
    RadOrderLaterality 0..1 and
    RadOrderViewType 0..*  and
    RadOrderManeuverType 0..* and
    RadOrderGuidanceForAction 0..* 

// Cardinality of Laterality to be discussed
* orderDetail[RadOrderImagingRegion] MS
* orderDetail[RadOrderImagingFocus] MS
* orderDetail[RadOrderLaterality] MS
* orderDetail[RadOrderViewType] MS
* orderDetail[RadOrderManeuverType] MS
* orderDetail[RadOrderGuidanceForAction] MS

* orderDetail[RadOrderImagingRegion] from VsRadOrderImagingRegion
* orderDetail[RadOrderImagingFocus] from VsRadOrderImagingFocus
* orderDetail[RadOrderLaterality] from VsRadOrderLaterality
* orderDetail[RadOrderViewType] from VsRadOrderViewType
* orderDetail[RadOrderManeuverType] from VsRadOrderManeuverType
* orderDetail[RadOrderGuidanceForAction] from VsRadOrderGuidanceForAction


* locationReference = Reference(ChCoreLocation)


* reasonReference MS
* reasonReference only Reference(ChOrfDiagnoseList) 

* insurance ^slicing.discriminator.type = #pattern
* insurance ^slicing.discriminator.path = "code"
* insurance ^slicing.rules = #open
* insurance ^slicing.ordered = true 
* insurance ^slicing.description = "Slice based on the component.code pattern"

* insurance contains
    accidentInsurance 0..1 and 
    basicInsuranceKvg 0..1 and
    supplementaryInsurance 0..1 and
    OtherInsurance 0..1

* insurance = Reference(ChCoreCoverage)
* supportingInfo MS

* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "Reference"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = true 
* supportingInfo ^slicing.description = "Slice based on the component.code pattern" 

* supportingInfo contains
    diagnoseList 0..1 and 
    caveats 0..* and
    precedingImagingResults 0..* and
    patientConsent 0..4 

* supportingInfo[diagnoseList] only Reference(ChOrfDiagnoseList)
* supportingInfo[caveats] only Reference(ChOrfCaveatCondition)
* supportingInfo[precedingImagingResults] only Reference(ImagingStudy)
* supportingInfo[patientConsent] only Reference(Consent)

* supportingInfo[diagnoseList] MS
* supportingInfo[caveats] MS
* supportingInfo[precedingImagingResults] MS
* supportingInfo[patientConsent] MS

* supportingInfo[patientConsent] ^slicing.discriminator.type = #pattern
* supportingInfo[patientConsent] ^slicing.discriminator.path = "Reference"
* supportingInfo[patientConsent] ^slicing.rules = #open
* supportingInfo[patientConsent] ^slicing.ordered = true 
* supportingInfo[patientConsent] ^slicing.description = "Slice based on the component.code pattern" 

* supportingInfo[patientConsent] contains
    PrivacyConsent 0..1 and
    TreatmentConsent 0..1 and
    RearchConsent 0..1 and
    ADCD 0..1                                    //Advanced Care Directive  

* supportingInfo[patientConsent][PrivacyConsent] only Reference(ChOrfConsent)
* supportingInfo[patientConsent][TreatmentConsent] only Reference(ChOrfConsent)
* supportingInfo[patientConsent][RearchConsent] only Reference(ChOrfConsent)
* supportingInfo[patientConsent][ADCD] only Reference(ChOrfConsent)

* supportingInfo[patientConsent][PrivacyConsent] MS
* supportingInfo[patientConsent][TreatmentConsent] MS
* supportingInfo[patientConsent][RearchConsent] MS
* supportingInfo[patientConsent][ADCD] MS




/*
* supportingInfo[caveats] ^slicing.discriminator.type = #pattern
* supportingInfo[caveats] ^slicing.discriminator.path = "code"
* supportingInfo[caveats] ^slicing.rules = #open
* supportingInfo[caveats] ^slicing.ordered = true 
* supportingInfo[caveats] ^slicing.description = "Slice based on the component.code pattern" 
    
* supportingInfo[caveats] contains
    renalFunction 0..1 and
    coagulation 0..1 and
    pacemaker 0..1 and
    metal 0..1 and 
    piercings 0..1 and
    neuralStimulator 0..1 and
    insulinPump 0..1 and
    patientControlledAnalgesia 0..1 and
    cochleaImplant 0..1 and
    hypertherosis 0..1 and
    diabetes 0..1 and // Metformin
    claustrophobia 0..1 and
    pregnancy 0..1 and
    additionalKnownIssues 0..*

* supportingInfo[caveats] = Reference(Condition)

* supportingInfo[caveats][claustrophobia].evidence.code = SCT#404858007
*/
/*
* supportingInfo[precedingImagingResults] = Reference(ChOrfImagingStudy)

* section[context].entry contains ChOrfCoverage 0..*
* section[context].entry contains ChOrfAppointment 0..*

* section[clinicalContent].entry contains ChOrfImagingStudy 0..*
* section[clinicalContent].entry contains ChRadOrderServiceRequest 1..1

* section[clinicalContent].section ^slicing.discriminator.type = #pattern
* section[clinicalContent].section ^slicing.discriminator.path = "code"
* section[clinicalContent].section ^slicing.rules = #open
* section[clinicalContent].section ^slicing.ordered = true 
* section[clinicalContent].section ^slicing.description = "Slice based on the component.code pattern"

* section[clinicalContent].section contains
    reasonforReferral 1..1 and
    natureofHealthProblem 1..1
*/


/*
// * requisition MS
// * requisition^short = ""
// * requisition^definition = "A shared identifier common to all service requests that were authorized more or less simultaneously by a single author, 
// representing the composite or group identifier.This refers to the Acquisition Number in the DICOM world. It is considered as a good practice to equal 
// Order Filler with the Acquisition Number and to populate requisition with it"

// * occurrence[x] only dateTime or Period

/* extension contains RadAppointment named radApp 0..1 MS
/*
Extension: RadAppointment
Title: "Appointment"
Id:  appointment
Description: "Appoint"
* value[x] only Reference(ChOrfAppointment) 
*/

Profile: ChRadOrderQuestionnaireResponse
Parent: ChOrfQuestionnaireResponse
Id: order-quech-rad-stionnaireresponse
Title: "CH RAD-Order QuestionnaireResponse"
Description: "Definition for the QuestionnaireResponse resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order QuestionnaireResponse"

Profile: ChRadOrderDocument
Parent: ChOrfDocument
Id: ch-rad-order-document
Title: "CH RAD-Order Document"
Description: "Definition for the Document resource in the context of CH RAD-Order."
* . ^short = "CCH RAD-Order Document"
* . ^definition = "This IG follows the IHE Scheduled Workflow (SWF) Profile: 
An Order Filler accepts from an Order Placer a single Order that it equates to a Filler Order 
(which is concept commonly used in HL7) or Imaging Service Request (Concept commonly used in DICOM). 
Consequently one CH RAD-Order Document contains one CH RAD-Order ServiceRequest which depicts one Placer Order 
equal one Filler Order equal one Imaging Service Request."

 	

* entry[ChOrfServiceRequest].resource only ChRadOrderServiceRequest

* entry contains ChOrfAppointment 0..*
* entry contains ChOrfImagingStudy 0..*
* entry contains ChOrfCoverage 0..*
* entry contains ChOrfObservation 0..*

// LoincRsnaPlaxbookParts
/*
Rad.Anatomic Location.Imaging Focus
Rad.Anatomic Location.Laterality
Rad.Anatomic Location.Laterality.Presence
Rad.Anatomic Location.Region Imaged
Rad.Guidance for.Action
Rad.Guidance for.Approach
Rad.Guidance for.Object
Rad.Guidance for.Presence
Rad.Maneuver.Maneuver Type
Rad.Modality.Modality Subtype
Rad.Modality.Modality Type
Rad.Pharmaceutical.Route
Rad.Pharmaceutical.Substance Given
Rad.Reason for Exam
Rad.Subject
Rad.Timing
Rad.View.Aggregation
Rad.View.View Type
*/

Profile: ChRadOrderComposition
Parent: ChOrfComposition
Id: ch-rad-order-composition
Title: "CH RAD-Order Composition"
Description: "Definition for the Composition resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Composition"

* category from ChRadOrderDocumentCategory
* type = SCT#2161000195103 "Imaging order (record articact)" // Swiss Extension

* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = true 
* section ^slicing.description = "Slice based on the component.code pattern"

* section  contains ChOrfAppointment 0..*


