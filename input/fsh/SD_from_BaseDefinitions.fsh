//Temporary ORF Structure Defintions


// Probably better as CH Core??
Profile: ChOrfConsent
Parent: Consent
Id: ch-orf-consent
Title: "CH ORF Consent"
Description: "Definition for the Consent resource in the context of ORF."
* . ^short = "CH ORF Consent"
* scope MS
* scope from ConsScopeVS (required)
//---------

Profile: ChOrfPatient
Parent: ChCorePatient
Id: ch-orf-patient
Title: "CH ORF Patient"
Description: "Definition for the Patient resource in the context of ORF."
* . ^short = "CH ORF Patient"

* name ^slicing.discriminator.type = #pattern
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.ordered = true 
* name ^slicing.description = "Slice based on the component.code pattern"

* name contains 

    familyN 0..1 and
    maidenN 0..1   

* name[familyN].use = NMU#usual
* name[maidenN].use = NMU#maiden


Profile: ChOrfCaveatCondition
Parent: Condition
Id: ch-orf-caveat-condition
Title: "CH ORF Caveat Condition"
Description: "Definition for the Caveat Condition resource in the context of ORF."
* . ^short = "CH ORF Caveat Condition"


* code 1..1 MS 
* code from VsRadOrderCaveatCondition
* category 1..1 MS
* category.coding 1..1 MS
* category.coding.code MS
* category.coding = HL7CC#problem-list-item "Problem List Entry"
* subject MS
* subject only Reference(CHCorePatient)  
* evidence.detail only Reference(ChOrfCaveatObservation)


Profile: ChOrfDiagnoseList
Parent: Condition
Id: ch-orf-diagnose-list
Title: "CH ORF Diagnose List"
Description: "Definition for the Diagnose List resource in the context of ORF."
* . ^short = "CH ORF Diagnose List"


* code 1..1 MS 
* code from VsRadOrderCaveatCondition
* category 1..1 MS
* category.coding 1..1 MS
* category.coding.code MS
* category.coding = HL7CC#problem-list-item "Problem List Entry"
* subject MS
* subject only Reference(CHCorePatient)  
* evidence.detail only Reference(ChOrfCaveatObservation)



Profile: ChOrfCaveatObservation
Parent: Observation
Id: ch-orf-caveat-caveat-bservation
Title: "CH ORF Lab Caveat Observation"
Description: "Definition for the Lab Observation resource in the context of CH ORF Caveats."
* . ^short = "CH ORF Caveat Observation"
* effective[x] and value[x] and dataAbsentReason and interpretation and note MS
* effective[x] only dateTime
* value[x] only Quantity or boolean or Ratio

// Probably better as CH Core??
Profile: ChROrfCoverage
Parent: Coverage
Id: ch-orf-Coverage
Title: "CH ORF Coverage"
Description: "Definition for the Coverage resource in the context of CH ORF."
* . ^short = "CH ORF Coverage"
* type.coding from ChOrfCoverageType
//-----------


Profile: ChOrfAppointment
Parent: Appointment
Title: "CH ORF Appointment"
Id: ch-orf-Appointment
Description: "Definition for the Apointment resource in the context of CH ORF."
* . ^short = "CCH ORF Appointment"
* status and participant MS
* identifier 1..1 MS 
* requestedPeriod 0..1 MS
* patientInstruction and participant.actor MS

Profile: ChOrfImagingStudy
Parent: ImagingStudy
Title: "CH ORF ImagingStudy"
Id: ch-orf-ImagingStudy
Description: "Definition for the ImagingStudy resource in the context of CH ORF."
* . ^short = "CH ORF ImagingStudy"
* status and subject and series.uid and series.modality and series.performer.actor and series.instance.uid and series.instance.sopClass MS

// CH Rad Order Strucuture Definitions deived from Base Definitions

/* Profile: ChRadOrderCondition
Parent: Condition-uv-ips
Title: "CH RAD-Order Condition"
Id: ch-rad-order-Condition
Description: "Definition for the ImagingStudy resource in the context of CH RAD-Order."
* . ^short = "CCH RAD-Order Condition"
*/

Profile: ChRadOrderCondition
Parent: Condition
Id: ch-rad-order-condition
Title: "CH RAD-Order Condition"
Description: "Definition for the Condition resource in the context of RAD-Order."
* . ^short = "H RAD-Order Condition"

