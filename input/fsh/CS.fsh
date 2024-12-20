// ServiceRequest.category
CodeSystem: ChRadOrderRequestedService
Id: ch-rad-order-requested-service
Title: "Requested Service"
Description: "Definition for Requested Service Code System in the context of CH RAD-Order."
* ^caseSensitive = true
* ^experimental = true
* #RequestForPreviousReport "Befundbericht früherer Untersuchung(en)"
* #RequestForPreviousReportAndImages "Bilder und Befundberichte früherer Untersuchung(en)"
* #ImagingRequest "Bildgebende Diagnostik"
* #RadIntervention "Interventionelle Radiologie"
* #SecondOpinion "Zweitmeinung"
* #ImagingRequestWithIntervention "Bildgebende Diagnostik und Intervention"
* #RemoteReporting "Fernbefundung"



// ServiceRequest.orderDetail.ch-rad-order-order-detail-type
CodeSystem: ChRadOrderOrderDetailType
Id: ch-rad-order-order-detail-type
Title: "Type of Order Detail"
Description: "Definition for Type of Order Detail Code System in the context of CH RAD-Order."
* ^caseSensitive = true
* ^experimental = true
* #imagingRegion "Imaging Region"
* #laterality "Laterality"
* #viewType "View Type"
* #maneuverType "Maneuver Type"
* #guidanceForAction "Guidance for Action"

/* CodeSystem: Cid33
Id: ch-rad-order-acquisition-modality
Title: "Modality that created the series"
Description: " Code System for the Type of equipment, or function or technique of that equipment, that created the data"
// Workaround because canonical for CID33 in DICOM does not work

* #BMD "Bone Mineral Densitometry"
* #EOG "Electrooculography"
* #SM "Slide Microscopy"
* #SR "Structured Report Document"
* #FID "Spatial Fiducials"
* #OP "Ophthalmic Photography"
* #OT "Other"
* #KO "Key Object Selection"
* #ECG "Electrocardiography"
* #GM "General Microscopy"
* #XA "X-Ray Angiography"
* #IOL "Intraocular Lens Calculation"
* #XC "External-camera Photography"
* #ASMT "Content Assessment Result"
* #DMS "Dermoscopy"
* #IVUS "Intravascular Ultrasound"
* #CR "Computed Radiography"
* #CT "Computed Tomography"
* #PA "Photoacoustic"
* #OSS "Optical Surface Scanner"
* #TG "Thermography"
* #REG "Registration"
* #LEN "Lensometry"
* #TEXTUREMAP "Texture Map"
* #RTDOSE "RT Dose"
* #OPTENF "Ophthalmic Tomography En Face"
* #HC "Hard Copy"
* #RTPLAN "RT Plan"
* #HD "Hemodynamic Waveform"
* #OCT "Optical Coherence Tomography"
* #BDUS "Ultrasound Bone Densitometry"
* #M3D "Model for 3D Manufacturing"
* #DG "Diaphanography"
* #PR "Presentation State"
* #PT "Positron emission tomography"
* #EPS "Cardiac Electrophysiology"
* #LS "Laser Scan"
* #PX "Panoramic X-Ray"
* #OPM "Ophthalmic Mapping"
* #OPTBSV "Ophthalmic Tomography B-scan Volume Analysis"
* #OPV "Ophthalmic Visual Field"
* #DX "Digital Radiography"
* #OPT "Ophthalmic Tomography"
* #DOC "Document"
* #RTRECORD "RT Treatment Record"
* #MG "Mammography"
* #US "Ultrasound"
* #EMG "Electromyography"
* #IVOCT "Intravascular Optical Coherence Tomography"
* #RTSTRUCT "RT Structure Set"
* #MR "Magnetic Resonance"
* #IO "Intra-oral Radiography"
* #EEG "Electroencephalography"
* #RTIMAGE "RT Image"
* #VA "Visual Acuity"
* #RESP "Respiratory Waveform"
* #ES "Endoscopy"
* #RWV "Real World Value Map"
* #AR "Autorefraction"
* #POS "Position Sensor"
* #SEG "Segmentation"
* #RG "Radiographic imaging"
* #RF "Radiofluoroscopy"
* #AU "Basic Voice Audio"
* #KER "Keratometry"
* #SMR "Stereometric Relationship"
* #CTPROTOCOL "CT Protocol"
* #STAIN "Automated Slide Stainer"
* #OAM "Ophthalmic Axial Measurements"
* #NM "Nuclear Medicine"
* #PLAN "Plan"
* #BI "Biomagnetic Imaging"
* #SRF "Subjective Refraction"
* #CFM "Confocal Microscopy"
*/

CodeSystem: ChRadOrderDicomUnknown
Id: ch-rad-order-dicom-unknown
Title: "Contains Code for UNKNOWN in dicom context"
Description: "Definition for UNKNOWN in the context CH RAD-Order in order to handle non conformant Dicom metadata."
* ^caseSensitive = true
* ^experimental = true
* #UNKNOWN // must be uppercase; no space allowed
