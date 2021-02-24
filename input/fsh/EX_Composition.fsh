Instance: CompositionRadiologyOrder
InstanceOf: ChOrfComposition
Title: "Composition Radiology Order"
Description: "Example for Composition"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* identifier.system = "http://test.fhir.ch/id/uuid"
* identifier.value = "c147e2bc-08d3-44f4-bd3e-0663609bfe3d"
* status = #final
* type = SNOMEDCTSwissExtension#2161000195103 "Imaging order (record articact)"
* category = SCT#721963009 "Order (record artifact)"
* subject = Reference(MartinaMuster)
* date = "2021-01-05T15:59:52+01:00"
* author = Reference(HansRoentgenKantonsspital)
* title = "Radiology Order"
* section.title = "Radiology Order"
* section.text.status = #additional
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* section.entry[0] = Reference(QuestionnaireRadiologyOrder)
* section.entry[1] = Reference(QuestionnaireResponseRadiologyOrder)
* section.entry[2] = Reference(ServiceRequestRadiologyOrder)