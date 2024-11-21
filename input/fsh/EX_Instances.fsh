Instance: ServiceRequestRadiologyOrder
InstanceOf: ChRadOrderServiceRequest
Title: "ServiceRequest Radiology Order"
Description: "Example of ServiceRequest"
* extension[locationAndTime].valueReference = Reference(AppointmentRadiography)

* identifier[placerOrderIdentifier].system = "urn:oid:1.3.4.5.6.7"
* identifier[placerOrderIdentifier].value = "12345"
* status = #active
* intent = #order
* priority = #routine
* category = ChRadOrderRequestedService#ImagingRequest "Bildgebende Diagnostik"
* code.coding[RdlxModType] = RDLX#RID10345 "projection radiography"

* orderDetail[imagingRegion] = RDLX#RID1243 "Thorax"
* orderDetail[imagingRegion].extension[orderDetailType].valueCoding = ChRadOrderOrderDetailType#imagingRegion

* subject = Reference(PatSUfferer)
* requester = Reference(RoleORderplacer)
* performer = Reference(RoleORderfiller) // desiredRadiologist
* reasonCode.text = "Diagnostic Question"
* reasonReference[+] = Reference(PrimaryDiagnosis)
* insurance = Reference(CoverageKVG)

* supportingInfo[bodyHeight][+] = Reference(BodyHeight)
* supportingInfo[bodyWeight][+] = Reference(BodyWeight)
* supportingInfo[diagnosis][+] = Reference(SecondaryDiagnosis1)
* supportingInfo[diagnosis][+] = Reference(SecondaryDiagnosis2)

* supportingInfo[caveats][+] = Reference(CaveatBloodCoagulation)
* supportingInfo[caveats][+] = Reference(CaveatRenalInsufficiency)
* supportingInfo[caveats][+] = Reference(CaveatBodyPiercing)
* supportingInfo[caveats][+] = Reference(CaveatDeviceCardiacPacemaker)
* supportingInfo[caveats][+] = Reference(CaveatDrugPrescriptionMetformin)

//* supportingInfo[previousImagingResults][+] = Reference(DocumentReferenceDicomSopInstanceConformant)
* supportingInfo[previousImagingResults][+] = Reference(DocumentReferenceNonDicom)

* bodySite = RDLX#RID2468 "Chest wall" // imagingFocus
* note.text = "Bemerkung/Kommentar"


Instance: CompositionRadiologyOrderImagingRequest
InstanceOf: ChRadOrderComposition
Title: "Composition Radiology Order"
Description: "Example of Composition"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* extension[dataEnterer].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[dataEnterer].extension[enterer].url = "enterer"
* extension[dataEnterer].extension[enterer].valueReference = Reference(RoleDAtaenterer)
* extension[receiver].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[receiver].valueReference = Reference(RoleORderfiller)
* extension[copyReceiver].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[copyReceiver].valueReference = Reference(PatSUfferer)
* status = #final
* type = urn:oid:2.16.756.5.30.1.127.3.4#2161000195103 "Imaging order (record artifact)"
* category = SCT#721963009 "Order (record artifact)"
* subject = Reference(PatSUfferer)
* date = "2019-04-01T20:18:41.341+00:00"
* author = Reference(RoleORderplacer)
* section[orderReferral].title = "Order-Referral"
* section[orderReferral].code = LNC#93037-0 "Portable medical order form"
* section[orderReferral].entry[Questionnaire] = Reference(QuestionnaireRadiologyOrder)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(QuestionnaireResponseRadiologyOrderImagingRequest)
* section[orderReferral].entry[ServiceRequest] = Reference(ServiceRequestRadiologyOrder)

/*
Instance: CompositionRadiologyOrderSecondOpinion
InstanceOf: ChRadOrderComposition
Title: "Composition Radiology Order"
Description: "Example of Composition"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* extension[dataEnterer].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[dataEnterer].extension[enterer].url = "enterer"
* extension[dataEnterer].extension[enterer].valueReference = Reference(RoleDAtaenterer)
* extension[receiver].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[receiver].valueReference = Reference(RoleORderfiller)
* extension[copyReceiver].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[copyReceiver].valueReference = Reference(PatSUfferer)
* status = #final
* type = urn:oid:2.16.756.5.30.1.127.3.4#2161000195103 "Imaging order (record artifact)"
* category = SCT#721963009 "Order (record artifact)"
* subject = Reference(PatSUfferer)
* date = "2019-04-01T20:18:41.341+00:00"
* author = Reference(RoleORderplacer)
* section[orderReferral].title = "Order-Referral"
* section[orderReferral].code = LNC#93037-0 "Portable medical order form"
* section[orderReferral].entry[Questionnaire] = Reference(QuestionnaireRadiologyOrder)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(QuestionnaireResponseRadiologyOrderSecondOpinion)
* section[orderReferral].entry[ServiceRequest] = Reference(ServiceRequestRadiologyOrder)
*/

