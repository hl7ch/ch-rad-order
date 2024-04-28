Instance: QuestionnaireResponseRadiologyOrder
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionniaireResponse Radiology Order"
Description: "Example for QuestionnaireResponse"
* questionnaire = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/QuestionnaireRadiologyOrder"
* status = #completed

// ---------- Order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "123"

* item[=].item[+].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:2.999.1.3.4.5.6.7"

* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].answer.valueString = "456"

* item[=].item[+].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].answer.valueString = "urn:oid:2.999.7.8.9.10.11"

* item[=].item[+].linkId = "order.previousDocumentIdentifier"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].answer.valueString = "1622f2fb-6ba3-4532-9aed-35b158def187"

// ---------- Urgent Notification Contact for this document ----------
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"

* item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Rderfiller"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Otto"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 412 00 99"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "otto.rderfiller@happyhosptial.ch"

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"

* item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Rderplacer"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Ottilie"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "ottilie.rderplacer@happydoctors.ch"

// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = RequestPriority#routine

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].text = "Empfänger"

* item[=].item[+].linkId = "receiver.practitioner"
* item[=].item[=].text = "Empfangende Person"

* item[=].item[=].item[+].linkId = "receiver.practitioner.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Rderfiller"

* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Otto"

* item[=].item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].answer.valueString = "7601000201041"

* item[=].item[=].item[+].linkId = "receiver.practitioner.zsr"
* item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].answer.valueString = "A123262"

* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "044 412 00 99"

* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "otto.rderfiller@happyhospital.ch"

* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].text = "Empfangende Organisation"

* item[=].item[=].item[+].linkId = "receiver.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Spital Happyhospital"

* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[0].valueString = "Happystrasse 14"
* item[=].item[=].item[=].answer[1].valueString = "Postfach 14"

* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

// ---------- Initiator: Person/organization who initiated this order/referral ----------
* item[+].linkId = "initiator"
* item[=].text = "Initiant dieser Anmeldung"

* item[=].item[+].linkId = "initiator.legalrelation"
* item[=].item[=].text = "Juristische Beziehung zum Patienten"
* item[=].item[=].answer.valueCoding = SCT#373068000 "Nicht definiert"

* item[=].item[+].linkId = "initiator.personalrelation"
* item[=].item[=].text = "Persönliche Beziehung zum Patienten?"
// * item[=].item[=].answer.valueCoding = http://snomed.info/sct#65616008 "Sohn"
* item[=].item[=].answer.valueCoding = http://snomed.info/sct#65616008

* item[=].item[+].linkId = "initiator.relatedPerson"
* item[=].item[=].text = "Andere Person"

* item[=].item[=].item[+].linkId = "initiator.relatedPerson.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Leidend"

* item[=].item[=].item[+].linkId = "initiator.relatedPerson.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Fritz"

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].text = "Patient"

* item[=].item[+].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = "Ufferer"

* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].answer.valueString = "Leidend"

* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Susanna"

* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].answer.valueString = "11.22.33.4567"

* item[=].item[+].linkId = "patient.localPidDomain"
* item[=].item[=].text = "Lokale Patienten-ID Domain"
* item[=].item[=].answer.valueString = "urn:oid:2.999.1.2.3.4"

* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1970-03-14"

* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = AdministrativeGender#female

* item[=].item[+].linkId = "patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].answer.valueCoding = EchMaritalStatus#3 "verwitwet"

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].answer.valueString = "079 979 79 79"

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].answer.valueString = "susanna@ufferer.ch"

* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer[+].valueString = "Musterweg 6a"
//* item[=].item[=].answer[+].valueString = "6a"

* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = "8000"

* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = "Zürich"

* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].answer.valueString = "Schweiz"

* item[=].item[+].linkId = "patient.languageOfCorrespondence"
* item[=].item[=].text = "Korrespondenzsprache"
//* item[=].item[=].answer.valueCoding =  urn:ietf:bcp:47#de-CH
* item[=].item[=].answer.valueCoding =  urn:ietf:bcp:47#de-CH "German (Switzerland)"

