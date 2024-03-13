Instance: QuestionnaireRadiologyOrder-modular
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire RadiologyOrder (Modular version)"
Description: "Example for Questionnaire"
Usage: #example
* meta.profile[+] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-root

* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder-modular"
* name = "QuestionnaireRadiologyOrder-modular"
* title = "QuestionnaireRadiologyOrder-modular"
* status = #active
* subjectType = #Patient
* date = "2022-08-24"
* publisher = "HL7 Switzerland"

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|2.0.0"
* item[=].item.linkId = "order.1"
* item[=].item.text = "Unable to resolve 'order' sub-questionnaire"
* item[=].item.type = #display

/* ----------- not depicted in questionnaire; fix values are defined in composition resource

* item[=].item[+].linkId = "order.title"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.title"
* item[=].item[=].text = "Titel"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueString = "Radiologieauftrag"

* item[=].item[+].linkId = "order.type"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.type"
* item[=].item[=].text = "Typ"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerValueSet = DocumentEntryTypeCode
* item[=].item[=].initial.valueCoding = DocumentEntryTypeCode#2161000195103 // Bildgebungsauftrag

* item[=].item[+].linkId = "order.category"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.category"
* item[=].item[=].text = "Kategorie"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerValueSet = DocumentEntryClassCode
* item[=].item[=].initial.valueCoding = DocumentEntryClassCode#721963009 // Untersuchungsauftrag
-----------*/

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|2.0.0"
* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"
* item[=].item.type = #display

// ----------Initiator: Person/organization who initated this order / application ; e.g. spitex, retirement home etc. ----------
* item[+].linkId = "initiator"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:initiator"
* item[=].text = "Initiant dieser Anmeldung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-initiator|2.0.0"
* item[=].item.linkId = "initiator.1"
* item[=].item.text = "Unable to resolve 'intitiator' sub-questionnaire"
* item[=].item.type = #display

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[0].valueExpression.name = "linkIdPrefix"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "'patient.'"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "address"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.address"
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|2.0.0"
* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"
* item[=].item.type = #display

// ---------- Encounter Class (Ambulant / Satinär / Notfall) ----------
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|2.0.0"
* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedEncounter' sub-questionnaire"
* item[=].item.type = #display


// ---------- Coverage (Kostenträger) ----------
// Design as agreed with eHealth Suisse and Cistec 09.06.2021

* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|2.0.0"
* item[=].item.linkId = "coverage.1"
* item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"
* item[=].item.type = #display

// ---------- sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|2.0.0"
* item[=].item.linkId = "sender.1"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"
* item[=].item.type = #display

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|2.0.0"
* item[=].item.linkId = "receiverCopy.1"
* item[=].item.text = "Unable to resolve 'receiverCopy' sub-questionnaire"
* item[=].item.type = #display


/*------ Antecedent Episode of Care ------------------------------ */

* item[+].linkId = "antecedentEpisodeOfCare"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:antecedentEpisodeOfCare"
* item[=].text = "Vorgängiger Aufenthalt in Spital / Heim"
* item[=].type = #group

* item[=].item[+].linkId = "antecedentEpisodeOfCare.start"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Von"
* item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "antecedentEpisodeOfCare.end"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Bis"
* item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "antecedentEpisodeOfCare.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.organization"
* item[=].item[=].text = "Spital /Heim"
* item[=].item[=].type = #group

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'antecedentEpisodeOfCare.organization.'"

* item[=].item[=].item[+].linkId = "antecedentEpisodeOfCare.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.organization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display

/*------ Appointment ------------------------------ */
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|2.0.0"
* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item.type = #display

/*------ Consent ------------------------------ */
* item[+].linkId = "consent"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:patientConsent"
* item[=].text = "Einverständniserklärung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-consent|2.0.0"
* item[=].item.linkId = "consent.1"
* item[=].item.text = "Unable to resolve 'consent' sub-questionnaire"
* item[=].item.type = #display


/* ============ Kerninhalte der Rad-Order ==============================
CH RAD-Order UNTERSTUETZT LOINC/RSNA PLAYBOOK WIE FOLGT: ANSELLE DER ITEMS [4] - [7] WIRD IN
servicerequest.code DER PLABOOK CODE ANGEGBEN. VOM QUESTIONNAIRE WIRD DAS NICHT UNTERSTÜTZT, DA NUR RELEVANT, WENN
ZWISCHEN SENDER UND EMPFÄNGER VEREINBART.
*/

