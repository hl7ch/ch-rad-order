Instance: QuestionnaireResponseRadiologyOrder
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
* item[1].item[0].answer.valueString = "Musterfrau"

* item[1].item[1].linkId = "patient.givenName"
* item[1].item[1].text = "Vorname"
* item[1].item[1].answer.valueString = "Erika"

* item[1].item[2].linkId = "patient.birthDate"
* item[1].item[2].text = "Geburtsdatum"
* item[1].item[2].answer.valueDate = "1970-03-14"

* item[1].item[3].linkId = "patient.phone"
* item[1].item[3].text = "Telefon"
* item[1].item[3].answer.valueString = "079 979 79 79"

* item[1].item[4].linkId = "patient.email"
* item[1].item[4].text = "E-Mail"
* item[1].item[4].answer.valueString = "erika@musterfrau.ch"

* item[1].item[5].linkId = "patient.streetAddressLine"
* item[1].item[5].text = "Strasse, Hausnummer, Postfach etc."
* item[1].item[5].answer[0].valueString = "Musterweg"
* item[1].item[5].answer[1].valueString = "6a"

* item[1].item[6].linkId = "patient.postalCode"
* item[1].item[6].text = "PLZ"
* item[1].item[6].answer.valueString = "8000"

* item[1].item[7].linkId = "patient.city"
* item[1].item[7].text = "Ort"
* item[1].item[7].answer.valueString = "Zürich"

// orderer (Auftraggeber)
* item[2].linkId = "orderer"
* item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].text = "Auftraggeber"

* item[2].item[0].linkId = "orderer.author"
* item[2].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].item[0].text = "Verantwortlicher"

* item[2].item[0].item[0].linkId = "orderer.author.practitioner"
* item[2].item[0].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[2].item[0].item[0].text = "Verantwortliche Person"

* item[2].item[0].item[0].item[0].linkId = "orderer.author.practitioner.familyName"
* item[2].item[0].item[0].item[0].text = "Name"
* item[2].item[0].item[0].item[0].answer.valueString = "Meier"

* item[2].item[0].item[0].item[1].linkId = "orderer.author.practitioner.givenName"
* item[2].item[0].item[0].item[1].text = "Vorname"
* item[2].item[0].item[0].item[1].answer.valueString = "Sabine"

* item[2].item[0].item[0].item[2].linkId = "orderer.author.practitioner.email"
* item[2].item[0].item[0].item[2].text = "E-Mail"

* item[2].item[0].item[1].linkId = "orderer.author.organization"
* item[2].item[0].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* item[2].item[0].item[1].text = "Verantwortliche Organisation"

* item[2].item[0].item[1].item[0].linkId = "orderer.author.organization.name"
* item[2].item[0].item[1].item[0].text = "Name der Organisation"
* item[2].item[0].item[1].item[0].answer.valueString = "Praxis Seeblick"