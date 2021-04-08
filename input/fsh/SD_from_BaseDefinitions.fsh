//Temporary ORF Structure Defintions




Profile: ChOrfCaveatCondition
Parent: Condition
Id: ch-orf-caveat-condition
Title: "CH ORF Caveat Condition"
Description: "Definition for the Caveat Condition resource in the context of ORF."
* . ^short = "CH ORF Caveat Condition"

* code 1..1 MS 
* code from ChRadOrderCaveatCondition
* category 1..1 MS
* category.coding 1..1 MS
* category.coding.code MS
* category.coding = ConditionCategory#problem-list-item "Problem List Entry"
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
* code from ChRadOrderCaveatCondition
* category 1..1 MS
* category.coding 1..1 MS
* category.coding.code MS
* category.coding = ConditionCategory#problem-list-item "Problem List Entry"
* subject MS
* subject only Reference(CHCorePatient)  
* evidence.detail only Reference(ChOrfCaveatObservation)



Profile: ChOrfCaveatObservation
Parent: Observation
Id: ch-orf-caveat-observation
Title: "CH ORF Caveat Observation"
Description: "Definition for the Lab Observation resource in the context of CH ORF Caveats."
* . ^short = "CH ORF Caveat Observation"
* effective[x] and value[x] and dataAbsentReason and interpretation and note MS
* effective[x] only dateTime
* value[x] only Quantity or boolean or Ratio






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
* . ^short = "CH RAD-Order Condition"
*/

Profile: ChRadOrderCondition
Parent: Condition
Id: ch-rad-order-condition
Title: "CH RAD-Order Condition"
Description: "Definition for the Condition resource in the context of RAD-Order."
* . ^short = "CH RAD-Order Condition"

