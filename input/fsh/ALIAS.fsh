// External Code Systems/ Value Sets
Alias:   LNC =          http://loinc.org
Alias:   NMU =          http://hl7.org/fhir/name-use
Alias:   LNCPLAYBFULL = http://loinc.org/vs/loinc-rsna-radiology-playbook
// see https://chat.fhir.org/#narrow/stream/179202-terminology/topic/radlex

Alias:   RDLX =         http://radlex.org
// see https://www.hl7.org/fhir/terminologies-systems.html -> External CS
// see https://confluence.hl7.org/display/TA/RadLex  -> Technical identifier/s of the code system (OIDs, URNs etc)

Alias:   AcquisitionModality =          https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html
Alias:   SopClass =                     https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1

//R4: VS is CID 29 Acquisition Modality
//    Modalit has datatype Coding

//R5: VS is CID 33 Modality which consists of CID 29 “Acquisition Modality” and CID 32 “Non-Acquisition Modality” 
//    Modality has datatype CodeableConcept 
// VS for RAD-Order has been set to CID 33


Alias:   SCT =                              http://snomed.info/sct
Alias:   UCUM =                             http://unitsofmeasure.org
Alias:   ConditionCategory =                http://terminology.hl7.org/CodeSystem/condition-category
Alias:   MimeType =                         urn:ietf:bcp:13
Alias:   AdministrativeGender =             http://hl7.org/fhir/administrative-gender
Alias:   RequestPriority =                  http://hl7.org/fhir/request-priority
Alias:   V3ActCode =                        http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias:   AppointmentStatus =                http://hl7.org/fhir/appointmentstatus
Alias:   EchMaritalStatus =                 http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus
Alias:   ClinicalStatus =                  	http://terminology.hl7.org/CodeSystem/condition-clinical

// Code Systems/ Value Sets from ORF
//Alias:   ChOrfYesNo =  http://fhir.ch/ig/ch-orf/ch-orf-vs-YesNo
// CH EPR Term Code Systems
Alias:   SNOMEDCTSwissExtension =       urn:oid:2.16.756.5.30.1.127.3.4


// CH Core SD
Alias:   ChCorePatient =                http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient
Alias:   ChCorePractitioner =           http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner
Alias:   ChCorePractitionerRole =       http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole
Alias:   ChCoreOrganization =           http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization


// CH ORF SD
Alias:   ChOrfServiceRequest =          http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest
Alias:   ChOrfQuestionnaire =           http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire
Alias:   ChOrfQuestionnaireResponse =   http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaireresponse
Alias:   ChOrfComposition =             http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition
Alias:   ChOrfDocument =                http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-document
Alias:   ChOrfAppointment =             http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment
Alias:   ChOrfLocation =                http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location
Alias:   ChCoreCSEncounterType =        http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-21-encountertype

// CH ORF CS
Alias:   CSCoverageIdentifierType =     http://fhir.ch/ig/ch-orf/CodeSystem/ch-orf-cs-coverageidentifiertype

// HL7 / FHIR
Alias:   HL7BodyHeight =                http://hl7.org/fhir/StructureDefinition/bodyheight
Alias:   HL7BodyWeight =                http://hl7.org/fhir/StructureDefinition/bodyweight
Alias:   ObservationCategory =          http://terminology.hl7.org/CodeSystem/observation-category