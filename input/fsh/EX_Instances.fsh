Instance: ServiceRequestRadiologyOrder
InstanceOf: ChRadOrderServiceRequest
Title: "ServiceRequest Radiology Order"
Description: "Example for ServiceRequest"
* identifier[placerOrderIdentifier].system = "urn:oid:1.3.4.5.6.7"
* identifier[placerOrderIdentifier].value = "12345"
* status = #active
* intent = #order
* priority = #routine
* category = ChRadOrderRequestedService#ImagingRequest "Imaging Request"
* code.coding[RdlxModType] = RDLX#RID10345 "projection radiography"
* orderDetail[imagingRegion] = RDLX#RID1243 "Thorax"
* orderDetail[imagingRegion].extension[orderDetailType].valueCoding = ChRadOrderOrderDetailType#imagingRegion
* orderDetail[imagingFocus] = RDLX#RID2468 "Chest wall"
* orderDetail[imagingFocus].extension[orderDetailType].valueCoding = ChRadOrderOrderDetailType#imagingFocus
* subject = Reference(SUfferer)
* requester = Reference(ORderplacerHappyDoctors)
* performer = Reference(ORderfillerHappyHospital)
* reasonCode.text = "Diagnostic Question"
* insurance = Reference(CoverageKVG)
* supportingInfo[diagnosis][+] = Reference(Diagnosis1)
* supportingInfo[diagnosis][+] = Reference(Diagnosis2)
* supportingInfo[caveats][+] = Reference(CaveatBloodCoagulation)
* supportingInfo[caveats][+] = Reference(CaveatBodyPiercing)
* supportingInfo[caveats][+] = Reference(CaveatRenalInsufficiency)
* supportingInfo[caveats][+] = Reference(CaveatDrugPrescriptionMetformin)
* supportingInfo[caveats][+] = Reference(CaveatDrugPrescriptionOther)
* supportingInfo[caveats][+] = Reference(CaveatDeviceCardiacPacemaker)
* supportingInfo[previousImagingResults][+] = Reference(ImagingStudyRx)
* supportingInfo[patientConsents][+] = Reference(ConsentTreatment)
* supportingInfo[patientConsents][+] = Reference(ConsentPatientPrivacy)
// * bodySite = SCT#51185008 "Thoracic structure (body structure)"
// * note.text = "Note/Comments"
// * patientInstruction = "Patient instructions"


Instance: CompositionRadiologyOrder
InstanceOf: ChRadOrderComposition
Title: "Composition Radiology Order"
Description: "Example for Composition"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Radiology Order</div></div>"
* extension[dataEnterer].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[dataEnterer].extension[enterer].url = "enterer"
* extension[dataEnterer].extension[enterer].valueReference = Reference(DAtaentererHappyDoctors)
* extension[copyReceiver].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[copyReceiver].valueReference = Reference(SUffererCopyReceiver)
* status = #final
* type = SNOMEDCTSwissExtension#2161000195103 "Imaging order (record articact)"
* category = SCT#721963009 "Order (record artifact)"
* subject = Reference(SUfferer)
* date = "2019-04-01T20:18:41.341+00:00"
* author = Reference(ORderplacerHappyDoctors)
* title = "Radiology Order"
* section.entry[Questionnaire] = Reference(QuestionnaireRadiologyOrder)
* section.entry[QuestionnaireResponse] = Reference(QuestionnaireResponseRadiologyOrder)
* section.entry[ServiceRequest] = Reference(ServiceRequestRadiologyOrder)


