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
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order"
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
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver"
* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"
* item[=].item.type = #display

// ----------Initiator: Person/organization who initated this order / application ; e.g. spitex, retirement home etc. ----------
* item[+].linkId = "initiator"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:initiator"
* item[=].text = "Initiant dieser Anmeldung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-initiator"
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
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient"
* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"
* item[=].item.type = #display

// ---------- Encounter Class (Ambulant / Satinär / Notfall) ----------
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter"
* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedEncounter' sub-questionnaire"
* item[=].item.type = #display


// ---------- Coverage (Kostenträger) ----------
// Design as agreed with eHealth Suisse and Cistec 09.06.2021

* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage"
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
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender"
* item[=].item.linkId = "sender.1"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"
* item[=].item.type = #display

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy"
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
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.organization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display

/*------ Appointment ------------------------------ */
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment"
* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item.type = #display

/*------ Consent ------------------------------ */
* item[+].linkId = "consent"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:patientConsent"
* item[=].text = "Einverständniserklärung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-consent"
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
Previous Results
*/
* item[+].linkId = "previousResults"
* item[=].text = "Vorherige Untersuchungsresultate"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-previousresults|2.0.0"
* item[=].item.linkId = "previousImaging.1"
* item[=].item.text = "Unable to resolve 'previousImaging' sub-questionnaire"
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
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.category"
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
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.reasonCode"
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
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.code"
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
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequestServiceRequest.orderDetail:imagingRegion"
* item[=].item[=].text = "Region"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-imaging-region"

* item[=].item[+].linkId = "orderDetail.imagingFocus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.bodySite"
* item[=].item[=].text = "Fokus"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-imaging-focus"

* item[=].item[+].linkId = "orderDetail.laterality"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions.html#ServiceRequest.orderDetail:laterality"
* item[=].item[=].text = "Seitenangabe"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-laterality"

* item[=].item[+].linkId = "orderDetail.viewType"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#orderDetail:viewType"
* item[=].item[=].text = "Ansicht"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-view-type"

* item[=].item[+].linkId = "orderDetail.maneuverType"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#orderDetail:maneuverType"
* item[=].item[=].text = "Manöver"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-maneuver-type"

* item[=].item[+].linkId = "orderDetail.guidanceForAction"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#orderDetail:guidanceForAction"
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
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#performer"
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
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#reasonReference"
* item[=].item[=].text = "Hauptdiagnose"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.supportingInfo:diagnosis"
* item[=].item[=].text = "Nebendiagnose"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true

* item[=].item[+].linkId = "diagnosisList.bodyHeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitionServiceRequest.supportingInfo:bodyHeight"
* item[=].item[=].text = "Grösse (cm)"   
* item[=].item[=].type = #quantity
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "diagnosisList.bodyWeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#supportingInfo:#ServiceRequest.supportingInfo:bodyWeight"
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

* item[+].linkId = "caveatList" 
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.supportingInfo:caveats" 
* item[=].text = "Caveats"
* item[=].type = #group

* item[=].item[+].linkId = "caveatList.bloodCoagulation"   
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.category.coding.code"  
* item[=].item[=].text = "Beinträchtigte Blutgerinnung"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.INR" 
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.evidence.detail"
* item[=].item[=].item[=].text = "INR"   
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].enableWhen[+].question = "caveatList.bloodCoagulation"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = SCT#52101004