// ---------- Patient Contact Person: The principle target of a particular Form Content is one patient ----------
* item[=].item[+].linkId = "patient.contactperson"
* item[=].item[=].text = "Kontaktperson"

* item[=].item[=].item[+].linkId = "patient.contactperson.relationship"
* item[=].item[=].item[=].text = "Beziehung"
* item[=].item[=].item[=].answer.valueString = "Guter Freund"
* item[=].item[=].item[+].linkId = "patient.contactperson.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Freund"

* item[=].item[=].item[+].linkId = "patient.contactperson.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Max"

* item[=].item[=].item[+].linkId = "patient.contactperson.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "079 111 22 33"

* item[=].item[=].item[+].linkId = "patient.contactperson.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "max@freund.ch"

// ---------- Family Doctor:
* item[=].item[+].linkId = "familydoctor"
* item[=].item[=].text = "Hausarzt"

* item[=].item[=].item[+].linkId = "familydoctor.practitioner"
* item[=].item[=].item[=].text = "Hausarzt Person"

* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Meier"

* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.givenName"
* item[=].item[=].item[=].item[=].answer.valueString = "Sabine"

// ---------- Encounter Class (Ambulant / Satinär / Notfall) & Zimmerkategorie ----------
* item[+].linkId = "requestedEncounter"
* item[=].text = "Patientenaufnahme"

* item[=].item[+].linkId = "requestedEncounter.class"
* item[=].item[=].text = "Voraussichtlich: Ambulant / Stationär / Notfall"
* item[=].item[=].answer.valueCoding = V3ActCode#EMER


* item[=].item[+].linkId = "requestedEncounter.desiredAccommodation"
* item[=].item[=].text = "Zimmerkategorie"
* item[=].item[=].answer.valueCoding = ChCoreCSEncounterType#2 "halbprivat"

// ---------- Coverage (Kostenträger) ----------

* item[+].linkId = "coverage"
* item[=].text = "Kostenträger"

// KVG
* item[=].item[+].linkId = "coverage.kvg"
* item[=].item[=].text = "Krankenkasse (nach KVG)"

* item[=].item[=].item[+].linkId = "coverage.kvg.name"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].answer.valueString = "Sanitas"

* item[=].item[=].item[+].linkId = "coverage.kvg.insuranceCardNumber"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].answer.valueString = "80756015090002647590"

// ---------- Sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
* item[=].item[=].text = "Verantwortlicher"

* item[=].item[=].item[+].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Rderplacer"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Ottilie"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = "7601000618627"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.zsr"
* item[=].item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].item[=].answer.valueString = "A123321"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "ottilie.rderplacer@happydoctors.ch"

* item[=].item[=].item[+].linkId = "sender.author.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Praxis Happydoctors"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer[+].valueString = "Happystrasse 133"
//* item[=].item[=].item[=].item[=].answer[+].valueString = "Haus C"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = "Schweiz"

// ---------- Data Entry Person: The person who has typed/filled in the Form Content. ----------
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].text = "Erfasser"

* item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item[=].text = "Erfassende Person"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Boss"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Stabilo"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 12"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "stabilo.boss@praxisseeblick.ch"

// ---------- Copy Receiver ----------
* item[+].linkId = "receiverCopy"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"

* item[=].item[+].linkId = "receiverCopy.practitionerRole"
* item[=].item[=].text = "Gesundheitsfachperson oder -organisation"

* item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner"
* item[=].item[=].item[=].text = "Gesundheitsfachperson"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Meier"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Sabine"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "044 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "sabine.meier@praxisseeblick.ch"

* item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization"
* item[=].item[=].item[=].text = "Gesundheitsorganisatiton"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Praxis Seeblick"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer.valueString = "Seestrasse 133"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = "Schweiz"

* item[=].item[+].linkId = "receiverCopy.patient"
* item[=].item[=].text = "Patient selbst"
* item[=].item[=].answer.valueBoolean = true

// -------- Antecedent Episode of Care ------
* item[+].linkId = "antecedentEpisodeOfCare"
* item[=].text = "Vorgängiger Aufenthalt in Spital / Heim"

* item[=].item[+].linkId = "antecedentEpisodeOfCare.start"
* item[=].item[=].text = "Von"
* item[=].item[=].answer.valueDateTime = "2023-05-22"

