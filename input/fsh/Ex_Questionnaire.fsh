Instance: QuestionnaireRadiologyOrder
InstanceOf: ChOrfQuestionnaire
Title: "Questionniaire Radiology Order"
Description: "Example for Questionnaire"
* meta.profile[0] = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-questionnaire"
* meta.profile[1] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[2] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"
* extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension.valueCanonical = "http://fhir.ch/ig/ch-rad-order/StructureMap/OrfQrToBundle"
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

* item[0].item[0].linkId = "order.placerOrderIdentifier"
* item[0].item[0].text = "Auftragsnummer des Auftraggebers"
* item[0].item[0].type = #string

* item[0].item[1].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[0].item[1].extension.valueBoolean = true
* item[0].item[1].linkId = "order.placerOrderIdentifierDomain"
* item[0].item[1].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[0].item[1].type = #string

// patient (Patient) ----------------------------
* item[1].linkId = "patient"
* item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
* item[1].text = "Patient"
* item[1].type = #group

* item[1].item[0].linkId = "patient.familyName"
* item[1].item[0].text = "Name"
* item[1].item[0].type = #string

* item[1].item[1].linkId = "patient.maidenName"   // NEU, anschliessend neu numeriert
* item[1].item[1].text = "Lediger Name"
* item[1].item[1].type = #string

* item[1].item[2].linkId = "patient.givenName"
* item[1].item[2].text = "Vorname"
* item[1].item[2].type = #string

* item[1].item[3].linkId = "patient.birthDate"
* item[1].item[3].text = "Geburtsdatum"
* item[1].item[3].type = #date

* item[1].item[4].linkId = "patient.gender"
* item[1].item[4].text = "Geschlecht"
* item[1].item[4].type = #string

* item[1].item[5].linkId = "patient.phone"
* item[1].item[5].text = "Telefon"
* item[1].item[5].type = #string

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

* item[1].item[8].linkId = "patient.country"
* item[1].item[8].text = "Land"
* item[1].item[8].type = #string

// sender (Auftraggeber)------------------------------
* item[2].linkId = "sender"
* item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].text = "Auftraggeber"
* item[2].type = #group
* item[2].required = true

* item[2].item[0].linkId = "sender.author.practionerrole"
* item[2].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].item[0].text = "Verantwortliche Person-Rolle"
* item[2].item[0].type = #group
* item[2].item[0].required = true

* item[2].item[0].item[0].linkId = "sender.author.practitioner"
* item[2].item[0].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[2].item[0].item[0].text = "Verantwortliche Person"
* item[2].item[0].item[0].type = #group

* item[2].item[0].item[0].item[0].linkId = "sender.author.practitioner.familyName"
* item[2].item[0].item[0].item[0].text = "Name"
* item[2].item[0].item[0].item[0].type = #string

* item[2].item[0].item[0].item[1].linkId = "sender.author.practitioner.givenName"
* item[2].item[0].item[0].item[1].text = "Vorname"
* item[2].item[0].item[0].item[1].type = #string

* item[2].item[0].item[0].item[2].linkId = "sender.author.practitioner.email"
* item[2].item[0].item[0].item[2].text = "E-Mail"
* item[2].item[0].item[0].item[2].type = #string

// sender (Auftraggeber-Dataenterer)
* item[2].item[1].linkId = "sender.dataenterer.practionerrole"
* item[2].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].item[1].text = "Sekretariat-Rolle"
* item[2].item[1].type = #group
* item[2].item[1].required = true

* item[2].item[1].item[0].linkId = "sender.dataenterer.practitioner"
* item[2].item[1].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[2].item[1].item[0].text = "Sekretariat"
* item[2].item[1].item[0].type = #group

* item[2].item[1].item[0].item[0].linkId = "sender.dataenterer.practitioner.familyName"
* item[2].item[1].item[0].item[0].text = "Name"
* item[2].item[1].item[0].item[0].type = #string

* item[2].item[1].item[0].item[1].linkId = "sender.dataenterer.practitioner.givenName"
* item[2].item[1].item[0].item[1].text = "Vorname"
* item[2].item[1].item[0].item[1].type = #string

* item[2].item[1].item[0].item[2].linkId = "sender.dataenterer.practitioner.email"
* item[2].item[1].item[0].item[2].text = "E-Mail"
* item[2].item[1].item[0].item[2].type = #string

// sender (Auftraggeber-SofortInfo bei Antwort)

* item[2].item[2].linkId = "urgentnoficationcontact.fortheresponsetothisdocument "
* item[2].item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-composition"
* item[2].item[2].text = "Bei Eintreffen der Antwort sofort benachtichtigen"
* item[2].item[2].type = #group

* item[2].item[2].item[0].linkId = "urgent.person.practitioner"
* item[2].item[2].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[2].item[2].item[0].text = "Verantwortliche Person"
* item[2].item[2].item[0].type = #group

* item[2].item[2].item[0].item[0].linkId = "urgent.person.practitioner.familyName"
* item[2].item[2].item[0].item[0].text = "Name"
* item[2].item[2].item[0].item[0].type = #string

