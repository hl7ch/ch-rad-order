// ServiceRequest.category
CodeSystem: ChRadOrderRequestedService
Id: ch-rad-order-requested-service
Title: "Requested Service"
Description: "Definition for Requested Service Code System in the context of CH RAD-Order."
/* #RequestForPrecedentReport "Request for precedent Reports only"
* #RequestForPrecedentReportAndImages "Request for precedent Reports and Images"
* #ImagingRequest "Imaging Request"
* #RadIntervention "Interventional radiology"
* #SecondOpinion "Second Opinion"
* #ImagingRequestWithIntervention "Imaging Request with Intervention"
* #RemoteReporting "Remote Reporting"
*/
* #RequestForPrecedentReport "Befundbericht früherer Untersuchung(en)"
* #RequestForPrecedentReportAndImages "Bilder und Befundberichte früherer Untersuchung(en)"
* #ImagingRequest "Auftrag zur bildgebenden Diagnostik"
* #RadIntervention "Auftrag für interventionelle Radiologie"
* #SecondOpinion "Bitte um Zweitmeinung"
* #ImagingRequestWithIntervention "Auftrag für bildgebende Diagnostik und Intervention"
* #RemoteReporting "Auftrag zur Fernbefundung"



// ServiceRequest.orderDetail.ch-rad-order-order-detail-type
CodeSystem: ChRadOrderOrderDetailType
Id: ch-rad-order-order-detail-type
Title: "Type of Order Detail"
Description: "Definition for Type of Order Detail Code System in the context of CH RAD-Order."
* #imagingRegion "Imaging Region"
* #laterality "Laterality"
* #viewType "View Type"
* #maneuverType "Maneuver Type"
* #guidanceForAction "Guidance for Action"