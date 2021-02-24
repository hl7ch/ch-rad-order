Instance: ServiceRequestRadiologyOrder
InstanceOf: ChRadOrderServiceRequest
Title: "ServiceRequest Radiology Order"
Description: "Example for ServiceRequest"
* status = #active
* intent = #original-order
* subject = Reference(MartinaMuster)
* requester = Reference(SabineMeierPraxisSeeblick)
* performer = Reference(HansRoentgenKantonsspital)