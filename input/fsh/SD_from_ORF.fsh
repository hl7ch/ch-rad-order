// CH RAD-Order Structure Defintions derived from CH ORF


/*
Profile: ChRadOrderQuestionnaire
Parent: ChOrfQuestionnaire
Title: "CH RAD-Order Questionnaire"
Id: ch-rad-order-questionnaire
Description: "Definition for the Questionnaire resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Questionnaire"
*/


/*
Profile: ChRadOrderQuestionnaireResponse
Parent: ChOrfQuestionnaireResponse
Id: ch-rad-order-questionnaireresponse
Title: "CH RAD-Order QuestionnaireResponse"
Description: "Definition for the QuestionnaireResponse resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order QuestionnaireResponse"
*/

Profile: ChRadOrderServiceRequest
Parent: ChOrfServiceRequest
Id: ch-rad-order-servicerequest
Title: "CH RAD-Order ServiceRequest"
Description: "Definition for the ServiceRequest resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order ServiceRequest"
* . ^definition = "This IG follows the IHE Scheduled Workflow (SWF) Profile: 
An Order Filler accepts from an Order Placer a single Order that it equates to a Filler Order 
(which is concept commonly used in HL7) or Imaging Service Request (Concept commonly used in DICOM). 
Consequently one CH RAD-Order Document contains one CH RAD-Order ServiceRequest which depicts one Placer Order 
equal one Filler Order equal one Imaging Service Request."

* status and intent and code and orderDetail MS
* subject and authoredOn and requester and performer and language MS
* replaces and priority and bodySite and locationReference and reasonReference and insurance and patientInstruction and note MS

* category 1..1 MS
* category from ChRadOrderRequestedService

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

/* !!!!!!!!!!CH Rad-Order UNTERSTUETZT LOINC/RSNA PLAYBOOK WIE FOLGT: ANSELLE DER ITEMS [4] - [7] WIRD IN
                servicerequest.code DER PLABOOK CODE ANGEGBEN. VOM QUESTIONNAIRE WIRD DAS NICHT UNTERSTÜTZT, DA NUR RELEVANT, WENN
                ZWISCHEN SENDER UND EMPFÄNGER VEREINBART.
*/
* code.coding[LncPlbFull] from LNCPLAYBFULL

* code.coding[RdlxModType] from ChRadOrderModalityType 

// * code.coding from LNCPLAYBFULL
// * code.text  from ChRadOrderModalityType or LNCPLAYBFULL
* code ^short = "Use RSNA/LOINC Playbook (Full Version support) OR Codes from ChRadOrderModalityType but NOT both. In case of ChRadOrderModalityType
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

* orderDetail[RadOrderImagingRegion] from ChRadOrderImagingRegion
* orderDetail[RadOrderImagingFocus] from ChRadOrderImagingFocus
* orderDetail[RadOrderLaterality] from ChRadOrderLaterality
* orderDetail[RadOrderViewType] from ChRadOrderViewType
* orderDetail[RadOrderManeuverType] from ChRadOrderManeuverType
* orderDetail[RadOrderGuidanceForAction] from ChRadOrderGuidanceForAction


* locationReference = Reference(ChCoreLocation)


* reasonReference MS
* reasonReference only Reference(ChRadOrderDiagnoseList) 



* insurance ^slicing.discriminator.type = #pattern
* insurance ^slicing.discriminator.path = "type.coding.code"
* insurance ^slicing.rules = #open
* insurance ^slicing.ordered = true 
* insurance ^slicing.description = "Slice based on the component.code pattern"

// provisorisch
* insurance contains
    accidentInsurance 0..1 and 
    basicInsurance 0..1 and
    supplementaryInsurance 0..1 and
    otherInsurance 0..1
//-----

* insurance[accidentInsurance] only Reference(ChOrfCoverage)
* insurance[basicInsurance] only Reference(ChOrfCoverage)
* insurance[supplementaryInsurance] only Reference(ChOrfCoverage)
* insurance[otherInsurance] only Reference(ChOrfCoverage)

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

* supportingInfo[diagnoseList] only Reference(ChRadOrderDiagnoseList)
* supportingInfo[caveats] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[precedingImagingResults] only Reference(ImagingStudy)
* supportingInfo[patientConsent] only Reference(Consent)

* supportingInfo[diagnoseList] MS
* supportingInfo[caveats] MS
* supportingInfo[precedingImagingResults] MS
* supportingInfo[patientConsent] MS

* supportingInfo[caveats] ^slicing.discriminator.type = #pattern
* supportingInfo[caveats] ^slicing.discriminator.path = "Reference"
* supportingInfo[caveats] ^slicing.rules = #open
* supportingInfo[caveats] ^slicing.ordered = true 
* supportingInfo[caveats] ^slicing.description = "Slice based on the component.code pattern" 

