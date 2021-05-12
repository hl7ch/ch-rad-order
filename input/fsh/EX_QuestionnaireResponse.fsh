Instance: QuestionnaireResponseRadiologyOrder
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionniaireResponse Radiology Order"
Description: "Example for QuestionnaireResponse"
* questionnaire = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder"
* status = #completed

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"

* item[=].item[+].linkId = "order.title"
* item[=].item[=].text = "Titel"
* item[=].item[=].answer.valueString = "Anmeldung Radiologie"

* item[=].item[+].linkId = "order.type"
* item[=].item[=].text = "Typ"
* item[=].item[=].answer.valueCoding = urn:oid:2.16.756.5.30.1.127.3.4#2161000195103

* item[=].item[+].linkId = "order.category"
* item[=].item[=].text = "Kategorie"
* item[=].item[=].answer.valueCoding = SCT#721963009

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "12345"

* item[=].item[+].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:1.3.4.5.6.7"

// ---------- Urgent Notification Contact for this document ----------

// ---------- Urgent Notification Contact for the Response to this document ----------

// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = RequestPriority#routine "Die Anfrage hat normale Priorität."

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

* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1970-03-14"

* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = AdministrativeGender#female

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].answer.valueString = "+41 79 979 79 79"

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].answer.valueString = "susanna@ufferer.ch"

* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer[+].valueString = "Musterweg"
* item[=].item[=].answer[+].valueString = "6a"

* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = "8000"

* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = "Zürich"

* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].answer.valueString = "Schweiz"

// ---------- sender (Absender) ----------
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
* item[=].item[=].item[=].item[=].answer.valueString = "7601000034321"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "+41 44 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "o.rderplacer@happydoctors.ch"

* item[=].item[=].item[+].linkId = "sender.author.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Praxis Happy Doctors"

* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer[+].valueString = "Kantonsstrasse 14"
* item[=].item[=].item[=].item[=].answer[+].valueString = "Postfach 14"

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
* item[=].item[=].item[=].item[=].answer.valueString = "Ataenterer"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Doris"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "+41 44 333 22 11"

* item[=].item[=].item[=].item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "d.ataenterer@happydoctors.ch"

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].text = "Empfänger"

* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].text = "Empfangende Organisation"

* item[=].item[=].item[+].linkId = "receiver.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Klinik Happy Hospital"

* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[+].valueString = "Seestrasse 133"
* item[=].item[=].item[=].answer[+].valueString = "Haus C"

* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

// ---------- Copy Receiver ----------
* item[+].linkId = "receiverCopies"
* item[=].text = "Kopieempfänger"

* item[=].item[+].linkId = "receiverCopy"
* item[=].item[=].text = "Kopieempfangende Organisation oder Person"

* item[=].item[=].item[+].linkId = "receiverCopy.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Ufferer"

* item[=].item[=].item[+].linkId = "receiverCopy.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Susanna"

* item[=].item[=].item[+].linkId = "receiverCopy.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "+41 79 979 79 79"

* item[=].item[=].item[+].linkId = "receiverCopy.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "susanna@ufferer.ch"

* item[=].item[=].item[+].linkId = "receiverCopy.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[+].valueString = "Musterweg"
* item[=].item[=].item[=].answer[+].valueString = "6a"

* item[=].item[=].item[+].linkId = "receiverCopy.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "8000"

* item[=].item[=].item[+].linkId = "receiverCopy.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Zürich"

* item[=].item[=].item[+].linkId = "receiverCopy.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

/*------------------------------------------------------------------------
Was wird gewünscht (nur 1 Wert)             
*/
* item[+].linkId = "requestedService"
* item[=].text = "Angeforderte Leistung"

* item[=].item[+].linkId = "requestedService.service"
* item[=].item[=].text = "Leistung"    
* item[=].item[=].answer.valueCoding = ChRadOrderRequestedService#ImagingRequest "Imaging Request"

/*------------------------------------------------------------------------
Fragestellung (mehrere Werte)
*/
* item[+].linkId = "reason"
* item[=].text = "Klinische Fragestellung"

* item[=].item[+].linkId = "reason.question"
* item[=].item[=].text = "Fragestellung"                
* item[=].item[=].answer.valueString = "Diagnostic Question"

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

