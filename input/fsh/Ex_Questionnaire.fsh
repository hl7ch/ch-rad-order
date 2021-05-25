Instance: QuestionnaireRadiologyOrder
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Radiology Order"
Description: "Example for Questionnaire"

/* -------------------------------------------------------------------------------------------------------
Nur absolute "Required" sind markiert; es wird dann noch relative Required geben
Bsp: Fragestellung ist required ausser bei Bestllung alter Bider
   -------------------------------------------------------------------------------------------------------*/

* meta.profile[+] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[0].valueCanonical = "http://fhir.ch/ig/ch-rad-order/StructureMap/RadOrderQrToBundle"

* extension[1].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceStructureMap"
* extension[1].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfPrepopBundleToQr"

* extension[2].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[2].extension[0].url = "name"
* extension[2].extension[0].valueId = "Bundle"
* extension[2].extension[1].url = "type"
* extension[2].extension[1].valueCode = #Bundle
* extension[2].extension[2].url = "description"
* extension[2].extension[2].valueString = "The Bundle that is to be used to pre-populate the form"

* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder"
* name = "QuestionnaireRadiologyOrder"
* title = "Questionnaire Radiology Order"
* derivedFrom = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* status = #active
* subjectType = #Patient
* date = "2021-02-24"
* publisher = "HL7 Switzerland"

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-document#Bundle"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "order.title"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.title"
* item[=].item[=].text = "Titel"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true

* item[=].item[+].linkId = "order.type"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.type"
* item[=].item[=].text = "Typ"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.typeCode"

* item[=].item[+].linkId = "order.category"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.category"
* item[=].item[=].text = "Kategorie"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.classCode"

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:precedentDocument"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].type = #string

// ---------- Urgent Notification Contact for this document ----------
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:urgentNoficationContactForThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:urgentNoficationContactForTheResponseToThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#routine "Die Anfrage hat normale Priorität."
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."


// ---------- Patient: The principle target of a particular Form Content is one patient ----------
// patient is not required because patient may not be known e.g. anonymized in case of research or name unknown in emergency
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group

* item[=].item[+].linkId = "patient.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.given"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.value"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "patient.localPidDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.system"
* item[=].item[=].text = "Lokale Patienten-ID Domain"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = AdministrativeGender#male "Männlich"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = AdministrativeGender#female "Weiblich"
* item[=].item[=].answerOption[+].valueCoding = AdministrativeGender#other "Anderes"

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.address.line"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.address.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.city"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.address.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.country"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.address.country"
* item[=].item[=].text = "Land"
* item[=].item[=].type = #string

// ---------- TBD: add Coverage ----------

// ---------- sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "sender.author.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.line"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.postalCode"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.city"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.country"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Data Entry Person: The person who has typed/filled in the Form Content. ----------
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:dataEnterer"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Erfassende Person"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group

* item[=].item[+].linkId = "receiver.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Empfangende Person"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "receiver.practitioner.title"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string

* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Empfangende Organisation"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "receiver.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.line"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string

// ---------- Copy Receiver ----------
* item[+].linkId = "receiverCopies"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger"
* item[=].type = #group

* item[=].item[+].linkId = "receiverCopy"
* item[=].item[=].text = "Kopieempfangende Organisation oder Person"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverCopy.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.title"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-humanname#HumanName.prefix"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-humanname#HumanName.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-humanname#HumanName.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.phone"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/ContactPoint#ContactPoint.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.email"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/ContactPoint#ContactPoint.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.streetAddressLine"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.line"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverCopy.postalCode"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.city"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.country"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string


/* ----- Beschreibung des Kerninhaltes der Rad-Order ----------------------
CH RAD-Order UNTERSTUETZT LOINC/RSNA PLAYBOOK WIE FOLGT: ANSELLE DER ITEMS [4] - [7] WIRD IN
servicerequest.code DER PLABOOK CODE ANGEGBEN. VOM QUESTIONNAIRE WIRD DAS NICHT UNTERSTÜTZT, DA NUR RELEVANT, WENN
ZWISCHEN SENDER UND EMPFÄNGER VEREINBART.
*/


/*------------------------------------------------------------------------
1. Was wird gewünscht (nur 1 Wert)             
*/
* item[+].linkId = "requestedService"
* item[=].text = "Angeforderte Leistung"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "requestedService.service"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.category.coding"
* item[=].item[=].text = "Leistung"                 
* item[=].item[=].required = true
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-requested-service"


/*------------------------------------------------------------------------
2. Fragestellung (mehrere Werte)
*/
* item[+].linkId = "reason"
* item[=].text = "Klinische Fragestellung"
* item[=].type = #group

* item[=].item[+].linkId = "reason.question"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.reasonCode.text"
* item[=].item[=].text = "Fragestellung"                
* item[=].item[=].type = #string
* item[=].item[=].repeats = true


/*-----------------------------------------------------------------------
3. Angabe der Untersuchung (nur 1 Wert):
    CT / MRI / US / dual energy absorptiomety / Mammografie, PET-CT /
    Nuklearmed. Bildgung / Positron emiss. Tomographie / Konventinelles RX / Fluoroskopie / SPECT-CT / Andere
*/
* item[+].linkId = "imagingService"
* item[=].text = "Bildgebendes Verfahren"
* item[=].type = #group

* item[=].item[+].linkId = "imagingService.type"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.code.coding:RdlxModType"
* item[=].item[=].text = "Art"                 
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-modality-type"


