Instance: ServiceRequestRadiologyOrder
InstanceOf: ChRadOrderServiceRequest
Title: "ServiceRequest Radiology Order"
Description: "Example for ServiceRequest"
* identifier[placerOrderIdentifier].value = "12345"
* status = #active
* intent = #original-order
* subject = Reference(SUfferer)
* requester = Reference(DAtaentererHappyDoctors)
* category = #721963009
// * performer = Reference(OttoRderfillerHappyHospital)

Instance: QuestionnaireResponseRadiologyOrder  // noch nicht fertig
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionniaireResponse Radiology Order"
Description: "Example for QuestionnaireResponse"
* questionnaire = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder"
* status = #completed

// order (Auftrag)
* item[0].linkId = "order"
* item[0].text = "Auftrag"

* item[0].item[0].linkId = "order.placerOrderIdentifier"
* item[0].item[0].text = "Auftragsnummer des Auftraggebers"
* item[0].item[0].answer.valueString = "123"

* item[0].item[1].linkId = "order.placerOrderIdentifierDomain"
* item[0].item[1].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[0].item[1].answer.valueString = "urn:oid:1.3.4.5.6.7"

// patient (Patient)
* item[1].linkId = "patient"
* item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
* item[1].text = "Patient"

* item[1].item[0].linkId = "patient.familyName"
* item[1].item[0].text = "Name"
* item[1].item[0].answer.valueString = "Ufferer"

* item[1].item[1].linkId = "patient.maidenName"
* item[1].item[1].text = "Name"
* item[1].item[1].answer.valueString = "Leidend"

* item[1].item[2].linkId = "patient.givenName"
* item[1].item[2].text = "Vorname"
* item[1].item[2].answer.valueString = "Susanna"

* item[1].item[3].linkId = "patient.birthDate"
* item[1].item[3].text = "Geburtsdatum"
* item[1].item[3].answer.valueDate = "1970-03-14"

* item[1].item[4].linkId = "patient.phone"
* item[1].item[4].text = "Telefon"
* item[1].item[4].answer.valueString = "+41 79 979 79 79"

* item[1].item[5].linkId = "patient.email"
* item[1].item[5].text = "E-Mail"
* item[1].item[5].answer.valueString = "susanna@ufferer"

* item[1].item[6].linkId = "patient.streetAddressLine"
* item[1].item[6].text = "Strasse, Hausnummer, Postfach etc."
* item[1].item[6].answer[0].valueString = "Musterweg"
* item[1].item[6].answer[1].valueString = "6a"

* item[1].item[7].linkId = "patient.postalCode"
* item[1].item[7].text = "PLZ"
* item[1].item[7].answer.valueString = "8000"

* item[1].item[8].linkId = "patient.city"
* item[1].item[8].text = "Ort"
* item[1].item[8].answer.valueString = "Zürich"

// orderer (Auftraggeber)
* item[2].linkId = "orderer"
* item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].text = "Auftraggeber"

* item[2].item[0].linkId = "orderer.author"
* item[2].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].item[0].text = "Verantwortliche Person"

* item[2].item[0].item[0].linkId = "orderer.author.practitioner"
* item[2].item[0].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[2].item[0].item[0].text = "Verantwortliche Person-Rolle"

* item[2].item[0].item[0].item[0].linkId = "orderer.author.practitioner.familyName"
* item[2].item[0].item[0].item[0].text = "Name"
* item[2].item[0].item[0].item[0].answer.valueString = "Rderplacer"

* item[2].item[0].item[0].item[1].linkId = "orderer.author.practitioner.givenName"
* item[2].item[0].item[0].item[1].text = "Vorname"
* item[2].item[0].item[0].item[1].answer.valueString = "Otile"

* item[2].item[0].item[0].item[2].linkId = "orderer.author.practitioner.email"
* item[2].item[0].item[0].item[2].text = "o.rderplacer@happydoctors.ch"

* item[2].item[0].item[1].linkId = "orderer.author.organization"
* item[2].item[0].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* item[2].item[0].item[1].text = "Sender Organisation"

* item[2].item[0].item[1].item[0].linkId = "orderer.author.organization.name"
* item[2].item[0].item[1].item[0].text = "Name der Organisation"
* item[2].item[0].item[1].item[0].answer.valueString = "Praxis Happy Doctors"



Instance: CompositionRadiologyOrder  // Noch nicht vollständig
InstanceOf: ChOrfComposition
Title: "Composition Radiology Order"
Description: "Example for Composition"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* status = #final
* type = SNOMEDCTSwissExtension#2161000195103 "Imaging order (record articact)"
* category = SCT#721963009 "Order (record artifact)"
* subject = Reference(SUfferer)
* date = "2019-04-01T20:18:41.341+00:00"
* author = Reference(DAtaentererHappyDoctors)
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
Title: "Ottilie Rderfiller"
Description: "Example for Author-Person"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000034321"
* name.use = #official
* name.family = "Ataentererr"
* name.given = "Doris"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "D.Ataenterer@HappyDoctors.ch"
* telecom[1].use = #work

Instance: ORderplacerHappyDoctors
InstanceOf: ChCorePractitionerRole
Title: "Otile Rderplacer at Praxis Happy Doctors"
Description: "Example for Author-PractionerRole"
* practitioner = Reference(DAtaenterer)
* organization = Reference(HappyDoctors)

Instance: DAtaenterer
InstanceOf: ChCorePractitioner
Title: "Ottilie Rderfiller"
Description: "Example for Dataenterer-Person"
// * identifier.system = "urn:oid:2.51.1.3"
// * identifier.value = "7601000034321"
* name.use = #official
* name.family = "Ataentererr"
* name.given = "Doris"
// * name.prefix = "Dr. med."
// * name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
// * name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "D.Ataenterer@HappyDoctors.ch"
* telecom[1].use = #work

Instance: DAtaentererHappyDoctors
InstanceOf: ChCorePractitionerRole
Title: "Doris Ataenterer at Praxis Happy Doctors"
Description: "Example for Dataenterer-PractionerRole"
* practitioner = Reference(DAtaenterer)
* organization = Reference(HappyDoctors)

Instance: HappyDoctors
InstanceOf: ChCoreOrganization
Title: "Praxis Happy Doctors"
Description: "Example for Orderplacer-Organization"
* name = "Praxis Happy Docotors"
* address.use = #work
* address.line[0] = "Kantonsstrasse 14"
* address.line[1] = "Postfach 14"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"

// ========================
Instance: ORderfiller
InstanceOf: ChCorePractitioner
Title: "Otto Rderfiller"
Description: "Example for Orderfiller-Person"
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
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "O.Rderfiller@HappyHospital.ch"
* telecom[1].use = #work

Instance: ORderfillerHappyHospital
InstanceOf: ChCorePractitionerRole
Title: "Otto Rderfiller at Klinik Happy Hospital"
Description: "Example for OrderFiller-PractionerRole"
* practitioner = Reference(OttoRderfiller)
* organization = Reference(HappyHospital)

Instance: HappyHospital
InstanceOf: ChCoreOrganization
Title: "Klinik Happy Hospital"
Description: "Example for OrderFiller-Organization"
* name = "Klinik Happy Hospital"
* address.use = #work
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
// * telecom[0].use = #mobile
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