* supportingInfo[caveats] contains
    BloodCoag 0..1 and
    RenalInsuff 0..1 and
    Claustrophobia 0..1 and
    BodyPierc 0.. and
    Device 0..* and
    Hyperthyr 0..1 and
    Diabetes 0..1 and
    Gravida 0..1 and  
    ContrastAllerg 0..1 and   
    DrugPrescr 0..*                       

* supportingInfo[caveats][BloodCoag] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[caveats][RenalInsuff] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[caveats][Claustrophobia] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[caveats][BodyPierc] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[caveats][Device] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[caveats][Hyperthyr] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[caveats][Diabetes] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[caveats][Gravida] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[caveats][ContrastAllerg] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[caveats][DrugPrescr] only Reference(ChRadOrderCaveatCondition)




/*
64779008	Blood coagulation disorder (disorder)
723188008	Renal insufficiency (disorder)
19887002	Claustrophobia (finding)
879862001	Body piercing (finding)
397578001	Device in situ (finding)
34486009	Hyperthyroidism (disorder)
73211009	Diabetes mellitus (disorder)
366321006	Finding of gravida (finding)
404684003	Clinical finding (finding)
293637006	Allergy to contrast media (finding)
182817000	Drug prescription (situation)
*/

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

// TBD * supportingInfo[patientConsent][PrivacyConsent] only Reference(ChOrfConsent)
// TBD * supportingInfo[patientConsent][TreatmentConsent] only Reference(ChOrfConsent)
// TBD * supportingInfo[patientConsent][RearchConsent] only Reference(ChOrfConsent)
// TBD * supportingInfo[patientConsent][ADCD] only Reference(ChOrfConsent)

* supportingInfo[patientConsent][PrivacyConsent] MS
* supportingInfo[patientConsent][TreatmentConsent] MS
* supportingInfo[patientConsent][RearchConsent] MS
* supportingInfo[patientConsent][ADCD] MS


Extension: ChRadOrderAppointment
Id: ch-rad-order-appointment
Title: "CH RAD-Order Appointment"
Description: "Extension to define Time and Location of ServiceRequest Fulfillment in context of CH RAD-Order."
* value[x] 1..1
* value[x] only Reference(ChOrfAppointment) 
* value[x] ^short = "Time and Location for ServiceRequest Fulfillment"


Profile: ChRadOrderDocument
Parent: ChOrfDocument
Id: ch-rad-order-document
Title: "CH RAD-Order Document"
Description: "Definition for the Bundle (document) resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Document"
* . ^definition = "This IG follows the IHE Scheduled Workflow (SWF) Profile: 
An Order Filler accepts from an Order Placer a single Order that it equates to a Filler Order 
(which is concept commonly used in HL7) or Imaging Service Request (Concept commonly used in DICOM). 
Consequently one CH RAD-Order Document contains one CH RAD-Order ServiceRequest which depicts one Placer Order 
equal one Filler Order equal one Imaging Service Request."


* entry contains ChOrfAppointment 0..*
* entry contains ChOrfImagingStudy 0..*
* entry contains ChOrfCoverage 0..*
* entry contains ChOrfCaveatObservation 0..* 
// TBD * entry contains ChOrfConsent 0..* 

* entry[ChOrfServiceRequest].resource ^type.profile = Canonical(ChRadOrderServiceRequest)
* entry[ChOrfAppointment].resource ^type.profile = Canonical(ChOrfAppointment)
* entry[ChOrfImagingStudy].resource ^type.profile = Canonical(ChOrfImagingStudy)
* entry[ChOrfCoverage].resource ^type.profile = Canonical(ChOrfCoverage)
* entry[ChOrfCaveatObservation].resource ^type.profile = Canonical(ChOrfCaveatObservation)
// TBD * entry[ChOrfConsent].resource ^type.profile = Canonical(ChOrfConsent)


Profile: ChRadOrderComposition
Parent: ChOrfComposition
Id: ch-rad-order-composition
Title: "CH RAD-Order Composition"
Description: "Definition for the Composition resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Composition"

/* Slicing Fehlermeldung
* section.entry ^slicing.discriminator.type = #pattern
* section.entry ^slicing.discriminator.path = "Composition.section.entry.extension"
* section.entry ^slicing.rules = #open
* section.entry ^slicing.ordered = true 
* section.entry ^slicing.description = "Composition.section.entry.extension"

* section.entry contains ChOrfAppointment 1..*
* section.entry contains ChOrfImagingStudy 0..*
* section.entry contains ChOrfCoverage 0..*
* section.entry contains ChOrfObservation 0..* 
* section.entry contains ChOrfConsent 0..* 

* section.entry[ChOrfServiceRequest] only Reference(ChRadOrderServiceRequest)
* section.entry[ChOrfAppointment] only Reference(ChOrfAppointment)
* section.entry[ChOrfImagingStudy] only Reference(ChOrfImagingStudy)
* section.entry[ChOrfCoverage] only Reference(ChOrfCoverage)
* section.entry[ChOrfObservation] only Reference(ChOrfCaveatObservation)
* section.entry[ChOrfConsent] only Reference(ChOrfConsent)
*/