/*------------------------------------------------------------------------ 
4. Order Detail
*/
* item[+].linkId = "orderDetail"
* item[=].text = "Weitere Angaben zur Bildgebung"
* item[=].type = #group

* item[=].item[+].linkId = "orderDetail.imagingRegion"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:imagingRegion"
* item[=].item[=].text = "Region"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-imaging-region"

* item[=].item[+].linkId = "orderDetail.imagingFocus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.bodySite"
* item[=].item[=].text = "Fokus"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-imaging-focus"

* item[=].item[+].linkId = "orderDetail.laterality"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:laterality"
* item[=].item[=].text = "Seitenangabe"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-laterality"

* item[=].item[+].linkId = "orderDetail.viewType"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:viewType"
* item[=].item[=].text = "Ansicht"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-view-type"

* item[=].item[+].linkId = "orderDetail.maneuverType"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:maneuverType"
* item[=].item[=].text = "Manöver"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-maneuver-type"

* item[=].item[+].linkId = "orderDetail.guidanceForAction"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:guidanceForAction"
* item[=].item[=].text = "Handlungsanleitung"
* item[=].item[=].type = #choice
* item[=].item[=].enableWhen[+].question = "requestedService.service"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = ChRadOrderRequestedService#RadIntervention
* item[=].item[=].enableWhen[+].question = "requestedService.service"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = ChRadOrderRequestedService#ImagingRequestWithIntervention
* item[=].item[=].enableBehavior = #any
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-guidance-for-action"


/*----------------------------------------------------------------------
Gewünschter Radiologe: Noch offen, wie die Auswahlliste gemacht werden soll
*/
* item[+].linkId = "desiredRadiologist"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.performer"
* item[=].text = "Gewünschter Radiologe für die Befundung / für die Intervention"
* item[=].type = #group

* item[=].item[+].linkId = "desiredRadiologist.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "desiredRadiologist.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string


/*----------------------------------------------------------------------
Darstellung der Diagnosen und Befunde
*/
* item[+].linkId = "diagnosisList"
* item[=].text = "Diagnosen und Befunde"
* item[=].type = #group

* item[=].item[+].linkId = "diagnosisList.primaryDiagnosis"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.reasonReference"
* item[=].item[=].text = "Hauptdiagnosen"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:diagnosis"
* item[=].item[=].text = "Nebendiagnosen"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "diagnosisList.bodyHeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:bodyHeight"
* item[=].item[=].text = "Grösse (cm)"   
* item[=].item[=].type = #quantity
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "diagnosisList.bodyWeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:bodyWeight"
* item[=].item[=].text = "Gewicht (kg)"   
* item[=].item[=].type = #quantity
* item[=].item[=].repeats = false

/*----------------------------------------------------------------------
Caveats   
 */
* item[+].linkId = "caveat" 
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:caveats" 
* item[=].text = "Caveats"
* item[=].type = #group

* item[=].item[+].linkId = "caveat.bloodCoagulation"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Beinträchtigte Blutgerinnung"   
* item[=].item[=].type = #boolean

* item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.INR" 
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"
* item[=].item[=].item[=].text = "INR"   
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen[+].question = "caveat.bloodCoagulation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.INR.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-INR-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (INR)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.INR.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-INR-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets"    
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"    
* item[=].item[=].item[=].text = "Thrombozyten"   
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen[+].question = "caveat.bloodCoagulation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (10^3/µl)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "caveat.renalInsufficiency"    
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"   
* item[=].item[=].text = "Niereninsuffizienz"   
* item[=].item[=].type = #boolean

* item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance" 
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"
* item[=].item[=].item[=].text = "Creatinin-Clearance"   
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen[+].question = "caveat.renalInsufficiency"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (ml/min)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine"    
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"    
* item[=].item[=].item[=].text = "Creatinin"   
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen[+].question = "caveat.renalInsufficiency"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (µmol/l)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "caveat.claustrophobia"    
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"   
* item[=].item[=].text = "Klaustrophobie"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.bodyPiercing"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Körperpiercing"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.device"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-device"
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "caveat.hyperthyroidism"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Hyperthyreose"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.diabetes"    
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"   
* item[=].item[=].text = "Diabetes mellitus"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.gravida"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Schwangerschaft"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.contrastMediaAllergy"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Kontrastmittelallergie"   
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "caveat.drugPrescription"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Relevante Medikamente, z.B. Metformin"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-substance"
* item[=].item[=].repeats = true


/* ---------------------------------------------------------------------------
Vorherige Untersuchungsresultat:
Angaben zu Bildern bzw. allfällige Vorbildern und Reports, auf die verwiesen wird  
mittels ImagingStudy Resource (DICOM WADO) oder die mitgegeben werden in der Media Resource.
*/
* item[+].linkId = "previousResults"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:previousImagingResults"
* item[=].text = "Vorherige Untersuchungsresultate"
* item[=].type = #group

* item[=].item[+].linkId = "previousResults.available"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:previousImagingResults"
* item[=].item[=].text = "Verfügbar"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = ChOrfYesNo#373066001 "Ja"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = ChOrfYesNo#373067005 "Nein"

* item[=].item[=].item[+].linkId = "Attachments"  
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo.previousImagingResults.Media.Attachment.title"
* item[=].item[=].item[=].text = "Filename and extension of attched file (e.g. \"shoulder_re_F_Muster_12021988.pdf\") = Attatchment.title"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

// -------- TBD: add appointment ------

// -------- Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "note.text"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].type = #string
* item[=].item[=].required = true