* item[2].item[2].item[0].item[1].linkId = "urgent.person.practitioner.givenName"
* item[2].item[2].item[0].item[1].text = "Vorname"
* item[2].item[2].item[0].item[1].type = #string

// sender (Auftraggeber-Institution)
* item[2].item[3].linkId = "sender"
* item[2].item[3].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[2].item[3].text = "Auftragnehmer"
* item[2].item[3].type = #group
* item[2].item[3].required = true

* item[2].item[3].item[0].linkId = "sender.organiszation.streetAddressLine"
* item[2].item[3].item[0].text = "Strasse, Hausnummer, Postfach etc."
* item[2].item[3].item[0].type = #string
* item[2].item[3].item[0].repeats = true

* item[2].item[3].item[1].linkId = "sender.organiszation.postalCode"
* item[2].item[3].item[1].text = "PLZ"
* item[2].item[3].item[1].type = #string

* item[2].item[3].item[2].linkId = "sender.organiszation.city"
* item[2].item[3].item[2].text = "Ort"
* item[2].item[3].item[2].type = #string

* item[2].item[3].item[3].linkId = "sender.country"
* item[2].item[3].item[3].text = "Land"
* item[2].item[3].item[3].type = #string

// receiver (Empfänger)------------------------------
* item[3].linkId = "receiver"
* item[3].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[3].text = "Empfänger"
* item[3].type = #group
* item[3].required = true

* item[3].item[0].linkId = "receiver.person.practionerrole"
* item[3].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[3].item[0].text = "Verantwortliche Person-Rolle"
* item[3].item[0].type = #group
* item[3].item[0].required = true

* item[3].item[0].item[0].linkId = "receiver.person.practitioner"
* item[3].item[0].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[3].item[0].item[0].text = "Verantwortliche Person"
* item[3].item[0].item[0].type = #group

* item[3].item[0].item[0].item[0].linkId = "receiver.person.practitioner.familyName"
* item[3].item[0].item[0].item[0].text = "Name"
* item[3].item[0].item[0].item[0].type = #string

* item[3].item[0].item[0].item[1].linkId = "receiver.person.practitioner.givenName"
* item[3].item[0].item[0].item[1].text = "Vorname"
* item[3].item[0].item[0].item[1].type = #string

* item[3].item[0].item[0].item[2].linkId = "receiver.person.practitioner.email"
* item[3].item[0].item[0].item[2].text = "E-Mail"
* item[3].item[0].item[0].item[2].type = #string

// receiver (Auftragnehmer-SofortInfo bei Einftreffen des Auftrages)

* item[3].item[1].linkId = "urgentnoficationcontact.forthisdocument"
* item[3].item[1].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* item[3].item[1].text = "Bei Eintreffen des Auftrages sofort benachtichtigen"
* item[3].item[1].type = #group

* item[3].item[1].item[0].linkId = "urgent.person.practitioner"
* item[3].item[1].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* item[3].item[1].item[0].text = "Verantwortliche Person"
* item[3].item[1].item[0].type = #group

* item[3].item[1].item[0].item[0].linkId = "urgent.person.practitioner.familyName"
* item[3].item[1].item[0].item[0].text = "Name"
* item[3].item[1].item[0].item[0].type = #string

* item[3].item[1].item[0].item[1].linkId = "urgent.person.practitioner.givenName"
* item[3].item[1].item[0].item[1].text = "Vorname"
* item[3].item[1].item[0].item[1].type = #string

//receiver  (Auftragnehmer-Institution)
* item[3].item[2].linkId = "receiver.organization"
* item[3].item[2].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole"
* item[3].item[2].text = "Auftragnehmer"
* item[3].item[2].type = #group
* item[3].item[2].required = true

* item[3].item[2].item[0].linkId = "receiver.organiszation.streetAddressLine"
* item[3].item[2].item[0].text = "Strasse, Hausnummer, Postfach etc."
* item[3].item[2].item[0].type = #string
* item[3].item[2].item[0].repeats = true

* item[3].item[2].item[1].linkId = "receiver.rganiszation.postalCode"
* item[3].item[2].item[1].text = "PLZ"
* item[3].item[2].item[1].type = #string

* item[3].item[2].item[2].linkId = "receiver.organiszation.city"
* item[3].item[2].item[2].text = "Ort"
* item[3].item[2].item[2].type = #string

* item[3].item[2].item[3].linkId = "receiver.country"
* item[3].item[2].item[3].text = "Land"
* item[3].item[2].item[3].type = #string

/* ----- Beschreibung des Kerninhaltes der Rad-Order ----------------------
CH Rad-Order UNTERSTUETZT LOINC/RSNA PLAYBOOK WIE FOLGT: ANSELLE DER ITEMS [4] - [7] WIRD IN
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
* item[4].text = "Gegenstand der Anfrage"
* item[4].type = #string
/*
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

* item[5].linkId = "imgagingservicetype"
* item[5].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[5].text = "Art der Bildgebung"
* item[5].type = #string

/*----------------------------------------------------------------------
Art der Intervention (mehrere Werte)
*/

