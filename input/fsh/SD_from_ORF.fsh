
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
* replaces and priority and bodySite and  reasonCode and  locationReference and reasonReference and insurance and patientInstruction and note MS

//q* code.coding from VsRadOrderModalityType
//* .code.text   = VsRadOrderModalityType.expansion.contanins.display


* orderDetail ^slicing.discriminator.type = #pattern
* orderDetail ^slicing.discriminator.path = "code"
* orderDetail ^slicing.rules = #open
* orderDetail ^slicing.ordered = true 
* orderDetail ^slicing.description = "Slice based on the component.code pattern"

* orderDetail contains 
    RadOrderImagingRegion 1..1 and 
    RadOrderImagingFocus 0..* and   
    RadOrderLaterality 1..1 and
    RadOrderViewType 0..*  and
    RadOrderManeuverType 0..* and
    RadOrderGuidanceForAction 0..* 




* locationReference = Reference(ChCoreLocation)

* reasonReference ^slicing.discriminator.type = #pattern
* reasonReference ^slicing.discriminator.path = "code"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.ordered = true 
* reasonReference ^slicing.description = "Slice based on the component.code pattern"

* reasonReference contains
    adOrderReasonForExam 0..*

// * reasonReference[diagnosticQuestion] = Reference(ConditionUvIps)

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


* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "code"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = true 
* supportingInfo ^slicing.description = "Slice based on the component.code pattern" 

 * supportingInfo contains
    problemList 0..1 and 
    caveats 0..* and
    precedingImagingResults 0..* and
    patientConsent 0..1 

* supportingInfo[problemList] = Reference(ConditionUvIps)

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


* supportingInfo[caveats] = Reference(ChOrfObservation)
* supportingInfo[precedingImagingResults] = Reference(ChOrfImagingStudy)
/*
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
    natureofHealthProblem



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
* value[x] only Reference(ChOrfAppointment) */

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
<<<<<<< HEAD
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




=======
>>>>>>> 4bb47fd29c38a082ddaf83a81a19ab866d159741

Profile: ChRadOrderComposition
Parent: ChOrfComposition
Id: ch-rad-order-composition
Title: "CH RAD-Order Composition"
Description: "Definition for the Composition resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Composition"

* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = true 
* section ^slicing.description = "Slice based on the component.code pattern"

* section  contains ChOrfAppointment 0..*


