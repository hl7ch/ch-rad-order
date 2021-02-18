Profile: ChRadOrderServiceRequest
Parent: ChOrfServiceRequest
Id: ch-rad-order-servicerequest
Title: "CH RAD-Order ServiceRequest"
Description: "Base definition for the ServiceRequest resource in the context of CH RAD-Order."
* . ^short = "CH RAD-Order ServiceRequest"
/* . ^definition = "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."
* . ^alias[0] = "diagnostic request"
* . ^alias[1] = "referral"
* . ^alias[2] = "referral request"
* . ^alias[3] = "transfer of care request"
* subject 1..1 SU
* subject only Reference(ChCorePatient)
* subject ^short = "Patient"
* subject ^definition = "The principle target of a particular Form Content is one patient (for obstetrical and neonatal use cases see...)."
* performer 0..* SU
* performer only Reference(ChCorePractitionerRole)
* performer ^short = "Requested performer"
* performer ^definition = "The desired performer for doing the requested service.  For example, the surgeon, dermatopathologist, endoscopist, etc."
* performer ^comment = "If multiple performers are present, it is interpreted as a list of *alternative* performers without any preference regardless of order.  If order of preference is needed use the [request-performerOrder extension](extension-request-performerorder.html).  Use CareTeam to represent a group of performers (for example, Practitioner A *and* Practitioner B)."
* performer ^alias[0] = "request recipient"*/
* category from ChRadOrderVSExample (required)