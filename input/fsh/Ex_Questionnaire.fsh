Alias: $ch-rad-order-requested-service = http://fhir.ch/ig/ch-rad-order/CodeSystem/ch-rad-order-requested-service
Alias: $sct = http://snomed.info/sct

Instance: QuestionnaireRadiologyOrder
InstanceOf: Questionnaire
Usage: #example
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-instruction|2.0.0-ci-build"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-diagnosis|2.0.0-ci-build"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-caveats|2.0.0-ci-build"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-rad-order/Questionnaire/ch-rad-order-module-attachment|2.0.0-ci-build"
* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder"
* version = "2.0.0-ci-build-assembled"
* name = "QuestionnaireRadiologyOrder"
* title = "QuestionnaireRadiologyOrder"
* status = #active
* subjectType = #Patient
* date = "2022-08-24"
* publisher = "HL7 Switzerland"
* contact.name = "Juerg P. Bleuer"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch"
* jurisdiction = urn:iso:std:iso:3166#CH
* copyright = "CC0-1.0"
* item[0].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|3.0.0-ci-build"
* item[=].item.linkId = "order.1"
* item[=].item.text = "Unable to resolve 'order' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|3.0.0-ci-build"
* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "initiator"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:initiator"
* item[=].text = "Initiant dieser Anmeldung"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-initiator|3.0.0-ci-build"
* item[=].item.linkId = "initiator.1"
* item[=].item.text = "Unable to resolve 'intitiator' sub-questionnaire"
* item[=].item.type = #display
* item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "linkIdPrefix"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "'patient.'"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "address"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.address"
* item[=].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|3.0.0-ci-build"
* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|3.0.0-ci-build"
* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedEncounter' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|3.0.0-ci-build"
* item[=].item.linkId = "coverage.1"
* item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|3.0.0-ci-build"
* item[=].item.linkId = "sender.1"
* item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"
* item[=].item.type = #display
* item[=].item.required = true
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|3.0.0-ci-build"
* item[=].item.linkId = "receiverCopy.1"
* item[=].item.text = "Unable to resolve 'receiverCopy' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "antecedentEpisodeOfCare"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:antecedentEpisodeOfCare"
* item[=].text = "Vorgängiger Aufenthalt in Spital / Heim"
* item[=].type = #group
* item[=].item[0].linkId = "antecedentEpisodeOfCare.start"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Von"
* item[=].item[=].type = #dateTime
* item[=].item[+].linkId = "antecedentEpisodeOfCare.end"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Bis"
* item[=].item[=].type = #dateTime
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'antecedentEpisodeOfCare.organization.'"
* item[=].item[=].linkId = "antecedentEpisodeOfCare.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.organization"
* item[=].item[=].text = "Spital /Heim"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "antecedentEpisodeOfCare.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|3.0.0-ci-build"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.organization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|3.0.0-ci-build"
* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "consent"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:patientConsent"
* item[=].text = "Einverständniserklärung"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-consent|3.0.0-ci-build"
* item[=].item.linkId = "consent.1"
* item[=].item.text = "Unable to resolve 'consent' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "instruction"
* item[=].type = #group
* item[=].item[0].linkId = "requestedService"
* item[=].item[=].text = "Angeforderte Leistung"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].item.linkId = "requestedService.service"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.category"
* item[=].item[=].item.text = "Leistung"
* item[=].item[=].item.type = #choice
* item[=].item[=].item.required = true
* item[=].item[=].item.answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-requested-service"
* item[=].item[+].linkId = "reason"
* item[=].item[=].text = "Klinische Fragestellung"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "reason.question"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.reasonCode"
* item[=].item[=].item.text = "Fragestellung"
* item[=].item[=].item.type = #string
* item[=].item[=].item.repeats = true
* item[=].item[+].linkId = "imagingService"
* item[=].item[=].text = "Bildgebendes Verfahren"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "imagingService.type"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.code"
* item[=].item[=].item.text = "Art"
* item[=].item[=].item.type = #choice
* item[=].item[=].item.answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-modality-type"
* item[=].item[+].linkId = "orderDetail"
* item[=].item[=].text = "Weitere Angaben zur Bildgebung"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "orderDetail.imagingRegion"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequestServiceRequest.orderDetail:imagingRegion"
* item[=].item[=].item[=].text = "Region"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-imaging-region"
* item[=].item[=].item[+].linkId = "orderDetail.imagingFocus"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.bodySite"
* item[=].item[=].item[=].text = "Fokus"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-imaging-focus"
* item[=].item[=].item[+].linkId = "orderDetail.laterality"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions.html#ServiceRequest.orderDetail:laterality"
* item[=].item[=].item[=].text = "Seitenangabe"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-laterality"
* item[=].item[=].item[+].linkId = "orderDetail.viewType"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#orderDetail:viewType"
* item[=].item[=].item[=].text = "Ansicht"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-view-type"
* item[=].item[=].item[+].linkId = "orderDetail.maneuverType"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#orderDetail:maneuverType"
* item[=].item[=].item[=].text = "Manöver"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-maneuver-type"
* item[=].item[=].item[+].linkId = "orderDetail.guidanceForAction"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#orderDetail:guidanceForAction"
* item[=].item[=].item[=].text = "Handlungsanleitung"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].enableWhen[0].question = "requestedService.service"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $ch-rad-order-requested-service#RadIntervention
* item[=].item[=].item[=].enableWhen[+].question = "requestedService.service"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = $ch-rad-order-requested-service#ImagingRequestWithIntervention
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-guidance-for-action"
* item[=].item[+].linkId = "desiredRadiologist"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#performer"
* item[=].item[=].text = "Gewünschter Radiologe für die Befundung / für die Intervention"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "desiredRadiologist.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "desiredRadiologist.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "diagnosis"
* item[=].type = #group
* item[=].item.linkId = "diagnosisList"
* item[=].item.text = "Diagnosen und Befunde"
* item[=].item.type = #group
* item[=].item.item[0].linkId = "diagnosisList.primaryDiagnosis"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#reasonReference"
* item[=].item.item[=].text = "Hauptdiagnose"
* item[=].item.item[=].type = #string
* item[=].item.item[=].repeats = true
* item[=].item.item[+].linkId = "diagnosisList.secondaryDiagnosis"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.supportingInfo:diagnosis"
* item[=].item.item[=].text = "Nebendiagnose"
* item[=].item.item[=].type = #string
* item[=].item.item[=].repeats = true
* item[=].item.item[+].linkId = "diagnosisList.bodyHeight"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitionServiceRequest.supportingInfo:bodyHeight"
* item[=].item.item[=].text = "Grösse (cm)"
* item[=].item.item[=].type = #quantity
* item[=].item.item[=].repeats = false
* item[=].item.item[+].linkId = "diagnosisList.bodyWeight"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#supportingInfo:#ServiceRequest.supportingInfo:bodyWeight"
* item[=].item.item[=].text = "Gewicht (kg)"
* item[=].item.item[=].type = #quantity
* item[=].item.item[=].repeats = false
* item[+].linkId = "caveats"
* item[=].type = #group
* item[=].item.linkId = "caveatList"
* item[=].item.definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.supportingInfo:caveats"
* item[=].item.text = "Caveats"
* item[=].item.type = #group
* item[=].item.item[0].linkId = "caveatList.bloodCoagulation"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.category.coding.code"
* item[=].item.item[=].text = "Beinträchtigte Blutgerinnung"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].required = true
* item[=].item.item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].initial.valueCoding = $sct#373068000
* item[=].item.item[=].item[0].linkId = "caveatList.bloodCoagulation.INR"
* item[=].item.item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.evidence.detail"
* item[=].item.item[=].item[=].text = "INR"
* item[=].item.item[=].item[=].type = #group
* item[=].item.item[=].item[=].enableWhen.question = "caveatList.bloodCoagulation"
* item[=].item.item[=].item[=].enableWhen.operator = #=
* item[=].item.item[=].item[=].enableWhen.answerCoding = $sct#52101004
* item[=].item.item[=].item[=].item[0].linkId = "caveatList.bloodCoagulation.INR.quantity"
* item[=].item.item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-INR-observation-definitions#Observation.valueQuantity"
* item[=].item.item[=].item[=].item[=].text = "Wert (INR)"
* item[=].item.item[=].item[=].item[=].type = #quantity
* item[=].item.item[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.INR.dateTime"
* item[=].item.item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-INR-observation-definitions#Observation.effectiveDateTime"
* item[=].item.item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item.item[=].item[=].item[=].type = #dateTime
* item[=].item.item[=].item[+].linkId = "caveatList.bloodCoagulation.platelets"
* item[=].item.item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.evidence.detail"
* item[=].item.item[=].item[=].text = "Thrombozyten"
* item[=].item.item[=].item[=].type = #group
* item[=].item.item[=].item[=].item[0].linkId = "caveatList.bloodCoagulation.platelets.quantity"
* item[=].item.item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation-definitions#Observation.valueQuantity"
* item[=].item.item[=].item[=].item[=].text = "Wert (10^9/L)"
* item[=].item.item[=].item[=].item[=].type = #quantity
* item[=].item.item[=].item[=].item[+].linkId = "caveatList.bloodCoagulation.platelets.dateTime"
* item[=].item.item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation-definitions#Observation.effectiveDateTime"
* item[=].item.item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item.item[=].item[=].item[=].type = #dateTime
* item[=].item.item[+].linkId = "caveatList.renalInsufficiency"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"
* item[=].item.item[=].text = "Niereninsuffizienz"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].required = true
* item[=].item.item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].initial.valueCoding = $sct#373068000
* item[=].item.item[=].item[0].linkId = "caveatList.renalInsufficiency.creatinineClearance"
* item[=].item.item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.evidence.detail"
* item[=].item.item[=].item[=].text = "Creatinin-Clearance"
* item[=].item.item[=].item[=].type = #group
* item[=].item.item[=].item[=].item[0].linkId = "caveatList.renalInsufficiency.creatinineClearance.quantity"
* item[=].item.item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation-definitions#Observation.valueQuantity"
* item[=].item.item[=].item[=].item[=].text = "Wert (mL/min)"
* item[=].item.item[=].item[=].item[=].type = #quantity
* item[=].item.item[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinineClearance.dateTime"
* item[=].item.item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation-definitions#Observation.effectiveDateTime"
* item[=].item.item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item.item[=].item[=].item[=].type = #dateTime
* item[=].item.item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinine"
* item[=].item.item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.evidence.detail"
* item[=].item.item[=].item[=].text = "Creatinin"
* item[=].item.item[=].item[=].type = #group
* item[=].item.item[=].item[=].item[0].linkId = "caveatList.renalInsufficiency.creatinine.quantity"
* item[=].item.item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation-definitions#Observation.valueQuantity"
* item[=].item.item[=].item[=].item[=].text = "Wert (µmol/L)"
* item[=].item.item[=].item[=].item[=].type = #quantity
* item[=].item.item[=].item[=].item[+].linkId = "caveatList.renalInsufficiency.creatinine.dateTime"
* item[=].item.item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation-definitions#Observation.effectiveDateTime"
* item[=].item.item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item.item[=].item[=].item[=].type = #dateTime
* item[=].item.item[+].linkId = "caveatList.claustrophobia"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"
* item[=].item.item[=].text = "Klaustrophobie"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].required = true
* item[=].item.item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].initial.valueCoding = $sct#373068000
* item[=].item.item[+].linkId = "caveatList.bodyPiercing"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"
* item[=].item.item[=].text = "Körperpiercing"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].required = true
* item[=].item.item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].initial.valueCoding = $sct#373068000
* item[=].item.item[+].linkId = "caveatList.device"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#ch-rad-order-caveat-type"
* item[=].item.item[=].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].repeats = true
* item[=].item.item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-device"
* item[=].item.item[+].linkId = "caveatList.hyperthyroidism"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"
* item[=].item.item[=].text = "Hyperthyreose"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].required = true
* item[=].item.item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].initial.valueCoding = $sct#373068000
* item[=].item.item[+].linkId = "caveatList.diabetes"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"
* item[=].item.item[=].text = "Diabetes mellitus"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].required = true
* item[=].item.item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].initial.valueCoding = $sct#373068000
* item[=].item.item[+].linkId = "caveatList.gravida"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"
* item[=].item.item[=].text = "Schwangerschaft"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].required = true
* item[=].item.item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].initial.valueCoding = $sct#373068000
* item[=].item.item[+].linkId = "caveatList.contrastMediaAllergy"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"
* item[=].item.item[=].text = "Kontrastmittelallergie"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].required = true
* item[=].item.item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].initial.valueCoding = $sct#373068000
* item[=].item.item[+].linkId = "caveatList.drugPrescription"
* item[=].item.item[=].text = "Relevante Medikamente"
* item[=].item.item[=].type = #group
* item[=].item.item[=].required = true
* item[=].item.item[=].item[0].linkId = "caveatList.drugPrescription.metformin"
* item[=].item.item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"
* item[=].item.item[=].item[=].text = "Metformin"
* item[=].item.item[=].item[=].type = #choice
* item[=].item.item[=].item[=].required = true
* item[=].item.item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].item[=].initial.valueCoding = $sct#373068000
* item[=].item.item[=].item[+].linkId = "caveatList.drugPrescription.betaBlocker"
* item[=].item.item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition-definitions#Condition.code"
* item[=].item.item[=].item[=].text = "Betablocker"
* item[=].item.item[=].item[=].type = #choice
* item[=].item.item[=].item[=].required = true
* item[=].item.item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-qualifier-value"
* item[=].item.item[=].item[=].initial.valueCoding = $sct#373068000
* item[+].linkId = "previousImaging"
* item[=].type = #group
* item[=].item[0].linkId = "attachment.nonDicom"
* item[=].item[=].text = "Anhang (nicht DICOM)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "attachment.nonDicom.title"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreference-definitions#content.attachment.title"
* item[=].item[=].item.text = "Dateiname und -endung der angehängten Datei (z.B. \"Befund.pdf\")"
* item[=].item[=].item.type = #string
* item[=].item[=].item.repeats = true
* item[=].item[=].item.item.linkId = "attachment.nonDicom.description"
* item[=].item[=].item.item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreference-definitions#DocumentReference.description"
* item[=].item[=].item.item.text = "Beschreibung"
* item[=].item[=].item.item.type = #string
* item[=].item[+].linkId = "attachment.dicom"
* item[=].item[=].text = "Anhang (DICOM)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "attachment.dicom.title"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-documentreference-definitions#DocumentReference.content.attachment.title"
* item[=].item[=].item.text = "Dateiname und -endung der angehängten Dicom-Datei (z.B. \"Muster_F_2023-07-20_MR Knie nativ beidseits_im2588909576\")"
* item[=].item[=].item.type = #string
* item[=].item[=].item.repeats = true
* item[=].item[=].item.item[0].linkId = "attachment.dicom.sopInstanceUid"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.series.instance.uid"
* item[=].item[=].item.item[=].text = "DICOM SOP Instance UID"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[=].required = true
* item[=].item[=].item.item[+].linkId = "attachment.dicom.sopClass"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.series.instance.sopClass.value"
* item[=].item[=].item.item[=].text = "DICOM SOP Class"
* item[=].item[=].item.item[=].type = #choice
* item[=].item[=].item.item[=].required = true
* item[=].item[=].item.item[=].answerValueSet = "https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1"
* item[=].item[=].item.item[+].linkId = "attachment.dicom.modality"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#.ImagingStudy.series.modality.coding"
* item[=].item[=].item.item[=].text = "DICOM Series Modality"
* item[=].item[=].item.item[=].type = #choice
* item[=].item[=].item.item[=].required = true
* item[=].item[=].item.item[=].answerValueSet = "https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html"
* item[=].item[=].item.item[+].linkId = "attachment.dicom.SeriesInstanceUid"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.series.uid"
* item[=].item[=].item.item[=].text = "DICOM Series Instance UID"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[=].required = true
* item[=].item[=].item.item[+].linkId = "attachment.dicom.studyInstanceUid"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.identifier"
* item[=].item[=].item.item[=].text = "DICOM Study Instance UID"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[=].required = true
* item[=].item[=].item.item[+].linkId = "attachment.dicom.acsn"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-imagingstudy-definitions#ImagingStudy.identifier"
* item[=].item[=].item.item[=].text = "ACSN"
* item[=].item[=].item.item[=].type = #string
* item[=].item[+].linkId = "note"
* item[=].item[=].text = "Bemerkungen"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "note.text"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest-definitions#ServiceRequest.note.text"
* item[=].item[=].item.text = "Kommentar"
* item[=].item[=].item.type = #string