* item[=].item[+].linkId = "antecedentEpisodeOfCare.end"
* item[=].item[=].text = "Bis"
* item[=].item[=].answer.valueDateTime = "2023-05-27"

* item[=].item[+].linkId = "antecedentEpisodeOfCare.managingOrganization"
* item[=].item[=].text = "Spital /Heim"

* item[=].item[=].item[0].linkId = "antecedentEpisodeOfCare.managingOrganization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Spital Hinterfultigen"

// -------- Appointment ------
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].item[+].linkId = "appointment.location"
* item[=].item[=].text = "Ort der Durchführung"
* item[=].item[=].item[+].linkId = "appointment.location.name"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Notfall Spital Happyhospital"
* item[=].item[+].linkId = "appointment.status"
* item[=].item[=].answer[+].valueCoding = AppointmentStatus#pending

// -------- Consent ------
* item[+].linkId = "consent"
* item[=].text = "Einverständniserklärung"

* item[=].item[+].linkId = "patient.consent.statement"
* item[=].item[=].text = "Ist der Patient über die Anmeldung informiert und explizit einverstanden?"
* item[=].item[=].answer[+].valueCoding = ChOrfConsentStatus#Other "Other situation such as 'implicit agreement', 'agreed by legal guardian' etc."
* item[=].item[=].answer[=].item[+].linkId = "patient.consent.statement.note"
* item[=].item[=].answer[=].item[=].text = "Anmerkung"
* item[=].item[=].answer[=].item[=].answer.valueString = "Voraussichtlich einverstanden; Sohn wird die Situation beim nä. Besuch mit Pat. besprechen"

/* ============ Kerninhaltes der Rad-Order ==============================
*/

/*------------------------------------------------------------------------
1. Was wird gewünscht (nur 1 Wert)             
*/
* item[+].linkId = "requestedService"
* item[=].text = "Angeforderte Leistung"

* item[=].item[+].linkId = "requestedService.service"
* item[=].item[=].text = "Leistung"    
* item[=].item[=].answer.valueCoding = ChRadOrderRequestedService#ImagingRequest "Bildgebende Diagnostik"

/*------------------------------------------------------------------------
2. Fragestellung (mehrere Werte)
*/
* item[+].linkId = "reason"
* item[=].text = "Klinische Fragestellung"

* item[=].item[+].linkId = "reason.question"
* item[=].item[=].text = "Fragestellung"                
* item[=].item[=].answer.valueString = "Diagnostic Question"

/*-----------------------------------------------------------------------
3. Angabe der Untersuchung (nur 1 Wert):
*/
* item[+].linkId = "imagingService"
* item[=].text = "Bildgebendes Verfahren"

* item[=].item[+].linkId = "imagingService.type"
* item[=].item[=].text = "Art"                 
* item[=].item[=].answer.valueCoding = RDLX#RID10345 "projection radiography"


/*------------------------------------------------------------------------ 
4. Order Detail
*/
* item[+].linkId = "orderDetail"
* item[=].text = "Weitere Angaben zur Bildgebung"

* item[=].item[+].linkId = "orderDetail.imagingRegion"
* item[=].item[=].text = "Region"
* item[=].item[=].answer.valueCoding = RDLX#RID1243 "Thorax"

* item[=].item[+].linkId = "orderDetail.imagingFocus"
* item[=].item[=].text = "Fokus"
* item[=].item[=].answer.valueCoding = RDLX#RID2468 "Chest wall"

* item[=].item[+].linkId = "orderDetail.laterality"
* item[=].item[=].text = "Seitenangabe"

* item[=].item[+].linkId = "orderDetail.viewType"
* item[=].item[=].text = "Ansicht"

* item[=].item[+].linkId = "orderDetail.maneuverType"
* item[=].item[=].text = "Manöver"

* item[=].item[+].linkId = "orderDetail.guidanceForAction"
* item[=].item[=].text = "Handlungsanleitung"


/*----------------------------------------------------------------------
Gewünschter Radiologe: Noch offen, wie die Auswahlliste gemacht werden soll
*/
* item[+].linkId = "desiredRadiologist"
* item[=].text = "Gewünschter Radiologe für die Befundung / für die Intervention"

