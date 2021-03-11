Profile: ChRadOrderQuestionnaire
Parent: ChOrfQuestionnaire
Title: "CH RAD-Order Questionnaire"
Id: ch-rad-order-questionnaire
Description: "Definition for the Questionnaire resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Questionnaire"

Profile: ChRadOrderServiceRequest
Parent: ChOrfServiceRequest
Id: ch-rad-order-servicerequest
Title: "CH RAD-Order ServiceRequest"
Description: "Base definition for the ServiceRequest resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order ServiceRequest"
* identifier.type and identifier.type.coding and identifier.type.coding.system and identifier.type.coding.code MS
* requisition and status and intent and doNotPerform and code and orderDetail MS
* subject and occurrence[x] and authoredOn and requester and performer and locationCode and locationReference and insurance MS
* replaces and priority and supportingInfo and bodySite and note and patientInstruction MS






Profile: ChRadOrderQuestionnaireResponse
Parent: ChOrfQuestionnaireResponse
Id: order-quech-rad-stionnaireresponse
Title: "CH RAD-Order QuestionnaireResponse"
Description: "Definition for the QuestionnaireResponse resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order QuestionnaireResponse"

Profile: ChRadOrderDocument
Parent: ChOrfDocument
Id: ch-rad-order-document
Title: "CH RAD-Order Document"
Description: "Definition for the Document resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Document"

Profile: ChRadOrderComposition
Parent: ChOrfComposition
Id: ch-rad-order-composition
Title: "CH RAD-Order Composition"
Description: "Definition for the Composition resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order Composition"