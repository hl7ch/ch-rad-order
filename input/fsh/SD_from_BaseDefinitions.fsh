Profile: ChRadOrderImagingStudy
Parent: ImagingStudy
Title: "CH RAD-Order ImagingStudy"
Id: ch-rad-order-ImagingStudy
Description: "Definition for the ImagingStudy resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order ImagingStudy"
* status and subject and series.uid and series.modality and series.performer.actor and series.instance.uid and series.instance.sopClass MS

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
