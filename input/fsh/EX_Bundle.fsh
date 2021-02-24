Instance: DocumentRadiologyOrder
InstanceOf: ChOrfDocument
Title: "Bundle Radiology Order"
Description: "Example for Bundle"
* type = #document
* identifier.system = "http://test.fhir.ch/id/uuid"
* identifier.value = "26d3dff7-ab05-4737-a49c-5eccd33595f7"
* timestamp = "2019-04-01T20:18:41.341+00:00"
* entry[0].fullUrl = "http://example.com/fhir/Composition/CompositionRadiologyOrder"
* entry[0].resource = CompositionRadiologyOrder
* entry[1].fullUrl = "http://example.com/fhir/Questionnaire/QuestionnaireRadiologyOrder"
* entry[1].resource = QuestionnaireRadiologyOrder
* entry[2].fullUrl = "http://example.com/fhir/QuestionnaireResponse/QuestionnaireResponseRadiologyOrder"
* entry[2].resource = QuestionnaireResponseRadiologyOrder
* entry[3].fullUrl = "http://example.com/fhir/ServiceRequest/ServiceRequestRadiologyOrder"
* entry[3].resource = ServiceRequestRadiologyOrder
* entry[4].fullUrl = "http://example.com/fhir/Patient/ErikaMusterfrau"
* entry[4].resource = ErikaMusterfrau
* entry[5].fullUrl = "http://example.com/fhir/PractitionerRole/SabineMeierPraxisSeeblick"
* entry[5].resource = SabineMeierPraxisSeeblick
* entry[6].fullUrl = "http://example.com/fhir/Practitioner/SabineMeier"
* entry[6].resource = SabineMeier
* entry[7].fullUrl = "http://example.com/fhir/Organization/PraxisSeeblick"
* entry[7].resource = PraxisSeeblick