Instance: DocumentRadiologyOrder // Noch nicht vollständig
InstanceOf: ChRadOrderDocument
Title: "Bundle Radiology Order"
Description: "Example for Bundle"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f7"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"
* entry[+].fullUrl = "http://example.com/fhir/Composition/CompositionRadiologyOrder"
* entry[=].resource = CompositionRadiologyOrder
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/QuestionnaireRadiologyOrder"
* entry[=].resource = QuestionnaireRadiologyOrder
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/QuestionnaireResponseRadiologyOrder"
* entry[=].resource = QuestionnaireResponseRadiologyOrder
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/ServiceRequestRadiologyOrder"
* entry[=].resource = ServiceRequestRadiologyOrder
//------------- Patient and Copy Receiver -------------
* entry[+].fullUrl = "http://example.com/fhir/Patient/SUfferer"
* entry[=].resource = SUfferer
* entry[+].fullUrl = "http://example.com/fhir/Patient/SUffererCopyReceiver"
* entry[=].resource = SUffererCopyReceiver
//------------- Data Enterer -------------
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/DAtaentererHappyDoctors"
* entry[=].resource = DAtaentererHappyDoctors
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/DAtaenterer"
* entry[=].resource = DAtaenterer
//------------- Author -------------
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/ORderplacerHappyDoctors"
* entry[=].resource = ORderplacerHappyDoctors
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/ORderplacer"
* entry[=].resource = ORderplacer
//------------- Receiver -------------
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/ORderfillerHappyHospital"
* entry[=].resource = ORderfillerHappyHospital
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/ORderfiller"
* entry[=].resource = ORderfiller
//------------- Organizations -------------
* entry[+].fullUrl = "http://example.com/fhir/Organization/HappyDoctors"
* entry[=].resource = HappyDoctors
* entry[+].fullUrl = "http://example.com/fhir/Organization/HappyHospital"
* entry[=].resource = HappyHospital
//------------- more -------------
* entry[+].fullUrl = "http://example.com/fhir/Condition/Diagnosis1"
* entry[=].resource = Diagnosis1
* entry[+].fullUrl = "http://example.com/fhir/Condition/Diagnosis2"
* entry[=].resource = Diagnosis2
* entry[+].fullUrl = "http://example.com/fhir/Coverage/CoverageKVG"
* entry[=].resource = CoverageKVG
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatBloodCoagulation"
* entry[=].resource = CaveatBloodCoagulation
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatBodyPiercing"
* entry[=].resource = CaveatBodyPiercing
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatRenalInsufficiency"
* entry[=].resource = CaveatRenalInsufficiency
* entry[+].fullUrl = "http://example.com/fhir/Observation/CaveatRenalInsufficiencyCreatinine"
* entry[=].resource = CaveatRenalInsufficiencyCreatinine
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatDrugPrescriptionMetformin"
* entry[=].resource = CaveatDrugPrescriptionMetformin
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatDrugPrescriptionOther"
* entry[=].resource = CaveatDrugPrescriptionOther
* entry[+].fullUrl = "http://example.com/fhir/Condition/CaveatDeviceCardiacPacemaker"
* entry[=].resource = CaveatDeviceCardiacPacemaker
* entry[+].fullUrl = "http://example.com/fhir/Consent/ConsentTreatment"
* entry[=].resource = ConsentTreatment
* entry[+].fullUrl = "http://example.com/fhir/Consent/ConsentPatientPrivacy"
* entry[=].resource = ConsentPatientPrivacy
* entry[+].fullUrl = "http://example.com/fhir/ImagingStudy/ImagingStudyRx"
* entry[=].resource = ImagingStudyRx


Instance: ORderplacer
InstanceOf: ChCorePractitioner
Title: "Ottilie Rderplacer"
Description: "Example for Practitioner"
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


Instance: ORderplacerHappyDoctors
InstanceOf: ChCorePractitionerRole
Title: "Ottilie Rderplacer @ Happy Doctors"
Description: "Example for PractionerRole"
* practitioner = Reference(ORderplacer)
* organization = Reference(HappyDoctors)


Instance: DAtaenterer
InstanceOf: ChCorePractitioner
Title: "Doris Ataenterer"
Description: "Example for Practitioner"
* name.family = "Ataenterer"
* name.given = "Doris"
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[1].system = #email
* telecom[1].value = "d.ataenterer@happydoctors.ch"


Instance: DAtaentererHappyDoctors
InstanceOf: ChCorePractitionerRole
Title: "Doris Ataenterer @ Happy Doctors"
Description: "Example for PractionerRole"
* practitioner = Reference(DAtaenterer)
* organization = Reference(HappyDoctors)


Instance: HappyDoctors
InstanceOf: ChCoreOrganization
Title: "Praxis Happy Doctors"
Description: "Example for Organization"
* name = "Praxis Happy Docotors"
* address.line[0] = "Kantonsstrasse 14"
* address.line[1] = "Postfach 14"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"


Instance: ORderfiller
InstanceOf: ChCorePractitioner
Title: "Otto Rderfiller"
Description: "Example for Practitioner"
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
* telecom[1].value = "o.rderfiller@happyhospital.ch"


Instance: ORderfillerHappyHospital
InstanceOf: ChCorePractitionerRole
Title: "Otto Rderfiller @ Happy Hospital"
Description: "Example for PractionerRole"
* practitioner = Reference(ORderfiller)
* organization = Reference(HappyHospital)


Instance: HappyHospital
InstanceOf: ChCoreOrganization
Title: "Klinik Happy Hospital"
Description: "Example for Organization"
* name = "Klinik Happy Hospital"
* address.line[0] = "Seestrasse 133"
* address.line[1] = "Haus C"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz" 


