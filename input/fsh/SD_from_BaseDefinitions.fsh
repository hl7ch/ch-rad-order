// Leave in CH RAD-Order, as details or context specific to RAD-Order

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


Profile: ChRadOrderCaveatCondition
Parent: Condition
Id: ch-rad-order-caveat-condition
Title: "CH RAD-Order Caveat Condition"
Description: "Definition for the Caveat Condition resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Caveat Condition"
* extension contains ChRadOrderCaveatType named caveatType 1..1 MS
* category 1..1 MS
* category = ConditionCategory#problem-list-item
* category ^short = "Problem List Item"
* code 1.. MS 
* code from ChRadOrderCaveatCondition
* subject MS
* subject only Reference(ChCorePatient)  
* evidence MS
* evidence.detail 1..1 MS
* evidence.detail ^short = "Supporting information (creatinine clearance, creatinine) for renal insufficiency condition"
* evidence.detail only Reference(ChRadOrderCreatinineClearanceObservation or ChRadOrderCreatinineObservation)


Profile: ChRadOrderCreatinineClearanceObservation
Parent: Observation
Id: ch-rad-order-creatinineclearance-observation
Title: "CH RAD-Order Creatinine Clearance Observation"
Description: "Definition for the Creatinine Clearance Observation resource in the context of CH RAD-Order."
* . ^short = "CH ORF Creatinine Clearance Observation"
* status MS
* code MS
* code = LNC#33558-8
* code ^short = "Creatinine renal clearance in Urine and Serum or Plasma collected for unspecified duration"
* subject MS 
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.value 1.. MS
* valueQuantity.unit 1.. MS
* valueQuantity.unit ^fixedString = "ml/min"
* valueQuantity.system 1.. MS
* valueQuantity.system ^fixedUri = "http://unitsofmeasure.org"
* valueQuantity.code 1.. MS
* valueQuantity.code ^fixedCode = #mL/min
* dataAbsentReason MS


Profile: ChRadOrderCreatinineObservation
Parent: Observation
Id: ch-rad-order-creatinine-observation
Title: "CH RAD-Order Creatinine Observation"
Description: "Definition for the Creatinine Observation resource in the context of CH RAD-Order."
* . ^short = "CH ORF Creatinine Observation"
* status MS
* code MS
* code = LNC#77140-2
* code ^short = "Creatinine [Moles/volume] in Serum, Plasma or Blood"
* subject MS 
* subject only Reference(ChCorePatient) 
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.value 1.. MS
* valueQuantity.unit 1.. MS
* valueQuantity.unit ^fixedString = "µmol/l"
* valueQuantity.system 1.. MS
* valueQuantity.system ^fixedUri = "http://unitsofmeasure.org"
* valueQuantity.code 1.. MS
* valueQuantity.code ^fixedCode = #umol/L
* dataAbsentReason MS


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
