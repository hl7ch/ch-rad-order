### Referral for Imaging

Players:

* Order placed by: [Dr O. Rderplacer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacer.html), general practitioner at [Happy Doctors group practice](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgHappyDoctors.html).
* Recipient of the order: [Dr O. Rderfiller](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderfiller.html), radiologist at the [radiology department ‘Happy Hospital’](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgRadHappyHospital.html)
* Patient: [Mrs S. Ufferer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Patient-PatSUfferer.html), who requires a radiological examination

The patient [Mrs S. Ufferer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Patient-PatSUfferer.html) has an appointment with [Dr O. Rderplacer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacer.html) at the [group practice ‘Happy Doctors’](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgHappyDoctors.html): [Dr O. Rderplacer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacer.html) agrees with the patient that a chest X-ray will be done in the [Radiology Department ‘Happy Hospital’](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgRadHappyHospital.html). [Dr O. Rderplacer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacer.html) writes an X-ray order containing all the necessary information and sends it to [Dr O. Rderfiller](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderfiller.html). For comparison, [Dr O. Rderplacer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacer.html) encloses images and reports from earlier. She also asks for a copy of the report to be sent to the patient.

Associated [Questionnaire Response](http://build.fhir.org/ig/hl7ch/ch-rad-order/QuestionnaireResponse-QuestionnaireResponseRadiologyOrderImagingRequest.html)


### Order for a radiological examination with intervention
Actors:

* Order placed by: [Dr O. Rderplacer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacer.html), general practitioner at the [group practice ‘Happy Doctors’](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgHappyDoctors.html).
* Recipient of the order: [Dr O. Rderfiller](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderfiller.html), radiologist at the [radiology department ‘Happy Hospital’](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgRadHappyHospital.html)
* Patient: [Mrs S. Ufferer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Patient-PatSUfferer.html), who requires radiological intervention

The patient [Mrs S. Ufferer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Patient-PatSUfferer.html) has pain in the buttock, thigh and calf muscles after walking approx. 100 m, and her toes are also discoloured blue. [Dr O. Rderplacer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacer.html) suggests an angiography for the patient, if necessary with subsequent balloon dilatation (PTA), and registers her with [Dr O. Rderfiller](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderfiller.html) for this.

Associated [Questionnaire Response](http://build.fhir.org/ig/hl7ch/ch-rad-order/QuestionnaireResponse-QuestionnaireResponseRadiologyOrderQuestionnaireResponseRadiologyOrderImagIntervent.html)


### Request for second Opinion
Players:

* Order placed by: [Dr. O. Rderplacer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacer.html), general practitioner in the [group practice “Happy Doctors”](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgHappyDoctors.html)
* Recipient of the order: [Prof. K. Nowit-All](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractKNowit-All.html), Chief Physician of the [Radiology Department “Happy Hospital”](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgRadHappyHospital.html)
* Patient: [Mrs. S. Ufferer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Patient-PatSUfferer.html), whose femoral neck fracture is being treated conservatively after a fall
  
 According to the radiology report, the impression fracture appears to be stable. Therefore, and in view of the patient's age, surgery was not performed. However, [Dr. O. Rderplacer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacer.html) is not sure whether this decision was correct and sends the images and the report to [Prof. K. Nowit-All](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractKNowit-All.html) for a second opinion.
 Associated [Questionnaire Response](http://build.fhir.org/ig/hl7ch/ch-rad-order/QuestionnaireResponse-QuestionnaireResponseRadiologyOrderSecondOpinion.html)
<i>
The second opinion described above must be distinguished from the real-time remote diagnosis and case visualisation offered by various teleradiology solutions. However, the latter requires a technical infrastructure that goes beyond what is discussed here.
External reporting

Associated [Questionnaire Response](http://build.fhir.org/ig/hl7ch/ch-rad-order/QuestionnaireResponse-QuestionnaireResponseRadiologyOrderSecondOpinion.html)

<i>The second opinion described above must be distinguished from the real-time remote diagnosis and case presentation offered by various teleradiology solutions. However, the latter require a technical infrastructure that goes beyond what is discussed here. <i>


### Request for remote Reporting

Players:

* Order placed by assistant physician: [Med.pract. O. Rderplacer-Junior](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacerJunior.html) at [Small Hospital](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgSmallHospital.html).
* Recipient of the order: [Dr. O. Rderfiller](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderfiller.html), radiologist at the [Radiology Department “Happy Hospital”](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgRadHappyHospital.html)
* Patient: [Mrs. S. Ufferer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Patient-PatSUfferer.html), who is visiting her niece. She suddenly has a fever, chills and a cough.
  
 [Med.pract. O. Rderplacer-Junior](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacerJunior.html) is on emergency duty. She orders a chest X-ray. The [Small Hospital](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgSmallHospital.html) has an X-ray machine, but a radiologist only comes on Tuesdays and Thursdays; on the other days of the week the images are examined by the radiologists at the Happy Hospital. [Med.pract. O. Rderplacer-Junior](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacerJunior.html) therefore sends the images to [Dr. O. Rderfiller](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderfiller.html) for diagnosis.

Associated [Questionnaire Response](http://build.fhir.org/ig/hl7ch/ch-rad-order/QuestionnaireResponse-QuestionnaireResponseRadiologyOrderRemoteReporting.html

<i>The second opinion described above must be distinguished from the real-time remote diagnosis and case presentation offered by various teleradiology solutions. However, the latter require a technical infrastructure that goes beyond what is discussed here. <i>


### Request for Results from earlier 

Players:

* Order placed by assistant doctor: [Med.pract. O. Rderplacer-Junior](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacerJunior.html), at [Small Hospital](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgSmallHospital.html).
* Recipient of the order: [Dr O. Rderfiller](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderfiller.html), radiologist at the [Radiology Department ‘Happy Hospital’](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgRadHappyHospital.html)
* Patient: [Mrs S. Ufferer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Patient-PatSUfferer.html), who had a radiological examination a year ago (on the orders of her former GP)

[Med.pract. O. Rderplacer-Junior](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacerJunior.html) asks the patient [Mrs S. Ufferer](http://build.fhir.org/ig/hl7ch/ch-rad-order/Patient-PatSUfferer.html) whether she has ever had a chest X-ray. She says that she was x-rayed a year ago in the [radiology department ‘Happy Hospital’](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgRadHappyHospital.html). [Med.pract. O. Rderplacer-Junior](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderplacerJunior.html) writes a request for the results of this examination and sends it to [Dr O. Rderfiller](http://build.fhir.org/ig/hl7ch/ch-rad-order/Practitioner-PractORderfiller.html), radiologist at the [Radiology Department ‘Happy Hospital’](http://build.fhir.org/ig/hl7ch/ch-rad-order/Organization-OrgRadHappyHospital.html). She also asks for a copy of the report to be sent to the patient.

Associated [Questionnaire Response](http://build.fhir.org/ig/hl7ch/ch-rad-order/QuestionnaireResponse-QuestionnaireResponseRadiologyOrderRequestPrevious.html)