* item[=].item[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.INR.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-INR-observation-definitions#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (INR)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.INR.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-INR-observation-definitions#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.platelets"    
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.evidence.detail"    
* item[=].item[=].item[=].text = "Thrombozyten"   
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.platelets.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation-definitions#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (10^9/L)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.platelets.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation-definitions#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "caveatList.renalInsufficiency"    
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"   
* item[=].item[=].text = "Niereninsuffizienz"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinineClearance" 
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.evidence.detail"
* item[=].item[=].item[=].text = "Creatinin-Clearance"   
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinineClearance.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation-definitions#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (mL/min)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinineClearance.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation-definitions#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinine"    
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.evidence.detail"    
* item[=].item[=].item[=].text = "Creatinin"   
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinine.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation-definitions#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (µmol/L)"   
* item[=].item[=].item[=].item[=].type = #quantity

* item[=].item[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinine.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation-definitions#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
* item[=].item[=].item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "caveatList.claustrophobia"    
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"   
* item[=].item[=].text = "Klaustrophobie"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveatList.bodyPiercing"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"  
* item[=].item[=].text = "Körperpiercing"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveatList.device"
* item[=].item[=].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#ch-rad-order-caveat-type"  
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-device"
* item[=].item[=].repeats = true

/* item[=].item[=].item[+].linkId = "caveatList.device.choice"  
* item[=].item[=].item[=].text = "Choice"     
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"  
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].item[=].required = true
*/

* item[=].item[+].linkId = "caveatList.hyperthyroidism"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"  
* item[=].item[=].text = "Hyperthyreose"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveatList.diabetes"    
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"   
* item[=].item[=].text = "Diabetes mellitus"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveatList.gravida"     
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"  
* item[=].item[=].text = "Schwangerschaft"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveatList.contrastMediaAllergy"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"  
* item[=].item[=].text = "Kontrastmittelallergie"   
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].required = true

* item[=].item[+].linkId = "caveatList.drugPrescription" 
* item[=].item[=].text = "Relevante Medikamente"     
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "caveatList.drugPrescription.metformin"     
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"  
* item[=].item[=].item[=].text = "Metformin"   
* item[=].item[=].item[=].type = #choice 
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "caveatList.drugPrescription.betaBlocker"     
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"  
* item[=].item[=].item[=].text = "Betablocker"   
* item[=].item[=].item[=].type = #choice 
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item[=].item[=].initial.valueCoding = SCT#373068000
* item[=].item[=].item[=].required = true


/*Module Previous Results*/
Instance: ch-rad-order-module-previousresults
InstanceOf: Questionnaire
Title: "Module Questionnaire Attachment"
Description: "Subquestionnaire Attachment"
/* Vorherige Untersuchungsresultate:
Angaben zu Reports, auf die verwiesen wird
Angaben zu Bildern bzw. allfällige Vorbildern und Reports, auf die verwiesen wird  
mittels ImagingStudy Resource (DICOM WADO) oder die mitgegeben werden mit der Documen.
*/

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-child
* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-previousresults"
* name = "ModuleQuestionnaireRadiologyOrderPreviousResults"
* title = "Module Questionnaire Radiologyorder Previous Results"
* status = #active
* date = "2024-03-02"
* publisher = "HL7 Switzerland"

* item[+].linkId = "attachedFile"  
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-orf-documentreference-defintions#DocumentReference.content.attachedFile"
* item[=].text = "Datei"
* item[=].type = #attachment
* item[=].repeats = true

* item[=].item[+].linkId = "attachedFile.description"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreference-definitions#DocumentReference.description"
* item[=].item[=].text = "Beschreibung"
* item[=].item[=].type = #string

* item[+].linkId = "dicomObject"
* item[=].text = "DICOM Objekt"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "dicomObject.sopInstanceUid"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.series.instance.uid"
* item[=].item[=].text = "DICOM SOP Instance UID"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "dicomObject.sopClass"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.series.instance.sopClass.value"
* item[=].item[=].text = "DICOM SOP Class"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = SopClass
* item[=].item[=].required = true

* item[=].item[+].linkId = "dicomObject.modality"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#.ImagingStudy.series.modality.coding"
* item[=].item[=].text = "DICOM Series Modality"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = AcquisitionModality
* item[=].item[=].required = true

* item[=].item[+].linkId = "dicomObject.SeriesInstanceUid"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.series.uid"
* item[=].item[=].text = "DICOM Series Instance UID"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "dicomObject.studyInstanceUid"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.identifier"
* item[=].item[=].text = "DICOM Study Instance UID"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "dicomObject.acsn"  
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.identifier"
* item[=].item[=].text = "ACSN"
* item[=]..item[=].type = #string


// -------- Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
//* item[=].repeats = true

* item[=].item[+].linkId = "note.text"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].type = #string
* item[=].item[=].required = true
