// CH RAD-Order Structure Defintions derived from CH ORF

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
* language MS
* replaces MS
* replaces only Reference(ChRadOrderServiceRequest)
* intent MS

//------- category -------
* category 1..1 MS
* category from ChRadOrderRequestedService

//------- code -------
/* !!!!!!!!!! CH RAD-Order UNTERSTUETZT LOINC/RSNA PLAYBOOK WIE FOLGT: ANSELLE DER ITEMS [4] - [7] WIRD IN
              ServiceRequest.code DER PLAYBOOK CODE ANGEGBEN. VOM QUESTIONNAIRE WIRD DAS NICHT UNTERSTÜTZT, DA NUR RELEVANT, WENN
              ZWISCHEN SENDER UND EMPFÄNGER VEREINBART.*/
* code MS
* code ^short = "Use 'RSNA/LOINC Playbook (Full Version support)' OR Codes from 'ChRadOrderModalityType' but NOT both. 
In case of 'ChRadOrderModalityType' specify Imaging Request Details by means of orderDetail."
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    LncPlbFull 0..1 and 
    RdlxModType 0..1
* code.coding[LncPlbFull] MS
* code.coding[LncPlbFull] from LNCPLAYBFULL
* code.coding[RdlxModType] MS
* code.coding[RdlxModType] from ChRadOrderModalityType 

//------- orderDetail -------
* orderDetail MS
* orderDetail ^slicing.discriminator.type = #pattern
* orderDetail ^slicing.discriminator.path = "$this"
* orderDetail ^slicing.rules = #open
* orderDetail contains 
    ImagingRegion 0..* and 
    ImagingFocus 0..* and   
    Laterality 0..1 and // Cardinality of Laterality to be discussed
    ViewType 0..*  and
    ManeuverType 0..* and
    GuidanceForAction 0..* 
* orderDetail[ImagingRegion] MS
* orderDetail[ImagingRegion] from ChRadOrderImagingRegion
* orderDetail[ImagingFocus] MS
* orderDetail[ImagingFocus] from ChRadOrderImagingFocus
* orderDetail[Laterality] MS
* orderDetail[Laterality] from ChRadOrderLaterality
* orderDetail[ViewType] MS
* orderDetail[ViewType] from ChRadOrderViewType
* orderDetail[ManeuverType] MS
* orderDetail[ManeuverType] from ChRadOrderManeuverType
* orderDetail[GuidanceForAction] MS
* orderDetail[GuidanceForAction] from ChRadOrderGuidanceForAction

* authoredOn MS
// hier


* priority and bodySite and locationReference and reasonReference and insurance and patientInstruction and note MS


* reasonCode MS
* reasonCode ^short = "Diagnostic Question in Freetext: Coding of all diagnostic questions not feasable."
* reasonCode.coding 0..0

/* 
short und defintion gehen nicht so
* reasonCode.coding.code ^short = "--"
* reasonCode.coding.code ^definition = "--"
*/
* reasonCode.text MS





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
* . ^short = "CH RAD-Order Bundle (document)"
* . ^definition = "This IG follows the IHE Scheduled Workflow (SWF) Profile: 
An Order Filler accepts from an Order Placer a single Order that it equates to a Filler Order 
(which is concept commonly used in HL7) or Imaging Service Request (Concept commonly used in DICOM). 
Consequently one CH RAD-Order Document contains one CH RAD-Order ServiceRequest which depicts one Placer Order 
equal one Filler Order equal one Imaging Service Request."
// ---------- Bundle.entry:Composition ----------
* entry[Composition].resource ^type.profile = Canonical(ChRadOrderComposition)


Profile: ChRadOrderComposition
Parent: ChOrfComposition
Id: ch-rad-order-composition
Title: "CH RAD-Order Composition"
Description: "Definition for the Composition resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Composition"
// ---------- Composition.section.entry:ServiceRequest ----------
* section.entry[ServiceRequest] ^type.targetProfile = Canonical(ChRadOrderServiceRequest)

/* referenced from ServiceRequest
// ---------- Composition.section.entry:DocumentReference ----------
* section.entry contains Appointment 0..* MS
* section.entry[Appointment] only Reference(ChOrfAppointment)
* section.entry[Appointment] ^short = "Appointment"
* section.entry[Appointment].reference 1.. MS
// ---------- Composition.section.entry:ImagingStudy ----------
* section.entry contains ImagingStudy 0..* MS
* section.entry[ImagingStudy] only Reference(ChRadOrderImagingStudy)
* section.entry[ImagingStudy] ^short = "Imaging Study"
* section.entry[ImagingStudy].reference 1.. MS
// ---------- Composition.section.entry:Coverage ----------
* section.entry contains Coverage 0..* MS
* section.entry[Coverage] only Reference(ChOrfCoverage)
* section.entry[Coverage] ^short = "Coverage"
* section.entry[Coverage].reference 1.. MS
// ---------- Composition.section.entry:Consent ----------
* section.entry contains Consent 0..* MS
* section.entry[Consent] only Reference(ChOrfConsent)
* section.entry[Consent] ^short = "Consent"
* section.entry[Consent].reference 1.. MS
// ---------- Composition.section.entry:Observation ----------
* section.entry contains Observation 0..* MS
* section.entry[Observation] only Reference(ChRadOrderCaveatObservation)
* section.entry[Observation] ^short = "Caveat Observation"
* section.entry[Observation].reference 1.. MS
*/


/* No differences to CH ORF
Profile: ChRadOrderQuestionnaire
Parent: ChOrfQuestionnaire
Title: "CH RAD-Order Questionnaire"
Id: ch-rad-order-questionnaire
Description: "Definition for the Questionnaire resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Questionnaire"
*/


/* No differences to CH ORF
Profile: ChRadOrderQuestionnaireResponse
Parent: ChOrfQuestionnaireResponse
Id: ch-rad-order-questionnaireresponse
Title: "CH RAD-Order QuestionnaireResponse"
Description: "Definition for the QuestionnaireResponse resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order QuestionnaireResponse"
*/