Instance: DocumentRadiologyOrder // Noch nicht vollständig
InstanceOf: ChRadOrderDocument
Title: "Bundle Radiology Order"
Description: "Example of Bundle"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f7"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"
* entry[+].fullUrl = "http://example.com/fhir/Composition/CompositionRadiologyOrderImagingRequest"
* entry[=].resource = CompositionRadiologyOrderImagingRequest
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/QuestionnaireRadiologyOrder"
* entry[=].resource = QuestionnaireRadiologyOrder
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/QuestionnaireResponseRadiologyOrderImagingRequest"
* entry[=].resource = QuestionnaireResponseRadiologyOrderImagingRequest
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/ServiceRequestRadiologyOrder"
* entry[=].resource = ServiceRequestRadiologyOrder
//------------- Patient and Copy Receiver -------------
* entry[+].fullUrl = "http://example.com/fhir/Patient/PatSUfferer"
* entry[=].resource = PatSUfferer
//------------- Data Enterer -------------
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/RoleDAtaenterer"
* entry[=].resource = RoleDAtaenterer
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PractDAtaenterer"
* entry[=].resource = PractDAtaenterer
//------------- Author -------------
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/RoleORderplacer"
* entry[=].resource = RoleORderplacer
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PractORderplacer"
* entry[=].resource = PractORderplacer
//------------- Receiver -------------
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/RoleORderfiller"
* entry[=].resource = RoleORderfiller
//------------- Organizations -------------
* entry[+].fullUrl = "http://example.com/fhir/Organization/OrgHappyDoctors"
* entry[=].resource = OrgHappyDoctors
* entry[+].fullUrl = "http://example.com/fhir/Organization/OrgRadHappyHospital"
* entry[=].resource = OrgRadHappyHospital
//------------- desiredRadiologist -------------
//* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/RoleORderfiller"
//* entry[=].resource = RoleORderfiller
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PractORderfiller"
* entry[=].resource = PractORderfiller
//------------- more -------------
* entry[+].fullUrl = "http://example.com/fhir/Condition/PrimaryDiagnosis"
* entry[=].resource = PrimaryDiagnosis
* entry[+].fullUrl = "http://example.com/fhir/Observation/BodyHeight"
* entry[=].resource = BodyHeight
* entry[+].fullUrl = "http://example.com/fhir/Observation/BodyWeight"
* entry[=].resource = BodyWeight
* entry[+].fullUrl = "http://example.com/fhir/Condition/SecondaryDiagnosis1"
* entry[=].resource = SecondaryDiagnosis1
* entry[+].fullUrl = "http://example.com/fhir/Condition/SecondaryDiagnosis2"
* entry[=].resource = SecondaryDiagnosis2
* entry[+].fullUrl = "http://example.com/fhir/Coverage/CoverageKVG"
* entry[=].resource = CoverageKVG
//
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatBloodCoagulation"
* entry[=].resource = CaveatBloodCoagulation
* entry[+].fullUrl = "http://example.com/fhir/Observation/CaveatBloodCoagulationINR"
* entry[=].resource = CaveatBloodCoagulationINR
* entry[+].fullUrl = "http://example.com/fhir/Observation/CaveatBloodCoagulationPlatelets"
* entry[=].resource = CaveatBloodCoagulationPlatelets
//
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatBodyPiercing"
* entry[=].resource = CaveatBodyPiercing
//
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatRenalInsufficiency"
* entry[=].resource = CaveatRenalInsufficiency
* entry[+].fullUrl = "http://example.com/fhir/Observation/CaveatRenalInsufficiencyCreatinineClearance"
* entry[=].resource = CaveatRenalInsufficiencyCreatinineClearance
* entry[+].fullUrl = "http://example.com/fhir/Observation/CaveatRenalInsufficiencyCreatinine"
* entry[=].resource = CaveatRenalInsufficiencyCreatinine
//
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatDrugPrescriptionMetformin"
* entry[=].resource = CaveatDrugPrescriptionMetformin
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatDeviceCardiacPacemaker"
* entry[=].resource = CaveatDeviceCardiacPacemaker
//
* entry[+].fullUrl = "http://example.com/fhir/ImagingStudy/DicomSopInstanceConformant"
* entry[=].resource = DicomSopInstanceConformant