/*-----------------------------------------------------------------------
Angabe der Untersuchung (nur 1 Wert):
*/
* item[+].linkId = "imagingService"
* item[=].text = "Bildgebendes Verfahren"

* item[=].item[+].linkId = "imagingService.type"
* item[=].item[=].text = "Art"                 
* item[=].item[=].answer.valueCoding = RDLX#RID10345 "projection radiography"

/*----------------------------------------------------------------------
Art der Intervention (mehrere Werte)
*/

/*------------------------------------------------------------------------ 
Order Detail
*/
* item[+].linkId = "orderDetail"
* item[=].text = "Weitere Angaben zur Bildgebung"

* item[=].item[+].linkId = "orderDetail.imagingRegion"
* item[=].item[=].text = "Region"
* item[=].item[=].answer.valueCoding = RDLX#RID1243 "Thorax"

* item[=].item[+].linkId = "orderDetail.imagingFocus"
* item[=].item[=].text = "Fokus"
* item[=].item[=].answer.valueCoding = RDLX#RID2468 "Chest wall"

/*----------------------------------------------------------------------
Darstellung der Problem- / Diagnoseliste
*/
* item[+].linkId = "diagnosisList"
* item[=].text = "Problem- / Diagnoseliste"

* item[=].item[+].linkId = "diagnosisList.primaryDiagnosis"  
* item[=].item[=].text = "Grund für die Zuweisung (Hauptdiagnose)"
* item[=].item[=].answer[+].valueString = "Primary Diagnosis"

* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"
* item[=].item[=].text = "Weiteres Problem / Nebendiagnose"
* item[=].item[=].answer[+].valueString = "Secondary Diagnosis 1"
* item[=].item[=].answer[+].valueString = "Secondary Diagnosis 2"

/*----------------------------------------------------------------------
Caveats   
 */
* item[+].linkId = "caveat"
* item[=].text = "Caveats"

* item[=].item[+].linkId = "caveat.bloodCoagulation"
* item[=].item[=].text = "Beinträchtigte Blutgerinnung"   
* item[=].item[=].answer.valueBoolean = true


* item[=].item[+].linkId = "caveat.renalInsufficiency"
* item[=].item[=].text = "Niereninsuffizienz"   
* item[=].item[=].answer.valueBoolean = true

* item[=].item[=].answer.item[+].linkId = "caveat.renalInsufficiency.creatinine"    
* item[=].item[=].answer.item[=].text = "Kreatinin"

* item[=].item[=].answer.item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine.quantity"     
* item[=].item[=].answer.item[=].item[=].text = "Wert (µmol/l)"   
* item[=].item[=].answer.item[=].item[=].answer.valueQuantity = 122 'umol/L'

* item[=].item[=].answer.item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine.dateTime"     
* item[=].item[=].answer.item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].answer.item[=].item[=].answer.valueDateTime = "2019-04-01T10:10:00.000+00:00"


* item[=].item[+].linkId = "caveat.bodyPiercing"
* item[=].item[=].text = "Körperpiercing"   
* item[=].item[=].answer.valueBoolean = true

* item[=].item[+].linkId = "caveat.device"
* item[=].item[=].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)" 
* item[=].item[=].answer.valueCoding = SCT#441509002 "Cardiac pacemaker in situ"

* item[=].item[+].linkId = "caveat.drugPrescription"
* item[=].item[=].text = "Relevante Medikamente, z.B. Metformin"
* item[=].item[=].answer.valueCoding = SCT#372567009 "Metformin (substance)"


/*------------------------------------------------------------------------
4 Arten von Kostentägern  (Noch offen: Wie efrassen)
*/
* item[+].linkId = "coverage"
* item[=].text = "Kostenträger"

* item[=].item[+].linkId = "coverage.kvg"
* item[=].item[=].text = "Grundversicherung (nach KVG)"
* item[=].item[=].answer.valueString = "Sanitas"

/* ---------------------------------------------------------------------------
Vorheriges Untersuchungsresultat:
*/
* item[+].linkId = "previousResult"
* item[=].text = "Vorheriges Untersuchungsresultat"

* item[=].item[+].linkId = "previousResult.result"
* item[=].item[=].text = "Untersuchungsresultat"
* item[=].item[=].answer.valueString = "TBD"