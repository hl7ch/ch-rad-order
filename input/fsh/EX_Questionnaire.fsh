Instance: QuestionnaireRadiologyOrder
InstanceOf: ChOrfQuestionnaire
Title: "Questionniaire Radiology Order"
Description: "Example for Questionnaire"
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[1] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[2] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"
* extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension.valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder"
* name = "QuestionnaireRadiologyOrder"
* subjectType = #Patient
* status = #active
* date = "2021-02-24"

// order (Auftrag)
* item[0].linkId = "order"
* item[0].text = "Auftrag"
* item[0].type = #group
* item[0].required = true

* item[0].item[0].linkId = "order.placerOrderId"
* item[0].item[0].text = "Auftragsnummer des Auftraggebers"
* item[0].item[0].type = #string

* item[0].item[1].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[0].item[1].extension.valueBoolean = true
* item[0].item[1].linkId = "order.placerOrderIdDomain"
* item[0].item[1].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[0].item[1].type = #string

// patient (Patient)
* item[1].linkId = "patient"
* item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
* item[1].text = "Patient"
* item[1].type = #group

* item[1].item[0].linkId = "patient.familyName"
* item[1].item[0].text = "Name"
* item[1].item[0].type = #string

* item[1].item[1].linkId = "patient.givenName"
* item[1].item[1].text = "Vorname"
* item[1].item[1].type = #string

* item[1].item[2].linkId = "patient.birthDate"
* item[1].item[2].text = "Geburtsdatum"
* item[1].item[2].type = #date

* item[1].item[3].linkId = "patient.phone"
* item[1].item[3].text = "Telefon"
* item[1].item[3].type = #string

* item[1].item[4].linkId = "patient.email"
* item[1].item[4].text = "E-Mail"
* item[1].item[4].type = #string

* item[1].item[5].linkId = "patient.streetAddressLine"
* item[1].item[5].text = "Strasse, Hausnummer, Postfach etc."
* item[1].item[5].type = #string
* item[1].item[5].repeats = true

* item[1].item[6].linkId = "patient.postalCode"
* item[1].item[6].text = "PLZ"
* item[1].item[6].type = #string

* item[1].item[7].linkId = "patient.city"
* item[1].item[7].text = "Ort"
* item[1].item[7].type = #string

// orderer (Auftraggeber)
* item[2].linkId = "orderer"
* item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].text = "Auftraggeber"
* item[2].type = #group
* item[2].required = true

* item[2].item[0].linkId = "orderer.author"
* item[2].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].item[0].text = "Verantwortlicher"
* item[2].item[0].type = #group
* item[2].item[0].required = true

* item[2].item[0].item[0].linkId = "orderer.author.practitioner"
* item[2].item[0].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[2].item[0].item[0].text = "Verantwortliche Person"
* item[2].item[0].item[0].type = #group

* item[2].item[0].item[0].item[0].linkId = "orderer.author.practitioner.familyName"
* item[2].item[0].item[0].item[0].text = "Name"
* item[2].item[0].item[0].item[0].type = #string

* item[2].item[0].item[0].item[1].linkId = "orderer.author.practitioner.givenName"
* item[2].item[0].item[0].item[1].text = "Vorname"
* item[2].item[0].item[0].item[1].type = #string

* item[2].item[0].item[0].item[2].linkId = "orderer.author.practitioner.email"
* item[2].item[0].item[0].item[2].text = "E-Mail"
* item[2].item[0].item[0].item[2].type = #string

* item[2].item[0].item[1].linkId = "orderer.author.organization"
* item[2].item[0].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* item[2].item[0].item[1].text = "Verantwortliche Organisation"
* item[2].item[0].item[1].type = #group

* item[2].item[0].item[1].item[0].linkId = "orderer.author.organization.name"
* item[2].item[0].item[1].item[0].text = "Name der Organisation"
* item[2].item[0].item[1].item[0].type = #string