//* entry[+].fullUrl = "http://example.com/fhir/DocumentReference/DocumentReferenceDicomSopInstanceConformant"
//* entry[=].resource = DocumentReferenceDicomSopInstanceConformant

* entry[+].fullUrl = "http://example.com/fhir/DocumentReference/DocumentReferenceNonDicom"
* entry[=].resource = DocumentReferenceNonDicom


//------------- Patient -------------
Instance: PatSUfferer
InstanceOf: ChCorePatient
Title: "Susanna Ufferer"
Description: "Example of Patient"
* name[+].use = #official
* name[=].family[+] = "Ufferer"
* name[=].family[=].extension[ech11name].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family[=].extension[ech11name].valueCode = #officialName

* name[=].given[+] = "Susanna"
* name[=].given[=].extension[ech11firstname].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname"
* name[=].given[=].extension[ech11firstname].valueCode = #officialFirstName

* name[+].use = #maiden
* name[=].family[+] = "Leidend"
* name[=].family[=].extension[ech11name].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family[=].extension[ech11name].valueCode = #originalName

* telecom[0].system = #phone
* telecom[0].value = "+41 79 979 79 79"
* telecom[1].system = #email
* telecom[1].value = "susanna@ufferer.ch"
* gender = #female 
* birthDate = "1945-03-14"
* address.use = #home
* address.line[0] = "Musterweg"
* address.line[1] = "6a"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"


/*------------- Copy Receiver -------------
Instance: PatSUfferer
InstanceOf: ChCorePatient
Title: "Susanna Ufferer Copy Receiver"
Description: "Example of Patient"
* name.family = "Ufferer"
* name.given = "Susanna"
* telecom[0].system = #phone
* telecom[0].value = "+41 79 979 79 79"
* telecom[1].system = #email
* telecom[1].value = "susanna@ufferer.ch"
* address.use = #home
* address.line = "Musterweg 6a"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"
*/

//------------- Data Enterer -------------
Instance: RoleDAtaenterer
InstanceOf: ChCorePractitionerRole
Title: "Doris Ataenterer (Role)"
Description: "Example of PractionerRole"
* practitioner = Reference(PractDAtaenterer)
* organization = Reference(OrgHappyDoctors)


Instance: PractDAtaenterer
InstanceOf: ChCorePractitioner
Title: "Doris Ataenterer"
Description: "Example of Practitioner"
* name.family = "Ataenterer"
* name.given = "Doris"
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[1].system = #email
* telecom[1].value = "d.ataenterer@happydoctors.ch"


//------------- Author -------------
Instance: RoleORderplacer
InstanceOf: ChCorePractitionerRole
Title: "Ottilie Rderplacer (Role)"
Description: "Example of PractionerRole"
* practitioner = Reference(PractORderplacer)
* organization = Reference(OrgHappyDoctors)


Instance: PractORderplacer
InstanceOf: ChCorePractitioner
Title: "Ottilie Rderplacer"
Description: "Example of Practitioner"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000034321"
* name.use = #official
* name.family = "Rderplacer"
* name.given = "Ottilie"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[1].system = #email
* telecom[1].value = "o.rderplacer@happydoctors.ch"

Instance: PractORderplacerJunior
InstanceOf: ChCorePractitioner
Title: "Olga Rderplacer-Junior"
Description: "Example of Practitioner"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000034321"
* name.use = #official
* name.family = "Rderplacer-Junior"
* name.given = "Olga"
* name.prefix = "Med. pract."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 32 444 55 11"
* telecom[1].system = #email
* telecom[1].value = "o.rderplacer-junior@smallhospital.ch"

Instance: RoleORderplacerJunior
InstanceOf: ChCorePractitionerRole
Title: "Olga Rderplacer-Junior (Role)"
Description: "Example of PractionerRole"
* practitioner = Reference(PractORderplacerJunior)
* organization = Reference(OrgSmallHospital)


