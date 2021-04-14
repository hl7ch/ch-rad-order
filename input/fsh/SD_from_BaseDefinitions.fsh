// Leave in CH RAD-Order, as details or context specific to RAD-Order

Profile: ChRadOrderCaveatCondition
Parent: Condition
Id: ch-rad-order-caveat-condition
Title: "CH RAD-Order Caveat Condition"
Description: "Definition for the Caveat Condition resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Caveat Condition"
* category 1..1 MS
* category = ConditionCategory#problem-list-item
* category ^short = "Problem List Item"
* code 1.. MS 
* code from ChRadOrderCaveatCondition
* subject MS
* subject only Reference(ChCorePatient)  
* evidence MS
* evidence.detail MS
* evidence.detail only Reference(ChRadOrderCaveatObservation)


Profile: ChRadOrderDiagnosisCondition
Parent: Condition
Id: ch-rad-order-diagnosis-condition
Title: "CH RAD-Order Diagnosis Condition"
Description: "Definition for the Diagnosis Condition resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Diagnosis Condition"
* category 1..1 MS
* category = ConditionCategory#problem-list-item
* category ^short = "Problem List Item"
* code 1.. MS 
* code.text 1.. MS
* subject MS
* subject only Reference(ChCorePatient)  


Profile: ChRadOrderCaveatObservation
Parent: Observation
Id: ch-rad-order-caveat-observation
Title: "CH RAD-Order Caveat Observation"
Description: "Definition for the Caveat Observation resource in the context of CH RAD-Order."
* . ^short = "CH ORF Caveat Observation"
* effective[x] and value[x] and dataAbsentReason and interpretation and note MS
* effective[x] only dateTime
* value[x] only Quantity or boolean or Ratio


Profile: ChRadOrderImagingStudy
Parent: ImagingStudy
Id: ch-rad-order-imagingstudy
Title: "CH RAD-Order ImagingStudy"
Description: "Definition for the ImagingStudy resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order ImagingStudy"
* status MS
* subject MS
* subject only Reference(ChCorePatient or Device or Group)
* series MS
* series.uid MS
* series.modality MS
* series.performer MS
* series.performer.actor MS
* series.performer.actor only Reference(ChCorePractitioner or ChCorePractitionerRole or ChCoreOrganization or CareTeam or ChCorePatient or Device or RelatedPerson)
* series.instance MS
* series.instance.uid MS
* series.instance.sopClass MS


/* 
Profile: ChRadOrderCondition
Parent: Condition-uv-ips
Title: "CH RAD-Order Condition"
Id: ch-rad-order-Condition
Description: "Definition for the ImagingStudy resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Condition"
*/