Instance: SUfferer
InstanceOf: ChCorePatient
Title: "Susanna Ufferer"
Description: "Example for Patient"
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
* birthDate = "1970-03-14"
* address.use = #home
* address.line[0] = "Musterweg"
* address.line[1] = "6a"
* address.city = "Zürich"
* address.postalCode = "8000"
* address.country = "Schweiz"


Instance: SUffererCopyReceiver
InstanceOf: ChCorePatient
Title: "Susanna Ufferer Copy Receiver"
Description: "Example for Patient"
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


Instance: Diagnosis1
InstanceOf: ChRadOrderDiagnosisCondition
Title: "Diagnosis 1"
Description: "Example for Diagnosis Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code.text = "Diagnosis 1"
* subject = Reference(SUfferer)


Instance: Diagnosis2
InstanceOf: ChRadOrderDiagnosisCondition
Title: "Diagnosis 2"
Description: "Example for Diagnosis Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code.text = "Diagnosis 2"
* subject = Reference(SUfferer)


Instance: CoverageKVG
InstanceOf: ChOrfCoverage
Title: "Coverage KVG"
Description: "Example for Coverage"
* contained[+] = Sanitas
* status = #active
* type = CSCoverageType#DisorderKVG "According to KVG"
* beneficiary = Reference(SUfferer)
* payor = Reference(Sanitas)

Instance: Sanitas
InstanceOf: ChCoreOrganization
Title: "Sanitas"
Description: "Example for Organization"
Usage: #inline
* name = "Sanitas"


Instance: CaveatBloodCoagulation
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Blood Coagulation"
Description: "Example for Caveat Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code = SCT#64779008 "Blood coagulation disorder (disorder)"
* subject = Reference(SUfferer)


Instance: CaveatBodyPiercing
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Body Piercing"
Description: "Example for Caveat Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code = SCT#879862001 "Body piercing (finding)"
* subject = Reference(SUfferer)


Instance: CaveatRenalInsufficiency
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Renal Insufficiency"
Description: "Example for Caveat Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code = SCT#723188008 "Renal insufficiency (disorder)"
* subject = Reference(SUfferer)
* evidence.detail = Reference(CaveatRenalInsufficiencyCreatinine)


Instance: CaveatRenalInsufficiencyCreatinine
InstanceOf: ChRadOrderCaveatObservation
Title: "Caveat Renal Insufficiency Creatinine"
Description: "Example for Caveat Observation"
* status = #final
* code = SCT#723188008 "Renal insufficiency (disorder)" // TBD: Codes für Kreatinin- & Kreatinin-Clearance-Observation
* subject = Reference(SUfferer)
* effectiveDateTime = "2019-04-01T10:10:00.000+00:00"
* valueQuantity = 122 'umol/L'


Instance: CaveatDrugPrescriptionMetformin
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Drug Prescription Metformin"
Description: "Example for Caveat Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code = SCT#182817000 "Drug prescription (situation)"
* subject = Reference(SUfferer)
* note.text = "Metformin"


Instance: CaveatDrugPrescriptionOther
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Drug Prescription Other"
Description: "Example for Caveat Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code = SCT#182817000 "Drug prescription (situation)"
* subject = Reference(SUfferer)
* note.text = "Anderes Medikament"


Instance: CaveatDeviceCardiacPacemaker
InstanceOf: ChRadOrderCaveatCondition
Title: "Caveat Device Cardiac Pacemaker"
Description: "Example for Caveat Condition"
* category = ConditionCategory#problem-list-item "Problem List Item"
* code = SCT#397578001  "Device in situ (finding)"
* subject = Reference(SUfferer)
* note.text = "Herzschrittmacher"


Instance: ConsentTreatment
InstanceOf: ChOrfConsent
Title: "Consent Treatment"
Description: "Example for Consent"
* status = #active
* scope = ConsentScope#treatment "Treatment"
* category = LNC#59284-0 "Consent"
* patient = Reference(SUfferer)
* policyRule = v3ActCode#OPTIN      // this is opt-in - e.g. everything approved unless otherwise stated


Instance: ConsentPatientPrivacy
InstanceOf: ChOrfConsent
Title: "Consent Patient Privacy"
Description: "Example for Consent"
* status = #active
* scope = ConsentScope#patient-privacy "Privacy Consent"
* category = LNC#59284-0 "Consent"
* patient = Reference(SUfferer)
* policyRule = v3ActCode#OPTIN      // this is opt-in - e.g. everything approved unless otherwise stated


Instance: ImagingStudyRx
InstanceOf: ChRadOrderImagingStudy
Title: "ImagingStudy Previous Rx"
Description: "Example for Imaging Study"
* status = #available
* subject = Reference(SUfferer)
/* TBD (MS elements)
* series.uid = 
* series.modality = 
* series.performer.actor =
* series.instance.uid =
* series.instance.sopClass
*/