Instance: PractKNowit-All
InstanceOf: ChCorePractitioner
Title: "Kurt Nowit-All"
Description: "Example of Practitioner"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000034321"
* name.use = #official
* name.family = "Nowit-All"
* name.given = "Kurt"
* name.prefix = "Prof. Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 412 00 98"
* telecom[1].system = #email
* telecom[1].value = "s.nowit-all@OrthoHappyHospital.ch"


Instance: RoleKNowit-All
InstanceOf: ChCorePractitionerRole
Title: "Kurt NowIt-All (Role)"
Description: "Example of PractionerRole"
* practitioner = Reference(PractKNowit-All)
* organization = Reference(OrgRadHappyHospital)

/*------------- Receiver -------------
Instance: RoleORderfiller
InstanceOf: ChCorePractitionerRole
Title: "RadiologyDepartment (Role)"
Description: "Example of PractionerRole"
* organization = Reference(OrgRadHappyHospital)
*/

//------------- Organizations -------------
Instance: OrgHappyDoctors
InstanceOf: ChCoreOrganization
Title: "Gemeinschaftspraxis Happy Doctors"
Description: "Example of Organization"
* name = "Praxis Happy Doctors"
* address.line[+] = "Happystrasse 14"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"


Instance: OrgRadHappyHospital
InstanceOf: ChCoreOrganization
Title: "Radiologie Klinik Happy Hospital"
Description: "Example of Organization"
* name = "Radiologie Klinik Happy Hospital"
* address.line[0] = "Kantonsstrasse 133"
* address.line[1] = "Haus C"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz" 


Instance: OrgSmallHospital
InstanceOf: ChCoreOrganization
Title: "Spital Small Hospital"
Description: "Example of Organization"
* name = "Spital Small Hospital"
* address.line[0] = "Hausmatten"
//* address.line[1] = ""
* address.city = "Kammersrohr"
* address.postalCode = "4535"
* address.country = "Schweiz" 


Instance: RoleORderfiller
InstanceOf: ChCorePractitionerRole
Title: "Otto Rderfiller (Role)"
Description: "Example of PractionerRole"
* practitioner = Reference(PractORderfiller)
* organization = Reference(OrgRadHappyHospital)

Instance: PractORderfiller
InstanceOf: ChCorePractitioner
Title: "Otto Rderfiller"
Description: "Example of Practitioner"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000066878"
* name.use = #official
* name.family = "Rderfiller"
* name.given = "Otto"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 412 00 99"
* telecom[1].system = #email
* telecom[1].value = "o.rderfiller@OrgRadHappyHospital.ch"


//------------- diagnosisList -------------
Instance: PrimaryDiagnosis
InstanceOf: ChRadOrderDiagnosisCondition
Title: "Primary Diagnosis"
Description: "Example of Diagnosis Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code.text = "Primary Diagnosis"
* clinicalStatus = ClinicalStatus#active
* subject = Reference(PatSUfferer)


Instance: BodyHeight
InstanceOf: ChRadOrderBodyHeightObservation
Title: "Body Height 176 cm"
Description: "Example of Body Height Observation"
* status = #final
* category = ObservationCategory#vital-signs
* code = LNC#8302-2 "Body height" // "Body Height, method unspecified"
* subject = Reference(PatSUfferer)
* effectiveDateTime = "2019-04-01T10:10:00.000+00:00"
* valueQuantity = 176 'cm' "cm"


Instance: BodyWeight
InstanceOf: ChRadOrderBodyWeightObservation
Title: "Body Weight 99 kg"
Description: "Example of Body Weight Observation"
* status = #final
* category = ObservationCategory#vital-signs
* code = LNC#29463-7 "Body weight" // "Body Weight, method unspecified"
* subject = Reference(PatSUfferer)
* effectiveDateTime = "2019-04-01T10:10:00.000+00:00"
* valueQuantity = 99 'kg' "kg"


Instance: SecondaryDiagnosis1
InstanceOf: ChRadOrderDiagnosisCondition
Title: "Secondary Diagnosis 1"
Description: "Example of Diagnosis Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code.text = "Secondary Diagnosis 1"
* clinicalStatus = ClinicalStatus#active
* subject = Reference(PatSUfferer)