* item[=].item[+].linkId = "desiredRadiologist.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = "Rderfiller"

* item[=].item[+].linkId = "desiredRadiologist.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Otto"

/*----------------------------------------------------------------------
Darstellung der Diagnosen und Befunde
*/
* item[+].linkId = "diagnosisList"
* item[=].text = "Diagnosen und Befunde"

* item[=].item[+].linkId = "diagnosisList.primaryDiagnosis"  
* item[=].item[=].text = "Hauptdiagnose"
* item[=].item[=].answer[+].valueString = "Primary Diagnosis"

* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"
* item[=].item[=].text = "Nebendiagnose"
* item[=].item[=].answer[+].valueString = "Secondary Diagnosis 1"
* item[=].item[=].answer[+].valueString = "Secondary Diagnosis 2"

* item[=].item[+].linkId = "diagnosisList.bodyHeight"
* item[=].item[=].text = "Grösse (cm)"   
* item[=].item[=].answer.valueQuantity = 176 'cm' "cm"

* item[=].item[+].linkId = "diagnosisList.bodyWeight"
* item[=].item[=].text = "Gewicht (kg)"   
* item[=].item[=].answer.valueQuantity = 99 'kg' "kg"

/*----------------------------------------------------------------------
Caveats   
 */
* item[+].linkId = "caveat"
* item[=].text = "Caveats"
//* item[=].type = #group

//=====
* item[=].item[+].linkId = "caveatList.bloodCoagulation"
* item[=].item[=].text = "Beinträchtigte Blutgerinnung" 
* item[=].item[=].answer[+].valueCoding = SCT#52101004

* item[=].item[=].answer[=].item[+].linkId = "caveatList.bloodCoagulation.INR" 
* item[=].item[=].answer[=].item[=].text = "INR" 
//* item[=].type = #group

