//Temporary ORF Structure Defintions
Profile: ChOrfDiagnosticQuestion
Parent: Condition
Id: ch-orf-diagnosticquestion
Title: "CH ORF DiagnosticQuestion"
Description: "Definition for the DiagnosticQuestion resource in the context of ORF."
* . ^short = "CH ORF DiagnosticQuestion"

Profile: ChOrfCaveat
Parent: Condition
Id: ch-orf-caveat
Title: "CH ORF Caveat"
Description: "Definition for the Caveat resource in the context of ORF."
* . ^short = "CH ORF Caveat"

Profile: ChOrfObservation
Parent: Observation
Id: ch-orf-Observation
Title: "CH ORF Caveat"
Description: "Definition for the Observation resource in the context of CH ORF."
* . ^short = "CH ORF Observation"
* effective[x] and value[x] and dataAbsentReason and interpretation and note MS
* effective[x] only dateTime
* value[x] only Quantity or boolean or Ratio




/*
Profile: ChROrfCoverage
Parent: Coverage
Id: ch-orf-Coverage
Title: "CH ORF Coverage"
Description: "Definition for the Coverage resource in the context of CH ORF."
* . ^short = "CH ORF Coverage"
*/

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