Instance: SecondaryDiagnosis2
InstanceOf: ChRadOrderDiagnosisCondition
Title: "Secondary Diagnosis 2"
Description: "Example of Diagnosis Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code.text = "Secondary Diagnosis 2"
* clinicalStatus = ClinicalStatus#active
* subject = Reference(PatSUfferer)


//------------- coverage -------------
Instance: CoverageKVG
InstanceOf: ChOrfCoverage
Title: "Coverage KVG"
Description: "Example of Coverage"
* contained[+] = OrgSanitas
* identifier[+].type = CSCoverageIdentifierType#VeKa
* identifier[=].value = "80756015090002647590"
* status = #active
* type = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-25-mainguarantor#1 "Krankenversicherung (obligat.)"
* beneficiary = Reference(PatSUfferer)
* payor = Reference(OrgSanitas)


Instance: OrgSanitas
InstanceOf: ChCoreOrganization
Title: "OrgSanitas"
Description: "Example of Organization"
Usage: #inline
* name = "OrgSanitas"


//------------- caveats -------------
Instance: CaveatBloodCoagulation
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Blood Coagulation"
Description: "Example of Caveat Condition"
* extension[caveatType].valueCoding = SCT#64779008 "Blood coagulation disorder (disorder)"
* extension[qualifierValue].valueCoding = SCT#52101004 "Present (qualifier value)"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code = SCT#64779008 "Blood coagulation disorder (disorder)"
* clinicalStatus = ClinicalStatus#active
* subject = Reference(PatSUfferer)
* evidence[+].detail = Reference(CaveatBloodCoagulationINR)
* evidence[+].detail = Reference(CaveatBloodCoagulationPlatelets)


Instance: CaveatBloodCoagulationINR
InstanceOf: ChRadOrderINRObservation
Title: "Caveat Blood Coagulation INR"
Description: "Example of INR Observation"
* status = #final
* code = LNC#34714-6 "INR in Blood by Coagulation assay"
* subject = Reference(PatSUfferer)
* effectiveDateTime = "2019-04-01T10:10:00.000+00:00"
* valueQuantity = 2.3 '{INR}' "INR"


Instance: CaveatBloodCoagulationPlatelets
InstanceOf: ChRadOrderPlateletsObservation
Title: "Caveat Blood Coagulation Platelets"
Description: "Example of Platelets Observation"
* status = #final
* code = LNC#26515-7 "Platelets [#/volume] in Blood"
* subject = Reference(PatSUfferer)
* effectiveDateTime = "2019-04-01T10:10:00.000+00:00"
* valueQuantity = 150000 '10*9/uL' "10^9/L"


Instance: CaveatBodyPiercing
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Body Piercing"
Description: "Example of Caveat Condition"
* extension[caveatType].valueCoding = SCT#879862001 "Body piercing (finding)"
* category = ConditionCategory#problem-list-item "Problem List Item"
* extension[qualifierValue].valueCoding = SCT#52101004 "Present (qualifier value)"
* code = SCT#879862001 "Body piercing (finding)"
* clinicalStatus = ClinicalStatus#active
* subject = Reference(PatSUfferer)


Instance: CaveatRenalInsufficiency
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Renal Insufficiency"
Description: "Example of Caveat Condition"
* extension[caveatType].valueCoding = SCT#723188008 "Renal insufficiency (disorder)"
* category = ConditionCategory#problem-list-item "Problem List Item"
* extension[qualifierValue].valueCoding = SCT#52101004 "Present (qualifier value)"
* code = SCT#723188008 "Renal insufficiency (disorder)"
* clinicalStatus = ClinicalStatus#active
* subject = Reference(PatSUfferer)
* evidence[+].detail = Reference(CaveatRenalInsufficiencyCreatinineClearance)
* evidence[+].detail = Reference(CaveatRenalInsufficiencyCreatinine)


Instance: CaveatRenalInsufficiencyCreatinine
InstanceOf: ChRadOrderCreatinineObservation
Title: "Caveat Renal Insufficiency Creatinine"
Description: "Example of Creatinine Observation"
* status = #final
* code = LNC#77140-2 "Creatinine [Moles/volume] in Serum, Plasma or Blood"
* subject = Reference(PatSUfferer)
* effectiveDateTime = "2019-04-01T10:10:00.000+00:00"
* valueQuantity = 90 'umol/L' "µmol/l"


