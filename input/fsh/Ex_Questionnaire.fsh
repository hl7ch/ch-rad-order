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

* extension[targetStructureMap].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[targetStructureMap].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
// TBD * extension[targetStructureMap].valueCanonical = "http://fhir.ch/ig/ch-rad-order/StructureMap/RadOrderQrToBundle"


* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder"
* name = "QuestionnaireRadiologyOrder"
* title = "Questionnaire Radiology Order"
* status = #active
* subjectType = #Patient
* date = "2021-02-24"
* publisher = "HL7 Switzerland"

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string

* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].type = #string

// ---------- Urgent Notification Contact for this document ----------
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority"
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
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
* item[=].text = "Patient"
* item[=].type = #group

* item[=].item[+].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = AdministrativeGender#male "Männlich"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = AdministrativeGender#female "Weiblich"
* item[=].item[=].answerOption[+].valueCoding = AdministrativeGender#other "Anderes"

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].type = #string

// ---------- orderer (Auftraggeber) ----------
* item[+].linkId = "orderer"
* item[=].text = "Auftraggeber"
* item[=].type = #group
* item[=].required = true

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "orderer.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "orderer.author.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.gln"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "orderer.author.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Data Entry Person: The person who has typed/filled in the Form Content. ----------
* item[=].item[+].linkId = "orderer.dataenterer"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].item[=].text = "Erfassende Person"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "orderer.dataenterer.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

// ---------- Request Receiver: Person/organization who receives the request ----------
* item[+].linkId = "receiverRequest"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[=].text = "Auftragsempfänger"
* item[=].type = #group

* item[=].item[+].linkId = "receiverRequest.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[=].item[=].text = "Auftragsempfangende Person"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.gln"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.practitioner.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string

* item[=].item[+].linkId = "receiverRequest.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* item[=].item[=].text = "Auftragsempfangende Organisation"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "receiverRequest.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverRequest.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverRequest.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string



/* ----- Beschreibung des Kerninhaltes der Rad-Order ----------------------
CH RAD-Order UNTERSTUETZT LOINC/RSNA PLAYBOOK WIE FOLGT: ANSELLE DER ITEMS [4] - [7] WIRD IN
servicerequest.code DER PLABOOK CODE ANGEGBEN. VOM QUESTIONNAIRE WIRD DAS NICHT UNTERSTÜTZT, DA NUR RELEVANT, WENN
ZWISCHEN SENDER UND EMPFÄNGER VEREINBART.

Was wird gewünscht (nur 1 Wert):
1.1: * #RequestforPrecedentReport "Request for precedent Reports only"                  
1.2: * #RequestforPrecedentReportandImages "Request for precedent Reports and Images"  
1.3: * #SecondOpinion "Second Opinion"                                                  
1.4: * #ImagingRequest "Imaging Request"                                                
1.5: * #ImagingRequestandIntervention "Imaging Request with Intervention"               
*/

* item[4].linkId = "whatservice"
* item[4].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[4].text = "Auftrag"
* item[4].type = #group
* item[4].required = true

* item[4].item[0].linkId = "whatservice"
* item[4].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[4].item[0].text = "Untersuchung / Intervention / Bestehende Untersuchungsresultae (Bilder und Befunde) /
                  nur Befunde / Zweitmeinung / Befundung"                 
* item[4].item[0].type = #string
* item[4].item[0].required = true
/*------------------------------------------------------------------------
Fragestellung (mehrere Werte)
*/

* item[5].linkId = "reason"
* item[5].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[5].text = "Klinische Fragestellung"
* item[5].type = #group

* item[5].item[0].linkId = "reason"
* item[5].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[5].item[0].text = "Freitext:"                
* item[5].item[0].type = #string
* item[5].item[0].repeats = true

/*-----------------------------------------------------------------------
Angabe der Untersuchung (nur 1 Wert):
        * RDLX#RID10321 "computed tomography"
        * RDLX#RID10312 "Magnetic resonance imaging"
        * RDLX#RID10326 "Ultrasound"
        * RDLX#RID10363 "dual energy xray absorptiometry"
        * RDLX#RID10357 "mammography"
        * RDLX#RID10341 "Pet-ct"
        * RDLX#RID10330 "nuclear medicine imaging"
        * RDLX#RID10337 "Positron emission tomography"
        * RDLX#RID10345 "projection radiography"
        * RDLX#RID10361 "Fluoroscopy"
        * RDLX#RID49583 "SPECT-CT"
        * RDLX#RID10311 "imaging modality"
*/

* item[6].linkId = "imgagingservicetype"
* item[6].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[6].text = "Art der Bildgebung"
* item[6].type = #group

* item[6].item[0].linkId = "imgagingservicetype"
* item[6].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[6].item[0].text = "CT / MRI / US / dual energy absorptiomety, Mammografie, PET-CT /
                  Nuklearmed. Bildgung / Positron emiss. Tomographie / Konventinelles RX, Fluoroskopie / SPECT-CT / Andere"                 