* item[=].item[=].answer[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.INR.quantity"
* item[=].item[=].answer[=].item[=].item[=].text = "Wert (INR)"  
* item[=].item[=].answer[=].item[=].item[=].answer[+].valueQuantity = 2.7 ''

* item[=].item[=].answer[=].item[=].item[=].answer[=].item[+].linkId = "caveatList.bloodCoagulation.INR.dateTime"
* item[=].item[=].answer[=].item[=].item[=].answer[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item[=].answer[=].item[=].item[=].answer[=].item[=].answer[+].valueDateTime = "2024-02-01T10:10:00.000+00:00" 

//-----
* item[=].item[=].answer[=].item[+].linkId = "caveatList.bloodCoagulation.platelets"
* item[=].item[=].answer[=].item[=].text = "Thrombozyten"
//* item[=].type = #group

* item[=].item[=].answer[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.platelets.quantity"
* item[=].item[=].answer[=].item[=].item[=].text = "Wert (10^9/L)"  
* item[=].item[=].answer[=].item[=].item[=].answer[+].valueQuantity = 98 '10^9/L'

* item[=].item[=].answer[=].item[=].item[=].answer[=].item[+].linkId = "caveatList.bloodCoagulation.INR.dateTime"
* item[=].item[=].answer[=].item[=].item[=].answer[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item[=].answer[=].item[=].item[=].answer[=].item[=].answer[+].valueDateTime = "2024-02-01T10:10:00.000+00:00" 

//======
* item[=].item[+].linkId = "caveatList.renalInsufficiency"
* item[=].item[=].text = "Niereninsuffizienz"  
* item[=].item[=].answer[+].valueCoding = SCT#52101004

* item[=].item[=].answer[=].item[+].linkId = "caveatList.renalInsufficiency.creatinineClearance"
* item[=].item[=].answer[=].item[=].text = "Creatinin-Clearance" 
//* item[=].type = #group

* item[=].item[=].answer[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinineClearance.quantity" 
* item[=].item[=].answer[=].item[=].item[=].text = "Wert (mL/min)"  
* item[=].item[=].answer[=].item[=].item[=].answer[+].valueQuantity = 55 'mL/min'

* item[=].item[=].answer[=].item[=].item[=].answer[=].item[+].linkId = "caveatList.renalInsufficiency.creatinineClearance.dateTime"   
* item[=].item[=].answer[=].item[=].item[=].answer[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item[=].answer[=].item[=].item[=].answer[=].item[=].answer[+].valueDateTime = "2024-02-01T10:10:00.000+00:00" 

//-----
* item[=].item[=].answer[=].item[+].linkId = "caveatList.renalInsufficiency.creatinine"
* item[=].item[=].answer[=].item[=].text = "Creatinin"
//* item[=].type = #group

* item[=].item[=].answer[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinine.quantity"   
* item[=].item[=].answer[=].item[=].item[=].text = "Wert (µmol/L)" 
* item[=].item[=].answer[=].item[=].item[=].answer[+].valueQuantity = 90 'umol/L'

* item[=].item[=].answer[=].item[=].item[=].answer[=].item[+].linkId = "caveatList.renalInsufficiency.creatinine.dateTime"
* item[=].item[=].answer[=].item[=].item[=].answer[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item[=].answer[=].item[=].item[=].answer[=].item[=].answer[+].valueDateTime = "2024-02-01T10:10:00.000+00:00" 

//======
* item[=].item[+].linkId = "caveatList.claustrophobia"  
* item[=].item[=].text = "Klaustrophobie"   
* item[=].item[=].answer.valueCoding = SCT#373068000

* item[=].item[+].linkId = "caveatList.bodyPiercing"    
* item[=].item[=].text = "Körperpiercing"   
* item[=].item[=].answer.valueCoding = SCT#373068000
//======

* item[=].item[+].linkId = "caveatList.device"
* item[=].item[=].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)" 
* item[=].item[=].answer[+].valueCoding = SCT#441509002 "Herzschrittmacher"

/* item[=].item[=].answer[=].item[+].linkId = "caveatList.device.specifictype"
* item[=].item[=].answer[=].item[+].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"  
* item[=].item[=].answer[=].item[+].valueCoding = SCT#441509002 "Herzschrittmacher"
*/
//* item[=].item[=].answer[=].item[+].linkId ="caveatList.device.choice"  
//* item[=].item[=].item[=].answer.valueCoding = SCT#52101004

* item[=].item[+].linkId = "caveatList.hyperthyroidism"
* item[=].item[=].text = "Hyperthyreose"  
* item[=].item[=].answer.valueCoding = SCT#373068000

* item[=].item[+].linkId = "caveatList.diabetes"
* item[=].item[=].text = "Diabetes mellitus"   
* item[=].item[=].answer.valueCoding = SCT#373068000

* item[=].item[+].linkId = "caveatList.gravida" 
* item[=].item[=].text = "Schwangerschaft"   
* item[=].item[=].answer.valueCoding = SCT#373068000

* item[=].item[+].linkId = "caveatList.contrastMediaAllergy"
* item[=].item[=].text = "Kontrastmittelallergie"  
* item[=].item[=].answer.valueCoding = SCT#373068000

* item[=].item[+].linkId = "caveatList.drugPrescription" 
* item[=].item[=].text = "Relevante Medikamente"   

* item[=].item[=].item[+].linkId = "caveatList.drugPrescription.metformin"
* item[=].item[=].item[=].text = "Metformin"       
* item[=].item[=].item[=].answer.valueCoding = SCT#373068000

* item[=].item[=].item[+].linkId = "caveatList.drugPrescription.betaBlocker" 
* item[=].item[=].item[=].text = "Betablocker"         
* item[=].item[=].item[=].answer.valueCoding = SCT#373068000

/* ---------------------------------------------------------------------------
Attachment:
*/
* item[+].linkId = "attachment.nonDicom"
* item[=].text = "Anhang (nicht DICOM)"

* item[=].item[+].linkId = "attachment.nonDicom.title"  
* item[=].item[=].text = "Dateiname und -endung der angehängten Datei (z.B. \"Befund Thorax-Rx\")"
* item[=].item[=].answer[+].valueString = "Befund_Rx_Thorax_S_Ufferer_20190401.pdf"

* item[=].item[=].answer[=].item[+].linkId = "attachment.nonDicom.description"  
* item[=].item[=].answer[=].item[=].text = "Beschreibung"
* item[=].item[=].answer[=].item[=].answer[+].valueString = "Befund Notfall-Rx nach Sturz"

//* item[=].item[=].answer[=].item[+].linkId = "attachment.nonDicom.attachment.mimeType"  
//* item[=].item[=].answer[=].item[=].text = "Mime Type"
//* item[=].item[=].answer[=].item[=].answer[+].valueCoding = MimeType#application/pdf

* item[=].item[=].answer[=].item[+].linkId = "attachment.nonDicom.attachment"  
* item[=].item[=].answer[=].item[=].text = "Non-DICOM Data"
* item[=].item[=].answer[=].item[=].answer[+].valueAttachment.contentType = MimeType#application/pdf
* item[=].item[=].answer[=].item[=].answer[=].valueAttachment.data = "VGVzdCBCZWZ1bmQgTm9uIERpY29t" // Encoded in base64

* item[+].linkId = "attachment.dicom"
* item[=].text = "Anhang (DICOM)"

* item[=].item[+].linkId = "attachment.dicom.title"  
* item[=].item[=].text = "Dateiname und -endung der angehängten Dicom-Datei (z.B. \"Muster_F_2023-07-20_MR Knie nativ beidseits_im2588909576\")"
* item[=].item[=].answer[+].valueString = "Sufferer_S_2023-07-20_MR Knie nativ beidseits_im2588909576"

* item[=].item[=].answer[=].item[+].linkId = "attachment.dicom.sopInstanceUid"  
* item[=].item[=].answer[=].item[=].text = "DICOM SOP Instance UID"
* item[=].item[=].answer[=].item[=].answer[+].valueString = "2.16.124.113543.1154777499.30246.19789.3503430045.1.1"

* item[=].item[=].answer[=].item[+].linkId = "attachment.dicom.sopClass"  
* item[=].item[=].answer[=].item[=].text = "DICOM SOP Class"
* item[=].item[=].answer[=].item[=].answer.valueCoding = #1.2.840.10008.5.1.4.1.1.1

* item[=].item[=].answer[=].item[+].linkId = "attachment.dicom.modality"  
* item[=].item[=].answer[=].item[=].text = "DICOM Series Modality"
* item[=].item[=].answer[=].item[=].answer.valueCoding = #DX

* item[=].item[=].answer[=].item[+].linkId = "attachment.dicom.SeriesInstanceUid"  
* item[=].item[=].answer[=].item[=].text = "DICOM Series Instance UID"
* item[=].item[=].answer[=].item[=].answer[+].valueString = "2.16.124.113543.1154777499.30246.19789.3503430045.1"

* item[=].item[=].answer[=].item[+].linkId = "attachment.dicom.studyInstanceUid"  
* item[=].item[=].answer[=].item[=].text = "DICOM Study Instance UID"
* item[=].item[=].answer[=].item[=].answer[+].valueString = "2.16.124.113543.1154777499.30246.19789.3503430045"

* item[=].item[=].answer[=].item[+].linkId = "attachment.dicom.acsn"  
* item[=].item[=].answer[=].item[=].text = "ACSN"
* item[=].item[=].answer[=].item[=].answer[+].valueString = "2819497684894126"

//* item[=].item[=].answer[=].item[+].linkId = "attachment.dicom.attachment.mimeType"  
//* item[=].item[=].answer[=].item[=].text = "Mime Type"
//* item[=].item[=].answer[=].item[=].answer[+].valueCoding = MimeType#application/dicom

* item[=].item[=].answer[=].item[+].linkId = "attachment.dicom.attachment"  
* item[=].item[=].answer[=].item[=].text = "DICOM Data"

* item[=].item[=].answer[=].item[=].answer[+].valueAttachment.contentType = MimeType#application/dicom
* item[=].item[=].answer[=].item[=].answer[=].valueAttachment.data = "VGhpcyBpcyBhbiBleGFtcGxl" // Encoded in base64

/* -----------------------------------------------------------------------------
Service Request Notes 
*/
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"

* item[=].item[+].linkId = "note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].answer[+].valueString = "Patientin ist sehr ängstlich"

