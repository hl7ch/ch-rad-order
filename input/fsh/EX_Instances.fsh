Instance: ServiceRequestRadiologyOrder
InstanceOf: ChRadOrderServiceRequest
Title: "ServiceRequest Radiology Order"
Description: "Example for ServiceRequest"
* identifier[placerOrderIdentifier].value = "12345"
* status = #active
* intent = #original-order
* subject = Reference(SUfferer)
* requester = Reference(ORderplacerHappyDoctors)
* category = ChRadOrderRequestedService#ImagingRequest
* performer = Reference(ORderfillerHappyHospital)


Instance: CompositionRadiologyOrder  // Noch nicht vollständig
InstanceOf: ChOrfComposition
Title: "Composition Radiology Order"
Description: "Example for Composition"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* status = #final
* type = SNOMEDCTSwissExtension#2161000195103 "Imaging order (record articact)"
* category = SCT#721963009 "Order (record artifact)" // TBD: VS ChRadOrderDocumentCategory?
* subject = Reference(SUfferer)
* date = "2019-04-01T20:18:41.341+00:00"
* author = Reference(ORderplacerHappyDoctors)
* title = "Radiology Order"
* section.title = "Radiology Order"
* section.text.status = #additional
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* section.entry[0] = Reference(QuestionnaireRadiologyOrder)
* section.entry[1] = Reference(QuestionnaireResponseRadiologyOrder)
* section.entry[2] = Reference(ServiceRequestRadiologyOrder)
// etc.


Instance: DocumentRadiologyOrder // Noch nicht vollständig
InstanceOf: ChOrfDocument
Title: "Bundle Radiology Order"
Description: "Example for Bundle"
* type = #document
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "26d3dff7-ab05-4737-a49c-5eccd33595f7"
* timestamp = "2019-04-01T20:18:41.341+00:00"
* entry[0].fullUrl = "http://example.com/fhir/Composition/CompositionRadiologyOrder"
* entry[0].resource = CompositionRadiologyOrder
* entry[1].fullUrl = "http://example.com/fhir/Questionnaire/QuestionnaireRadiologyOrder"
* entry[1].resource = QuestionnaireRadiologyOrder
* entry[2].fullUrl = "http://example.com/fhir/QuestionnaireResponse/QuestionnaireResponseRadiologyOrder"
* entry[2].resource = QuestionnaireResponseRadiologyOrder
* entry[3].fullUrl = "http://example.com/fhir/ServiceRequest/ServiceRequestRadiologyOrder"
* entry[3].resource = ServiceRequestRadiologyOrder
* entry[4].fullUrl = "http://example.com/fhir/Patient/SUfferer"
* entry[4].resource = SUfferer
* entry[5].fullUrl = "http://example.com/fhir/PractitionerRole/DAtaentererHappyDoctors"
* entry[5].resource = DAtaentererHappyDoctors
* entry[6].fullUrl = "http://example.com/fhir/Practitioner/DAtaenterer"
* entry[6].resource = DAtaenterer
* entry[7].fullUrl = "http://example.com/fhir/Organization/HappyDoctors"
* entry[7].resource = HappyDoctors
// * entry[8].fullUrl = "http://example.com/fhir/Organization/Consent"
// * entry[8].resource = Consent
// etc.


Instance: ORderplacer
InstanceOf: ChCorePractitioner
Title: "Ottilie Rderplacer"
Description: "Example for Practitioner"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000034321"
* name.use = #official
* name.family = "Rderplacer"
* name.given = "Ottilie"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[1].system = #email
* telecom[1].value = "o.rderplacer@happydoctors.ch"


Instance: ORderplacerHappyDoctors
InstanceOf: ChCorePractitionerRole
Title: "Ottilie Rderplacer @ Happy Doctors"
Description: "Example for PractionerRole"
* practitioner = Reference(ORderplacer)
* organization = Reference(HappyDoctors)


Instance: DAtaenterer
InstanceOf: ChCorePractitioner
Title: "Doris Ataenterer"
Description: "Example for Practitioner"
* name.family = "Ataenterer"
* name.given = "Doris"
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[1].system = #email
* telecom[1].value = "d.ataenterer@happydoctors.ch"


Instance: DAtaentererHappyDoctors
InstanceOf: ChCorePractitionerRole
Title: "Doris Ataenterer @ Happy Doctors"
Description: "Example for PractionerRole"
* practitioner = Reference(DAtaenterer)
* organization = Reference(HappyDoctors)


Instance: HappyDoctors
InstanceOf: ChCoreOrganization
Title: "Praxis Happy Doctors"
Description: "Example for Organization"
* name = "Praxis Happy Docotors"
* address.line[0] = "Kantonsstrasse 14"
* address.line[1] = "Postfach 14"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"

// ========================
Instance: ORderfiller
InstanceOf: ChCorePractitioner
Title: "Otto Rderfiller"
Description: "Example for Practitioner"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000066878"
* name.use = #official
* name.family = "Rderfiller"
* name.given = "Otto"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 412 00 99"
* telecom[1].system = #email
* telecom[1].value = "o.rderfiller@happyhospital.ch"


Instance: ORderfillerHappyHospital
InstanceOf: ChCorePractitionerRole
Title: "Otto Rderfiller @ Happy Hospital"
Description: "Example for PractionerRole"
* practitioner = Reference(ORderfiller)
* organization = Reference(HappyHospital)


Instance: HappyHospital
InstanceOf: ChCoreOrganization
Title: "Klinik Happy Hospital"
Description: "Example for Organization"
* name = "Klinik Happy Hospital"
* address.line[0] = "Seestrasse 133"
* address.line[1] = "Haus C"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz" 


Instance: SUfferer
InstanceOf: ChOrfPatient
Title: "Susanna Ufferer"
Description: "Example for Patient"
* name[0].family = "Ufferer"
* name[1].family = "Leidend"
* name[0].given = "Susanna"
* telecom[0].system = #phone
* telecom[0].value = "+41 79 979 79 79"
* telecom[1].system = #email
* telecom[1].value = "susanna@ufferer.ch"
* gender = #female 
* birthDate = "1970-03-14"
* address.use = #home
* address.line[0] = "Musterweg"
* address.line[1] = "6a"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"