* item[6].item[0].type = #string


/*----------------------------------------------------------------------
Gewünschter Radiologe: Noch offen, wie die Auswahlliste gemacht werden soll
*/
* item[7].linkId = "desiredradilologist"
* item[7].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[7].text = "Gewünschter Radiologe für die Befundung / für die Intervention"
* item[7].type = #group

* item[7].item[0].linkId = "desiredradilologist.familyName"
* item[7].item[0].text = "Name"
* item[7].item[0].type = #string

* item[7].item[1].linkId = "desiredradilologist.givenName"
* item[7].item[1].text = "Vorname"
* item[7].item[1].type = #string

/*----------------------------------------------------------------------
Art der Intervention (mehrere Werte)
*/

* item[8].linkId = "interventiontype"
* item[8].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[8].text = "Intervention"
* item[8].type = #string

* item[8].item[0].linkId = "interventiontype"
* item[8].item[0].text = "Art"
* item[8].item[0].type = #string
* item[8].item[0].repeats = true


/*----------------------------------------------------------------------*-- 
Darstellung der Order Details
                * orderDetail[RadOrderImagingRegion] from VsRadOrderImagingRegion       
                * orderDetail[RadOrderImagingFocus] from VsRadOrderImagingFocus         
                * orderDetail[RadOrderLaterality] from VsRadOrderLaterality                 
                * orderDetail[RadOrderViewType] from VsRadOrderViewType                    
                * orderDetail[RadOrderManeuverType] from VsRadOrderManeuverType             
*/

* item[9].linkId = "orderdetails"
* item[9].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[9].text = "Weitere Angaben zur Bildgebung"
* item[9].type = #group

* item[9].item[0].linkId = "orderdetails.region"      // n Einträge
* item[9].item[0].text = "Region"
* item[9].item[0].type = #string
* item[9].item[0].repeats = true

* item[9].item[1].linkId = "orderdetails.region"      // n Einträge
* item[9].item[1].text = "Fokus"
* item[9].item[1].type = #string
* item[9].item[1].repeats = true

* item[9].item[2].linkId = "orderdetails.laterality" // 1 Eintrag
* item[9].item[2].text = "Seitenangabe"
* item[9].item[2].type = #string

* item[9].item[3].linkId = "orderdetails.manoever"   // n Einträge
* item[9].item[3].text = "Maneuver"
* item[9].item[3].type = #string
* item[9].item[3].repeats = true

/*----------------------------------------------------------------------
Darstellung der Problemliste
*/

* item[10].linkId = "supplementaryinfo"
* item[10].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[10].text = "Problem- / Diagnoseliste"
* item[10].type = #group

* item[10].item[0].linkId = "supplementaryinfo"  
* item[10].item[0].text = "Problem / Diagnose"
* item[10].item[0].type = #string
* item[10].item[0].repeats = true


/*----------------------------------------------------------------------
Darstellung Caveats   
    BloodCoag 0..1 and
    RenalInsuff 0..1 and
    Claustrophobia 0..1 and
    BodyPierc 0.. and
    Device 0..* and
    Hyperthyr 0..1 and
    Diabetes 0..1 and
    Gravida 0..1 and  
    ContrastAllerg 0..1 and   
    DrugPrescr 0..*   

 */

* item[11].linkId = "caveats"  
* item[11].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].text = "Caveats"
* item[11].type = #group

* item[11].item[0].linkId = "caveat.bloodcoag"     
* item[11].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[0].text = "Beinträchtigre Blutgerinnung"   
* item[11].item[0].type = #boolean

* item[11].item[1].linkId = "caveat.renalinsuff"     
* item[11].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[1].text = "Niereninsuffizienz"   
* item[11].item[1].type = #boolean
* item[11].item[1].repeats = true

* item[11].item[1].item[0].linkId = "caveat.renalinsuff"     
* item[11].item[1].item[0].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-orf-caveat-observation"
* item[11].item[1].item[0].text = "Bei Niereninsuffizienz entweder Creatininclearance oder Creatinin"
* item[11].item[1].item[0].type = #group

* item[11].item[1].item[0].item[0].linkId = "caveat.renalinsuff.creatclearance"  
* item[11].item[1].item[0].item[0].text = "Niereninsuffizienz"
* item[11].item[1].item[0].item[0].type = #boolean

* item[11].item[1].item[0].item[1].linkId = "caveat.renalinsuff.creatclearance"  
* item[11].item[1].item[0].item[1].text = "Creatinin Clearance"
* item[11].item[1].item[0].item[1].type = #quantity

* item[11].item[1].item[0].item[1].item[0].linkId = "caveat.renalinsuff.creatclearance.date"  
* item[11].item[1].item[0].item[1].item[0].text = "Datum der Bestimmung"
* item[11].item[1].item[0].item[1].item[0].type = #dateTime

