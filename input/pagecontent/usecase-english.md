TBD

### Radiology Order
The players are:

* Order placer: Health professional Dr. O. Rderplacer who is a GP in group practice “Happy Doctors”
* Order filler: Radiology department of “Happy Hospital”
* Patient: Mrs. S. Ufferer who needs a radiological exam

Patient S. Ufferer has an appointment with Dr. O. Rderplacer in group practice "Happy Doctors": Dr. O. Rderplacer agrees with the patient that a chest x-ray is necessary which will be made at the x-ray department of “Happy Hospital”. Dr. O. Rderplacer writes a radiology order, which contains all necessary information and sends it to the radiology department of “Happy Hospital”. For comparison purposes, Dr. O. Rderplacer attaches images and reports made earlier. He furhter aks for a copy of the report to be sent to the patient.

* **Radiology Order:** [XML](Bundle-DocumentRadiologyOrder.xml.html), [JSON](Bundle-DocumentRadiologyOrder.json.html)

### Second Opinion
The players are:

* Order placer: Health professional Dr. O. Rderplacer who is a GP in group practice “Happy Doctors”
* Order filler: Dr. S. Urgeon, Orthopedic Surgeon at “Happy Hospital”
* Patient: Mrs. S. Ufferer who lives in an elderly home. She felt after leaving the bed.

Dr. O. Rderplacer ordered a ct scan of the hip. The images show an impression fracture of the right thighbone. According to the radiology report, the impression fracture seems to be stable. Taking into account the age of the patient, a surgical intervention does not seem to be necessary. However, Dr. O. Rderplacer is not shure, if this decision is right and he sends images and report to a orthopedic surgean for a second oppinion.

<i>The second opinion as described above has to be distinguished from real-time remote reporting and case presentation such as provided by various teleradiology solutions. The latter requires however a technical infrastructure which is beyond what is necessary for direc-tional communication such as discussed here. <i>

### Externe Befundung
- Todo


### Request for Results from earlier
The players are:

* Order placer: Health professional Dr. O. Rderplacer who is a GP in group practice “Happy Doctors”
* Order filler: Radiology department of “Happy Hospital”
* Patient: Mrs. S. Ufferer who had a radiological exam (following the order of his former family doctor) six months ago.

Patient S. Ufferer has an appointment with his new family doctor Dr. O. Rderplacer in group practice "Happy Doctors": Dr. O. Rderplacer asks he patient if he had once a chest x-ray. Patient S. Ufferer tells, that one had been made six months ago at the x-ray department of “Happy Hospital”. Dr. O. Rderplacer writes a request for the results of this exam and sends it to the radiology department of “Happy Hospital”. He furhter aks for a copy of the report to be sent to the patient.


### Providing in an Order Results from earlier
Results from earlier can be provided be means of attachments or - in case of DICOM - based on WADO. FHIR supports this with the ImagingStudy Resource which does not store DICOM instances and requires the use of a DICOM WADO-RS server or other storage mechanism.

CH RAD-Order supports this mechanism by allowing to include ImagingStudy Resources in the CH RAD-Order Document. The implementation of DICOM WADO-RS however requires prerequisites in terms of infrastructure and policies (e.g. access rights) which are not to be expected available by most stakeholders. 

For this reason, medical images can also be represented in a Media resource which allow a robust transfer of images across boundaries by means of attached inline data (base64ed). The Media resource is able to contain medical images in a DICOM format. 

CH RAD-Order does not give guidance about a DICOM WADO-RS setting neither is WADO-RS depicted in the questionnaire. 