/*------------------------------------------------------------------------
Instruction
*/
* item[+].linkId = "instruction"
//* item[=].text = "Instruction"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-instruction|2.0.0"
* item[=].item.linkId = "instruction.1"
* item[=].item.text = "Unable to resolve 'instruction' sub-questionnaire"
* item[=].item.type = #display

/*------------------------------------------------------------------------
Diagnosis and Findings
*/
* item[+].linkId = "diagnosis"
//* item[=].text = "Diagnosis"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-diagnosis|2.0.0"
* item[=].item.linkId = "diagnosis.1"
* item[=].item.text = "Unable to resolve 'diagnosis' sub-questionnaire"
* item[=].item.type = #display

/*------------------------------------------------------------------------
Caveats
*/
* item[+].linkId = "caveats"
//* item[=].text = "Caveats"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-caveats|2.0.0"
* item[=].item.linkId = "caveats.1"
* item[=].item.text = "Unable to resolve 'caveats' sub-questionnaire"
* item[=].item.type = #display

/*------------------------------------------------------------------------
Precedent Imaging
*/
* item[+].linkId = "precedentImaging"
//* item[=].text = "Precedent imaging"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-pecedentImaging|2.0.0"
* item[=].item.linkId = "precedentImaging.1"
* item[=].item.text = "Unable to resolve 'precedentImaging' sub-questionnaire"
* item[=].item.type = #display






/*=================================================*/

/*Module Instruction*/
Instance: ch-rad-order-module-instruction
InstanceOf: Questionnaire
Title: "Module Questionnaire Instruction"
Description: "Subquestionnaire Instruction"

/*------------------------------------------------------------------------
1. Was wird gewünscht (nur 1 Wert)             
*/
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-instruction"
* name = "ModuleQuestionnaireRadiologyOrderInstruction"
* title = "Module Questionnaire Radiologyorder Instruction"
* status = #active
* date = "2024-03-02"
* publisher = "HL7 Switzerland"

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
Codierung vorderhand nicht vorgesehen)
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


/*Module Diagnosis and Findings*/
Instance: ch-rad-order-module-diagnosis
InstanceOf: Questionnaire
Title: "Module Questionnaire Diagnosis"
Description: "Subquestionnaire Diagnosis"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-diagnosis"
* name = "ModuleQuestionnaireRadiologyOrderDiagnosis"
* title = "Module Questionnaire Radiologyorder Diagnosis"
* status = #active
* date = "2024-03-02"
* publisher = "HL7 Switzerland"

* item[+].linkId = "diagnosisList"
* item[=].text = "Diagnosen und Befunde"
* item[=].type = #group

* item[=].item[+].linkId = "diagnosisList.primaryDiagnosis"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.reasonReference"
* item[=].item[=].text = "Hauptdiagnose"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:diagnosis"
* item[=].item[=].text = "Nebendiagnose"
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


/*Module Caveats*/
Instance: ch-rad-order-module-caveats
InstanceOf: Questionnaire
Title: "Module Questionnaire Caveats"
Description: "Subquestionnaire Caveats"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-caveats"
* name = "ModuleQuestionnaireRadiologyOrderCaveats"
* title = "Module Questionnaire Radiologyorder Caveats"
* status = #active
* date = "2024-03-02"
* publisher = "HL7 Switzerland"

* item[+].linkId = "caveat" 
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:caveats" 
* item[=].text = "Caveats"
* item[=].type = #group

* item[=].item[+].linkId = "caveat.bloodCoagulation"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Beinträchtigte Blutgerinnung"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.INR" 
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"
* item[=].item[=].item[=].text = "INR"   
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen[+].question = "caveat.bloodCoagulation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = SCT#52101004

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

* item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (10^3/µL)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "caveat.renalInsufficiency"    
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"   
* item[=].item[=].text = "Niereninsuffizienz"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance" 
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"
* item[=].item[=].item[=].text = "Creatinin-Clearance"   
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (mL/min)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine"    
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"    
* item[=].item[=].item[=].text = "Creatinin"   
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (µmol/L)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "caveat.claustrophobia"    
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"   
* item[=].item[=].text = "Klaustrophobie"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveat.bodyPiercing"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Körperpiercing"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveat.device.specifictype"
* item[=].item[=].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#ch-rad-order-caveat-type"  
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-device"
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "caveat.device.choice"  
* item[=].item[=].item[=].text = "Choice"     
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "caveat.hyperthyroidism"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Hyperthyreose"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveat.diabetes"    
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"   
* item[=].item[=].text = "Diabetes mellitus"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveat.gravida"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Schwangerschaft"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveat.contrastMediaAllergy"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].text = "Kontrastmittelallergie"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveat.drugPrescription" 
* item[=].item[=].text = "Relevante Medikamente"     
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "caveat.drugPrescription.metformin"     
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].item[=].text = "Metformin"   
* item[=].item[=].item[=].type = #choice 
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "caveat.drugPrescription.betaBlocker"     
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"  
* item[=].item[=].item[=].text = "Betablocker"   
* item[=].item[=].item[=].type = #choice 
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].item[=].required = true