* item[6].linkId = "interventiontype"
* item[6].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[6].text = "Art der Intervention"
* item[6].type = #string

/*------------------------------------------------------------------------
Fragestellung (mehrere Werte)
*/

* item[7].linkId = "reason"
* item[7].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[7].text = "Klinische Fragestellung"
* item[7].type = #group

* item[7].item[0].linkId = "reason"
* item[7].item[0].text = "Klinische Fragestellung"
* item[7].item[0].type = #string
* item[7].item[0].repeats = true

/*----------------------------------------------------------------------*-- 
Darstellung der Order Details
                * orderDetail[RadOrderImagingRegion] from VsRadOrderImagingRegion       
                * orderDetail[RadOrderImagingFocus] from VsRadOrderImagingFocus         
                * orderDetail[RadOrderLaterality] from VsRadOrderLaterality                 
                * orderDetail[RadOrderViewType] from VsRadOrderViewType                    
                * orderDetail[RadOrderManeuverType] from VsRadOrderManeuverType             
*/

* item[8].linkId = "orderdetails"
* item[8].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[8].text = "Weitere Angaben zur Bildgebung"
* item[8].type = #group

* item[8].item[0].linkId = "orderdetails.region"      // n Einträge
* item[8].item[0].text = "Region"
* item[8].item[0].type = #string
* item[8].item[0].repeats = true

* item[8].item[0].linkId = "orderdetails.region"      // n Einträge
* item[8].item[0].text = "Fokus"
* item[8].item[0].type = #string
* item[8].item[0].repeats = true

* item[8].item[1].linkId = "orderdetails.laterality" // 1 Eintrag
* item[8].item[1].text = "Seitenangabe"
* item[8].item[1].type = #string

* item[8].item[2].linkId = "orderdetails.manoever"   // n Einträge
* item[8].item[2].text = "Maneuver"
* item[8].item[2].type = #string
* item[8].item[2].repeats = true

/*----------------------------------------------------------------------
Darstellung der Problemliste
*/

* item[9].linkId = "supplementaryinfo"
* item[9].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[9].text = "Problemliste"
* item[9].type = #group

* item[9].item[0].linkId = "supplementaryinfo"  
* item[9].item[0].text = "Problem"
* item[9].item[0].type = #string
* item[9].item[0].repeats = true


/*----------------------------------------------------------------------
Darstellung Caveats                                  
 */

* item[10].linkId = "caveats"  
* item[10].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[10].text = "Warnungen"
* item[10].type = #group

* item[10].item[0].linkId = "alert"     
* item[10].item[0].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[10].item[0].text = "Warnung"   // n Eintraege
* item[10].item[0].type = #string
* item[10].item[0].repeats = true

* item[10].item[0].item[0].linkId = "alert.renalinsuff"     
* item[10].item[0].item[0].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-orf-caveat-caveat-observation"
* item[10].item[0].item[0].text = "Bei Niereninsuffinzients entweder Creatininclearance oder Creatinin; fuer beides Datum"
* item[10].item[0].item[0].type = #group
/*
* item[10].item[0].item[0].item[0].linkId = "alert.renalinsuff.creatclearance"  
* item[10].item[0].item[0].item[0].text = "Creatinin Clearance"
* item[10].item[0].item[0].item[0].type= #string

* item[10].item[0].item[0].item[0].linkId = "alert.renalinsuff.creat"  
* item[10].item[0].item[0].item[0].text = "Creatinin"
* item[10].item[0].item[0].item[0].type= #string

* item[10].item[0].item[0].item[0].item[0].linkId = "supplementaryinfo.problemlist.renalinsuff.creatclearance"  
* item[10].item[0].item[0].item[0].item[0].text = "Datum der Bestimmung"
* item[10].item[0].item[0].item[0].item[0].type= #datetime
*/
/*-------------------------------------------------------------------------
Darstellung der 4 Consents:
        [PrivacyConsent] only Reference(ChOrfConsent)
        TreatmentConsent] only Reference(ChOrfConsent)
        [RearchConsent] only Reference(ChOrfConsent)
        [ADCD]: Advanced directive
*/

* item[11].linkId = "consents"  
* item[11].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-rad-order-servicerequest"
* item[11].text = "Einverständniserklärungen"
* item[11].type = #group

* item[11].item[0].linkId = "consents.treatmentconsent"      
* item[11].item[0].text = "Einverständnis des Patienten zur Behandlung"
* item[11].item[0].type = #string

* item[11].item[1].linkId = "consents.privacyconsent"      
* item[11].item[1].text = "Einverständnis des Patienten zum Datenschutz"
* item[11].item[1].type = #string

* item[11].item[2].linkId = "consents.researchconsent"      
* item[11].item[2].text = "Einverständnis des Patienten zur Forschung"
* item[11].item[2].type = #string

* item[11].item[3].linkId = "consents.researchconsent"     
* item[11].item[3].text = "Patientenverfügung"
* item[11].item[3].type = #string

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
* item[12].item[0].text = "Unfall"
* item[12].item[0].type = #string

* item[12].item[1].linkId = "insurance.kvg"
* item[12].item[1].text = "Grundversicherung"
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
