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
* orderDetail.extension contains ChRadOrderOrderDetailType named orderDetailType 1..1 MS
* orderDetail ^slicing.discriminator.type = #pattern
* orderDetail ^slicing.discriminator.path = "$this"
* orderDetail ^slicing.rules = #open
* orderDetail contains 
    imagingRegion 0..* and 
    imagingFocus 0..* and   
    laterality 0..1 and // Cardinality of Laterality to be discussed
    viewType 0..*  and
    maneuverType 0..* and
    guidanceForAction 0..* 
* orderDetail[imagingRegion] MS
* orderDetail[imagingRegion] from ChRadOrderImagingRegion
* orderDetail[imagingFocus] MS
* orderDetail[imagingFocus] from ChRadOrderImagingFocus
* orderDetail[laterality] MS
* orderDetail[laterality] from ChRadOrderLaterality
* orderDetail[viewType] MS
* orderDetail[viewType] from ChRadOrderViewType
* orderDetail[maneuverType] MS
* orderDetail[maneuverType] from ChRadOrderManeuverType
* orderDetail[guidanceForAction] MS
* orderDetail[guidanceForAction] from ChRadOrderGuidanceForAction
//------- authoredOn -------
* authoredOn MS
//------- locationReference -------
* locationReference MS
* locationReference only Reference(ChCoreLocation)
//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Diagnostic Question in free text: Coding of all diagnostic questions not feasable."
* reasonCode.coding 0..0
* reasonCode.text 1..
//------- reasonReference -------
* reasonReference MS
* reasonReference only Reference(ChRadOrderDiagnosisCondition) 
//------- insurance -------
* insurance MS
* insurance only Reference(ChOrfCoverage)
//------- supportingInfo -------
* supportingInfo MS
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains
    diagnosis 0..* and 
    caveats 0..* and
    previousImagingResults 0..* and
    patientConsents 0..4 
* supportingInfo[diagnosis] MS
* supportingInfo[diagnosis] only Reference(ChRadOrderDiagnosisCondition)
* supportingInfo[caveats] MS
* supportingInfo[caveats] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[previousImagingResults] MS
* supportingInfo[previousImagingResults] only Reference(ChRadOrderImagingStudy)
* supportingInfo[patientConsents] MS
* supportingInfo[patientConsents] only Reference(ChOrfConsent)
//------- bodySite -------
* bodySite MS
//------- note -------
* note MS
//------- patientInstructions -------
* patientInstruction MS


Extension: ChRadOrderAppointment
Id: ch-rad-order-appointment
Title: "CH RAD-Order Appointment"
Description: "Extension to define Time and Location of ServiceRequest Fulfillment in context of CH RAD-Order."
* value[x] 1..1
* value[x] only Reference(ChOrfAppointment) 
* value[x] ^short = "Time and Location for ServiceRequest Fulfillment"


Extension: ChRadOrderOrderDetailType
Id: ch-rad-order-order-detail-type
Title: "CH RAD-Order Order Detail Type"
Description: "Extension to define the Type of Order Detail in context of CH RAD-Order."
* value[x] 1..1
* value[x] only Coding
* value[x] ^short = "Type of Order Detail"
* value[x] from ChRadOrderOrderDetailType


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