/*Module Precedent Imaging*/
Instance: ch-rad-order-module-precedentImaging
InstanceOf: Questionnaire
Title: "Module Questionnaire precedent imaging"
Description: "Subquestionnaire precedent imaging"
/* Vorherige Untersuchungsresultate:
Angaben zu Reports, auf die verwiesen wird
Angaben zu Bildern bzw. allfällige Vorbildern und Reports, auf die verwiesen wird  
mittels ImagingStudy Resource (DICOM WADO) oder die mitgegeben werden in der Media Resource.
*/

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-prededentImaging"
* name = "ModuleQuestionnaireRadiologyOrderPrecedentImaging"
* title = "Module Questionnaire Radiologyorder Imaging"
* status = #active
* date = "2024-03-02"
* publisher = "HL7 Switzerland"

* item[+].linkId = "previousResults.attachment"
* item[=].text = "Bilder (DICOM)"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "previousResults.attachment.title"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreference#content.attachment.title"
* item[=].item[=].text = "Dateiname und -endung der angehängten Datei (z.B. \"Verlauf.pdf\")"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "previousResults.attachment.description"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreference#content.descritption"
* item[=].item[=].text = "Beschreibung"
* item[=].item[=].type = #string

* item[+].linkId = "previousResults.imagingStudy"
* item[=].text = "Bilder (DICOM)"
* item[=].type = #group
* item[=].repeats = true

/*
The ImagingStudy’s DICOM Study Instance UID is encoded in the ImagingStudy.identifier element, 
which is of the Identifier datatype. When encoding a DICOM UID in an Identifier datatype, 
use the Identifier system of “urn:dicom:uid”, and prefix the UID value with “urn:oid:”. 
Therefore, an ImagingStudy with DICOM Study Instance UID of 2.16.124.113543.1154777499.30246.19789.3503430046 
is encoded as:

	"identifier":{
		"system":"urn:dicom:uid",
		"value":"urn:oid:2.16.124.113543.1154777499.30246.19789.3503430046"
	} 
*/

* item[=].item[+].linkId = "previousResults.imagingStudy.study"
* item[=].item[=].text = "Study"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "previousResults.imagingStudy.study.studyInstanceUid"  
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy#ImagingStudy.identifier"
* item[=].item[=].item[=].text = "DICOM Study Instance UID"
* item[=].item[=].item[=].type = #string


/*
 The study accession number can also be encoded as an Identifier using the “ACSN” identifier type, as follows:

  "identifier":{
		"type" : {
			"coding" : [
				{
					"system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
					"code" : "ACSN"
				}
			]
		},
		"system":"http://ginormoushospital.org/accession",
		"value":"GH334103"
	} 
*/

* item[=].item[=].item[+].linkId = "previousResults.imagingStudy.study.acsn"  
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy#ImagingStudy.identifier"
* item[=].item[=].item[=].text = "ACSN"
* item[=].item[=].item[=].type = #string

/*
DICOM Series Instance UID and SOP Instance UID use the id datatype, and are encoded directly. 
For example, an image with SOP Instance UID of 2.16.124.113543.1154777499.30246.19789.3503430045.1.1 
is encoded in ImagingStudy.series.instance.uid as “2.16.124.113543.1154777499.30246.19789.3503430045.1.1”. 
*/

* item[=].item[=].item[=].item[+].linkId = "previousResults.imagingStudy.study.series"
* item[=].item[=].item[=].item[=].text = "Series"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[=].item[+].linkId = "previousResults.imagingStudy.study.series.SeriesInstanceUid"  
* item[=].item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy#ImagingStudy.series.uid"
* item[=].item[=].item[=].item[=].item[=].text = "DICOM Series Instance UID"
* item[=].item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[=].item[+].linkId = "previousResults.imagingStudy.study.series.Modality"  
* item[=].item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy#ImagingStudy.modality.coding"
* item[=].item[=].item[=].item[=].item[=].text = "DICOM Series Modality"
* item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].answerValueSet = AcquisitionModality

* item[=].item[=].item[=].item[=].item[+].linkId = "previousResults.imagingStudy.study.series.sopClass"  
* item[=].item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy#ImagingStudy.sopClass.value"
* item[=].item[=].item[=].item[=].item[=].text = "DICOM SOP Class"
* item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].answerValueSet = SopClass



