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
    laterality 0..1 and 
    viewType 0..*  and
    maneuverType 0..* and
    guidanceForAction 0..* 
* orderDetail[imagingRegion] MS
* orderDetail[imagingRegion] from ChRadOrderImagingRegion
* orderDetail[laterality] MS
* orderDetail[laterality] from ChRadOrderLaterality
* orderDetail[viewType] MS
* orderDetail[viewType] from ChRadOrderViewType
* orderDetail[maneuverType] MS
* orderDetail[maneuverType] from ChRadOrderManeuverType
* orderDetail[guidanceForAction] MS
* orderDetail[guidanceForAction] from ChRadOrderGuidanceForAction
//------- performer (desiredRadiologist) -------
* performer ..1 MS
* performer ^short = "Desired radiologist for diagnostic / for intervention"
* performer only Reference(ChCorePractitionerRole) 
//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Diagnostic Question in free text: Coding of all diagnostic questions will be defined later."
* reasonCode.text 1.. MS
//------- reasonReference -------
* reasonReference MS
* reasonReference ^short = "Reason for the referral (primary diagnosis)"
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
    bodyHeight 0..1 and
    bodyWeight 0..1 and
    diagnosis 0..* and 
    caveats 0..* and
    previousImagingResults 0..* 
* supportingInfo[bodyHeight] MS
* supportingInfo[bodyHeight] only Reference(ChRadOrderBodyHeightObservation)
* supportingInfo[bodyWeight] MS
* supportingInfo[bodyWeight] only Reference(ChRadOrderBodyWeightObservation)
* supportingInfo[diagnosis] MS
* supportingInfo[diagnosis] only Reference(ChRadOrderDiagnosisCondition)
* supportingInfo[diagnosis] ^short = "Additional problem / secondary diagnosis"
* supportingInfo[caveats] MS
* supportingInfo[caveats] only Reference(ChRadOrderCaveatCondition)
* supportingInfo[previousImagingResults] MS
* supportingInfo[previousImagingResults] ^short = "The ImagingStudy Resource supports DICOM WADO-RS and formats defined 
                                                  elsewhere (e.g. DICOM, JPEG ..)"
* supportingInfo[previousImagingResults] only Reference(ChRadOrderImagingStudy or ChRadOrderMedia)
//------- bodySite -------
* bodySite MS
* bodySite from ChRadOrderImagingFocus
//------- note -------
* note MS
* note.text MS


Extension: ChRadOrderOrderDetailType
Id: ch-rad-order-order-detail-type
Title: "CH RAD-Order Order Detail Type"
Description: "Extension to define the Type of Order Detail in context of CH RAD-Order."
* value[x] 1..1
* value[x] only Coding
* value[x] ^short = "Type of Order Detail"
* value[x] from ChRadOrderOrderDetailType


Extension: ChRadOrderCaveatType
Id: ch-rad-order-caveat-type
Title: "CH RAD-Order Caveat Type"
Description: "Extension to define the Type of Caveat in context of CH RAD-Order."
* value[x] 1..1
* value[x] only Coding
* value[x] ^short = "Type of Caveat"
* value[x] from ChRadOrderCaveatType

Extension: ChRadOrderQualifierValue
Id: ch-rad-order-qualifier-value
Title: "CH RAD-Order Caveat Type"
Description: "Extension to define the Type of Caveat in context of CH RAD-Order."
* value[x] 1..1
* value[x] only Coding
* value[x] ^short = "Type of Caveat"
* value[x] from ChRadOrderQualifierValue


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
* title = "Radiologieauftrag"
* category = SCT#721963009 // Untersuchungsauftrag
* type = SCT#2161000195103 // Bildgebungsauftrag

// ---------- Composition.section.entry:ServiceRequest ----------
* section[orderReferral].entry[ServiceRequest] ^type.targetProfile = Canonical(ChRadOrderServiceRequest)