* item[11].item[1].item[0].item[2].linkId = "caveat.renalinsuff.creat"  
* item[11].item[1].item[0].item[2].text = "Creatinin"
* item[11].item[1].item[0].item[2].type = #quantity

* item[11].item[1].item[0].item[2].item[0].linkId = "scaveat.renalinsuff.creat.date"  
* item[11].item[1].item[0].item[2].item[0].text = "Datum der Bestimmung"
* item[11].item[1].item[0].item[2].item[0].type = #dateTime

* item[11].item[2].linkId = "caveat.claustrophobia"     
* item[11].item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[2].text = "Klaustrophobie"   
* item[11].item[2].type = #boolean

* item[11].item[3].linkId = "caveat.bodypierc"     
* item[11].item[3].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[3].text = "Bodypiercing"   
* item[11].item[3].type = #boolean

* item[11].item[4].linkId = "caveat.device"     
* item[11].item[4].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[4].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"   
* item[11].item[4].type = #string
* item[11].item[4].repeats = true

* item[11].item[5].linkId = "caveat.hyperthyr"     
* item[11].item[5].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[5].text = "Hyperthyreose"   
* item[11].item[5].type = #boolean

* item[11].item[6].linkId = "caveat.diabetes"     
* item[11].item[6].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[6].text = "Diabetes"   
* item[11].item[6].type = #boolean

* item[11].item[7].linkId = "caveat.gravida"     
* item[11].item[7].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[7].text = "Schwangerschaft"   
* item[11].item[7].type = #boolean

* item[11].item[8].linkId = "caveat.contrastallerg"     
* item[11].item[8].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[8].text = "Kontrastmittelallergie"   
* item[11].item[8].type = #boolean

* item[11].item[9].linkId = "caveat.drugprescr"     
* item[11].item[9].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].item[9].text = "Relevante Medikamente, z. B. Metformin"   
* item[11].item[9].type = #string              // noch nicht definiert wie zu machen
* item[11].item[9].repeats = true

/*-------------------------------------------------------------------------
Darstellung der 4 Consents:
        [PrivacyConsent] only Reference(ChOrfConsent)
        TreatmentConsent] only Reference(ChOrfConsent)
        [RearchConsent] only Reference(ChOrfConsent)
        [ADCD]: Advanced directive
*/

* item[12].linkId = "consents"  
* item[12].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[12].text = "Einverständniserklärungen"
* item[12].type = #group

* item[12].item[0].linkId = "consents.treatmentconsent"      
* item[12].item[0].text = "Einverständnis des Patienten zur Behandlung"
* item[12].item[0].type = #string

* item[12].item[1].linkId = "consents.privacyconsent"      
* item[12].item[1].text = "Einverständnis des Patienten zum Datenschutz"
* item[12].item[1].type = #string

* item[12].item[2].linkId = "consents.researchconsent"      
* item[12].item[2].text = "Einverständnis des Patienten zur Forschung"
* item[12].item[2].type = #string

* item[12].item[3].linkId = "consents.researchconsent"     
* item[12].item[3].text = "Patientenverfügung"
* item[12].item[3].type = #string

/*------------------------------------------------------------------------
Darstellung der 4 Arten von Kostentägern  (Noch offen: Wie efrassen; )
        * ChRORFInsuranceType#Accident "According UVG"
        * ChRORFInsuranceType#DisorderKVG "According to KVG"
        * ChRORFInsuranceType#DisorderVVG "According to VVG"
        * ChRORFInsuranceType#OtherVVG "Other acording to VVG"
*/

* item[12].linkId = "coverage"
* item[12].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-coverage"
* item[12].text = "Kostenträger"
* item[12].type = #group

* item[12].item[0].linkId = "insurance.uvg"
* item[12].item[0].text = "Unfallversicherung"
* item[12].item[0].type = #string

* item[12].item[1].linkId = "insurance.kvg"
* item[12].item[1].text = "Grundversicherung (KVG)"
* item[12].item[1].type = #string

* item[12].item[2].linkId = "insurance.vvg"
* item[12].item[2].text = "Zusatzversicherung"
* item[12].item[2].type = #string

* item[12].item[3].linkId = "insurance.vvgother"
* item[12].item[3].text = "Andere"
* item[12].item[3].type = #string

/*
---- 5 -----------------------------------------------------------------------
Angaben zu Bilder bzw. allfällige Vorbilder und Reports, die mitgegeben werden 
mittels CH ORF ImagingStudy Resource.
*/

* item[13].linkId = "precedentresults"
* item[13].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[13].text = "Vorherige Untersuchungsresultate"
* item[13].type = #group

* item[13].item[0].linkId = "precedent.resultID"                     // n Einträge
* item[13].item[0].text = "Vorheriges Untersuchungsresultat"          // (Abbildung und Anzeige noch nicht definiert)
* item[13].item[0].type = #string
* item[13].item[0].repeats = true