//R4: VS is CID 29 Acquisition Modality
//    Modalit has datatype Coding

//R5: VS is CID 33 Modality which consists of CID 29 “Acquisition Modality” and CID 32 “Non-Acquisition Modality” 
//    Modality has datatype CodeableConcept 
// VS for RAD-Order has been set to CID 33


/* DCM#BMD "Bone Mineral Densitometry"
* DCM#EOG "Electrooculography"
* DCM#SM "Slide Microscopy"
* DCM#SR "Structured Report Document"
* DCM#FID "Spatial Fiducials"
* DCM#OP "Ophthalmic Photography"
* DCM#OT "Other"
* DCM#KO "Key Object Selection"
* DCM#ECG "Electrocardiography"
* DCM#GM "General Microscopy"
* DCM#XA "X-Ray Angiography"
* DCM#IOL "Intraocular Lens Calculation"
* DCM#XC "External-camera Photography"
* DCM#ASMT "Content Assessment Result"
* DCM#DMS "Dermoscopy"
* DCM#IVUS "Intravascular Ultrasound"
* DCM#CR "Computed Radiography"
* DCM#CT "Computed Tomography"
* DCM#PA "Photoacoustic"
* DCM#OSS "Optical Surface Scanner"
* DCM#TG "Thermography"
* DCM#REG "Registration"
* DCM#LEN "Lensometry"
* DCM#TEXTUREMAP "Texture Map"
* DCM#RTDOSE "RT Dose"
* DCM#OPTENF "Ophthalmic Tomography En Face"
* DCM#HC "Hard Copy"
* DCM#RTPLAN "RT Plan"
* DCM#HD "Hemodynamic Waveform"
* DCM#OCT "Optical Coherence Tomography"
* DCM#BDUS "Ultrasound Bone Densitometry"
* DCM#M3D "Model for 3D Manufacturing"
* DCM#DG "Diaphanography"
* DCM#PR "Presentation State"
* DCM#PT "Positron emission tomography"
* DCM#EPS "Cardiac Electrophysiology"
* DCM#LS "Laser Scan"
* DCM#PX "Panoramic X-Ray"
* DCM#OPM "Ophthalmic Mapping"
* DCM#OPTBSV "Ophthalmic Tomography B-scan Volume Analysis"
* DCM#OPV "Ophthalmic Visual Field"
* DCM#DX "Digital Radiography"
* DCM#OPT "Ophthalmic Tomography"
* DCM#DOC "Document"
* DCM#RTRECORD "RT Treatment Record"
* DCM#MG "Mammography"
* DCM#US "Ultrasound"
* DCM#EMG "Electromyography"
* DCM#IVOCT "Intravascular Optical Coherence Tomography"
* DCM#RTSTRUCT "RT Structure Set"
* DCM#MR "Magnetic Resonance"
* DCM#IO "Intra-oral Radiography"
* DCM#EEG "Electroencephalography"
* DCM#RTIMAGE "RT Image"
* DCM#VA "Visual Acuity"
* DCM#RESP "Respiratory Waveform"
* DCM#ES "Endoscopy"
* DCM#RWV "Real World Value Map"
* DCM#AR "Autorefraction"
* DCM#POS "Position Sensor"
* DCM#SEG "Segmentation"
* DCM#RG "Radiographic imaging"
* DCM#RF "Radiofluoroscopy"
* DCM#AU "Basic Voice Audio"
* DCM#KER "Keratometry"
* DCM#SMR "Stereometric Relationship"
* DCM#CTPROTOCOL "CT Protocol"
* DCM#STAIN "Automated Slide Stainer"
* DCM#OAM "Ophthalmic Axial Measurements"
* DCM#NM "Nuclear Medicine"
* DCM#PLAN "Plan"
* DCM#BI "Biomagnetic Imaging"
* DCM#SRF "Subjective Refraction"
* DCM#CFM "Confocal Microscopy"
*/

* item[=].item[=].item[=].item[=].item[=].item[+].linkId = "previousResults.imagingStudy.study.series.sopInstance"
* item[=].item[=].item[=].item[=].item[=].item[=].text = "SOP Instance"
* item[=].item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[=].item[=].item[=].item[+].linkId = "previousResults.imagingStudy.study.series.sopInstance.sopInstanceUid"  
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy#ImagingStudy.series.instance.uid"
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].text = "DICOM SOP Instance UID"
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].item[=].item[=].item[=].repeats = true


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