Instance: CaveatRenalInsufficiencyCreatinineClearance
InstanceOf: ChRadOrderCreatinineClearanceObservation
Title: "Caveat Renal Insufficiency Creatinine Clearance"
Description: "Example of CreatinineClearance Observation"
* status = #final
* code = LNC#33558-8 "Creatinine renal clearance in Urine and Serum or Plasma collected for unspecified duration"
* subject = Reference(PatSUfferer)
* effectiveDateTime = "2019-04-01T10:10:00.000+00:00"
* valueQuantity = 55 'mL/min' "ml/min"


Instance: CaveatDrugPrescriptionMetformin
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Drug Prescription Metformin"
Description: "Example of Caveat Condition"
* extension[caveatType].valueCoding = SCT#1290126002 "Drug therapy with explicit context (situation)"
* category = ConditionCategory#problem-list-item "Problem List Item"
* extension[qualifierValue].valueCoding = SCT#52101004 "Present (qualifier value)"
* code = SCT#372567009 "Metformin (substance)"
* clinicalStatus = ClinicalStatus#active
* subject = Reference(PatSUfferer)


Instance: CaveatDeviceCardiacPacemaker
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Device Cardiac Pacemaker"
Description: "Example of Caveat Condition"
* extension[caveatType].valueCoding = SCT#397578001 "Device in situ (finding)"
* category = ConditionCategory#problem-list-item "Problem List Item"
* extension[qualifierValue].valueCoding = SCT#52101004 "Present (qualifier value)"
* code = SCT#441509002 "Cardiac pacemaker in situ"
* clinicalStatus = ClinicalStatus#active
* subject = Reference(PatSUfferer)

//-------------  Time and Location -------------
Instance: AppointmentRadiography
InstanceOf: ChOrfAppointment
Title: "Appointment Radiography"
Description: "Example of Appointment"
// * identifier.system = "http://example.com/identifierdomain"
// * identifier.value = "384209.38"
* status = #proposed
* patientInstruction = "Wunschtermin der Patientin"
* participant[+].actor = Reference(LocationRadiography)
* participant[=].status = #tentative
* requestedPeriod[+].start = "2019-04-01T15:00:00.000+00:00"
* requestedPeriod[=].end = "2019-04-01T15:30:00.000+00:00"


Instance: LocationRadiography
InstanceOf: ChOrfLocation
Title: "Location Radiography"
Description: "Example of Location"
* name = "Radiologie Klinik Happy Hospital"
* telecom[0].system = #phone
* telecom[0].value = "+41 44 412 65 56"
* address.line[0] = "Kantonsstrasse 133"
* address.line[1] = "Haus C"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"

Instance: DocumentReferenceNonDicom
InstanceOf: ChOrfDocumentReference
Title: "Befund_Rx_Thorax_S_Ufferer_20190401"
Description: "Example of Document Reference for Attachment (e.g. pdf)"
* status = #current
* content.attachment.title = "Befund_Rx_Thorax_S_Ufferer_20190401.pdf"
* description = "Befund Thorax-Rx vom 1.2.23; Eyample of Non-DICOM Attachment"
* content.attachment.contentType = MimeType#application/pdf
* content.attachment.data = "VGVzdCBCZWZ1bmQgTm9uIERpY29t" // Encoded in base64

Instance: DicomSopInstanceConformant
InstanceOf: ChRadOrderImagingStudy
Title: "DICOM conformant SOP Instance"
Description: "Rx-Knie-S_Ufferer_05032024; Example of DICOM conformant SOP Instance (regarding Coding of Series-Modality)"
* status = #available
* subject = Reference(PatSUfferer)
* series.instance.uid = "2.16.124.113543.1154777499.30246.19789.3503430045.1.1"
* series.instance.sopClass = #1.2.840.10008.5.1.4.1.1.1
* series.modality = #DX
* series.uid = "2.16.124.113543.1154777499.30246.19789.3503430045.1"
* identifier[studyInstanceUid].value = "2.16.124.113543.1154777499.30246.19789.3503430045" //StudyInstanceUid 
* identifier[acsn].value = "2819497684894126" //ACSN

/*Instance: DocumentReferenceDicomSopInstanceConformant
InstanceOf: ChOrfDocumentReference
Title: "Rx-Knie-S_Ufferer_05032024"
Description: "Example of Previous Result"
* status = #current
* content.attachment.contentType = MimeType#application/dicom
* content.attachedFile = "VGhpcyBpcyBhbiBleGFtcGxl" // Encoded in base64
*/