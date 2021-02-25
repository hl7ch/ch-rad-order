Instance: CompositionRadiologyOrder
InstanceOf: ChOrfComposition
Title: "Composition Radiology Order"
Description: "Example for Composition"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* status = #final
* type = SNOMEDCTSwissExtension#2161000195103 "Imaging order (record articact)"
* category = SCT#721963009 "Order (record artifact)"
* subject = Reference(ErikaMusterfrau)
* date = "2019-04-01T20:18:41.341+00:00"
* author = Reference(SabineMeierPraxisSeeblick)
* title = "Radiology Order"
* section.title = "Radiology Order"
* section.text.status = #additional
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* section.entry[0] = Reference(QuestionnaireRadiologyOrder)
* section.entry[1] = Reference(QuestionnaireResponseRadiologyOrder)
* section.entry[2] = Reference(ServiceRequestRadiologyOrder)