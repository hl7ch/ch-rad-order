Instance: ServiceRequestRadiologyOrder
InstanceOf: ChRadOrderServiceRequest
Title: "ServiceRequest Radiology Order"
Description: "Example for ServiceRequest"
* identifier[placerOrderIdentifier].value = "12345"
* status = #active
* intent = #original-order
* priority = #routine
* category = ChRadOrderRequestedService#ImagingRequest "Imaging Request"
* code.coding[RdlxModType] = RDLX#RID10311 "imaging modality"
* orderDetail[ImagingRegion] = RDLX#RID1243 "Thorax"
* orderDetail[ImagingFocus] = RDLX#RID2468 "Chest wall"
* subject = Reference(SUfferer)
* authoredOn = "2019-04-01T20:18:41.341+00:00"
* requester = Reference(ORderplacerHappyDoctors)
* performer = Reference(ORderfillerHappyHospital)
* locationReference = Reference(RadiologyDepartment)
* reasonCode.text = "Diagnostic Question"
* reasonReference[+] = Reference(Diagnosis1)
* reasonReference[+] = Reference(Diagnosis2)
* insurance = Reference(CoverageKVG)
* bodySite = SCT#51185008 "Thoracic structure (body structure)"
* note.text = "Note/Comments"
* patientInstruction = "Patient instructions"


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
* entry[+].fullUrl = "http://example.com/fhir/Location/RadiologyDepartment"
* entry[=].resource = RadiologyDepartment
* entry[+].fullUrl = "http://example.com/fhir/Condition/Diagnosis1"
* entry[=].resource = Diagnosis1
* entry[+].fullUrl = "http://example.com/fhir/Condition/Diagnosis2"
* entry[=].resource = Diagnosis2
* entry[+].fullUrl = "http://example.com/fhir/Coverage/CoverageKVG"
* entry[=].resource = CoverageKVG
// etc.


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


Instance: RadiologyDepartment
InstanceOf: ChCoreLocation
Title: "Radiology Department of Happy Hospital"
Description: "Example for Location"
* name = "Radiology Department of Happy Hospital"
* managingOrganization = Reference(HappyHospital)


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