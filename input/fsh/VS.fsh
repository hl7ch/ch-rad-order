// ServiceRequest.category (Q: requestedService.service)
ValueSet: ChRadOrderRequestedService
Id: ch-rad-order-requested-service
Title: "Requested Service"
Description: "Definition for Requested Service Value Set in the context of CH RAD-Order."
* include codes from system ChRadOrderRequestedService


// ServiceRequest.orderDetail.ch-rad-order-order-detail-type
ValueSet: ChRadOrderOrderDetailType
Id: ch-rad-order-order-detail-type
Title: "Type of Order Detail"
Description: "Definition for Type of Order Detail Value Set in the context of CH RAD-Order."
* include codes from system ChRadOrderOrderDetailType


// ServiceRequest.supportingInfo:caveats.ch-rad-order-caveat-type
ValueSet: ChRadOrderCaveatType
Id: ch-rad-order-caveat-type
Title: "Type of Caveat"
Description: "Definition for Type of Caveat Value Set in the context of CH RAD-Order."
* SCT#64779008 "Blood coagulation disorder (disorder)"
* SCT#723188008 "Renal insufficiency (disorder)"
* SCT#19887002 "Claustrophobia (finding)"
* SCT#879862001 "Body piercing (finding)"
* SCT#397578001 "Device in situ (finding)"
* SCT#34486009 "Hyperthyroidism (disorder)"
* SCT#73211009 "Diabetes mellitus (disorder)"
* SCT#366321006 "Finding of gravida (finding)"
* SCT#293637006 "Allergy to contrast media (finding)"
* SCT#182817000 "Drug prescription (situation)"


ValueSet: ChRadOrderQualifierValue
Id: ch-rad-order-caveat-qualifier-value
Title: "Qualifier Value"
Description: "Qualifier values in the context of CH RAD-Order."
* SCT#2667000 "Absent (qualifier value)"
* SCT#52101004 "Present (qualifier value)"
* SCT#373068000 "Undetermined (qualifier value)"



// Condition.code
ValueSet: ChRadOrderCaveatCondition
Id: ch-rad-order-caveat-condition
Title: "Caveat Condition"
Description: "Definition for Caveat Condition Value Set in the context of CH RAD-Order."
* SCT#64779008 "Blood coagulation disorder (disorder)"
* SCT#723188008 "Renal insufficiency (disorder)"
* SCT#19887002 "Claustrophobia (finding)"
* SCT#879862001 "Body piercing (finding)"
// * SCT#397578001 "Device in situ (finding)"
* SCT#34486009 "Hyperthyroidism (disorder)"
* SCT#73211009 "Diabetes mellitus (disorder)"
* SCT#366321006 "Finding of gravida (finding)"
* SCT#293637006 "Allergy to contrast media (finding)"
* include codes from system SCT where concept is-a #397578001 "Device in situ (finding)"
//Metformin and B-Blocker may be replaced with postcoordinated expression
* SCT#372567009 "Metformin (substance)"
* SCT#373254001 "Substance with beta adrenergic receptor antagonist mechanism of action (substance)"


// (Q: caveat.device)
ValueSet: ChRadOrderCaveatDevice
Id: ch-rad-order-caveat-device
Title: "Caveat Device"
Description: "Definition for Caveat Device Value Set in the context of CH RAD-Order."
* include codes from system SCT where concept is-a #397578001 "Device in situ (finding)"


// Diagnostic Question in free text: Coding of all diagnostic questions will be defined later.
/*
ValueSet: ChRadOrderReasonForExam
Id: ch-rad-order-reason-for-exam
Title: "Reason for Exam"
Description: "Definition for Reason for Exam Value Set in the context of CH RAD-Order."
* RDLX#RID28808 "CALCIUM SCORE"
* RDLX#RID4843 "Fistula"
* RDLX#RID35772 "PELVIMETRY"
* RDLX#RID4825 "EMBOLISM"
* RDLX#RID28817 "Screening"
* RDLX#RID49867 "leg measurement"
* RDLX#RID36017 "3D image processing"
* RDLX#RID28665 "reconstruction"
* RDLX#RID35738 "Congenital disorder"
* RDLX#RID5231 "Metastasis"
* RDLX#RID3957 "neoplasm"
* RDLX#RID49946 "low-grade tumor"
* RDLX#RID49947 "high-grade tumor"
* RDLX#RID49948 "new-diagnosis tumor"
* RDLX#RID50387 "Motor function"
* RDLX#RID28790 "Implant"
* RDLX#RID3751 "Graft"
* RDLX#RID4941 "pregnancy"
* RDLX#RID39546 "fetal abnormality"
* RDLX#RID49594 "in vitro fertilization"
* RDLX#RID4813 "torsion"
* RDLX#RID49570 "Volume quantification"
* RDLX#RID39544 "transplanted kidney"
* RDLX#RID39336 "less than 14 weeks"
* RDLX#RID39335 "greater than 14 weeks"
* RDLX#RID4941 "pregnancy"
* RDLX#RID28696 "Motion"
* RDLX#RID5425 "foreign body"
* RDLX#RID50033 "Transplanted pancreas"
* RDLX#RID50032 "Transplanted liver"
* RDLX#RID50034 "Transplanted kidney vessels"
* RDLX#RID34492 "Pediatric"
* RDLX#RID45644 "vascular flow"
* RDLX#RID4818 "Ileal diverticulum"
* RDLX#RID43369 "GI-bleed"
* RDLX#RID34662 "sarcoidosis"
* RDLX#RID49619 "amyloid"
* RDLX#RID49599 "Procedure simulation"
* RDLX#RID3381 "Infectious or inflammatory disease"
* RDLX#RID4881 "cerebrospinal fluid leak"
* RDLX#RID4881 "cerebrospinal fluid leak"
* RDLX#RID28812 "Function"
* RDLX#RID49590 "dosimetry"
* RDLX#RID45691 "Thyroid cancer"
* RDLX#RID49564 "post-therapy"
* RDLX#RID49595 "lymphedema"
* RDLX#RID49652 "metabolic"
* RDLX#RID4851 "arteriovenous fistula"
* RDLX#RID28821 "viability"
* RDLX#RID50130 "Gastrointestinal transit time"
* RDLX#RID5172 "infarction"
* RDLX#RID38586 "Renal calculus"
* RDLX#RID50263 "Patency of biliary structures"
* RDLX#RID45642 "shunt patency"
* RDLX#RID3553 "Arthritis"
* RDLX#RID39030 "bone age"
* RDLX#RID50282 "Vasoconstrictor"
* RDLX#RID49657 "hemodynamic evaluation"
* RDLX#RID50264 "Renin sampling"
* RDLX#RID39446 "diagnostic"
* RDLX#RID3890 "cyst"
* RDLX#RID45701 "callback"
* RDLX#RID49614 "callback technical"
* RDLX#RID38597 "Clip placement"
* RDLX#RID49642 "small bowel loop diversion"
* RDLX#RID49598 "rectal dysfunction"
* RDLX#RID4756 "scoliosis"
* RDLX#RID49608 "vertebral fracture"
* RDLX#RID48094 "Measurement procedure"
* RDLX#RID50376 "Bone density"
* RDLX#RID28809 "CSF flow"
* RDLX#RID34625 "Deep vein thrombosis"
* RDLX#RID4483 "Neuroendocrine neoplasm"
* RDLX#RID50550 "Kidney function assessment"
* RDLX#RID49643 "urinary pouch"
* RDLX#RID49478 "Swallowing function assessment"
* RDLX#RID46040 "Pyloric stenosis"
* RDLX#RID3840 "Lymphoma"
* RDLX#RID39132 "motility"
* RDLX#RID50551 "Dental measurement"
* RDLX#RID45776 "glomerular filtration rate"
* RDLX#RID3969 "hemangioma"
* RDLX#RID3710 "infection"
* RDLX#RID28813 "leg length"
* RDLX#RID11506 "Patency"
* RDLX#RID45641 "shunt detection"
* RDLX#RID50542 "Gastric emptying"
* RDLX#RID50543 "Gastric emptying liquid phase"
* RDLX#RID50544 "Gastric emptying solid phase"
* RDLX#RID8 "treatment"
* RDLX#RID50547 "Left ventricular function"
* RDLX#RID50549 "Dialysis"
* RDLX#RID8 "treatment"
* RDLX#RID34624 "thrombosis"
* RDLX#RID3331 "pseudoaneurysm"
* RDLX#RID43581 "Fetal age"
* RDLX#RID5260 "gastroesophageal reflux"
* RDLX#RID4969 "Shunt"
* RDLX#RID50546 "Urodynamics"
* RDLX#RID50545 "Tau protein"
* RDLX#RID50634 "Physiologic artery study"
* RDLX#RID50632 "Flow velocity"
* RDLX#RID50633 "Radiopharmaceutical clearance"
*/


// ServiceRequest.orderDetail:imagingFocus (Q: orderDetail.imagingFocus)
ValueSet: ChRadOrderImagingFocus
Id: ch-rad-order-imaging-focus
Title: "Imaging Focus"
Description: "Definition for Imaging Focus Value Set in the context of CH RAD-Order."
* RDLX#RID10003 "Oropharynx"
* RDLX#RID10021 "Hypopharynx"
* RDLX#RID1008 "Vein"
* RDLX#RID1010 "Superior vena cava"
* RDLX#RID1013 "Subclavian vein"
* RDLX#RID1024 "internal jugular vein"
* RDLX#RID114 "stomach"
* RDLX#RID1155 "Spinal vein"
* RDLX#RID1156 "Epidural venous plexus"
* RDLX#RID1169 "Azygos vein"
* RDLX#RID1178 "Inferior vena cava"
* RDLX#RID1179 "hepatic vein"
* RDLX#RID1184 "Renal vein"
* RDLX#RID1199 "Femoral vein"
* RDLX#RID1201 "Popliteal vein"
* RDLX#RID1208 "Portal vein"
* RDLX#RID1209 "splenic vein"
* RDLX#RID1211 "Inferior mesenteric vein"
* RDLX#RID1212 "Superior mesenteric vein"
* RDLX#RID122 "Pylorus"
* RDLX#RID1245 "Airway"
* RDLX#RID1247 "trachea"
* RDLX#RID1301 "Lung"
* RDLX#RID13091 "Inferior epigastric artery"
* RDLX#RID13189 "nerve"
* RDLX#RID13190 "Set of cranial nerves"
* RDLX#RID13196 "muscle organ"
* RDLX#RID13197 "bone organ"
* RDLX#RID132 "Small intestine"
* RDLX#RID13208 "Skeletal system"
* RDLX#RID13209 "musculoskeletal system"
* RDLX#RID13211 "pharynx"
* RDLX#RID13284 "face"
* RDLX#RID13296 "Lymph node"
* RDLX#RID13298 "portion of tissue"
* RDLX#RID13421 "Salivary gland"
* RDLX#RID1362 "Pleura"
* RDLX#RID1363 "Pleural space"
* RDLX#RID1384 "Mediastinum"
* RDLX#RID1385 "heart"
* RDLX#RID1392 "Left ventricle"
* RDLX#RID1394 "Aortic valve"
* RDLX#RID1408 "Pericardial cavity"
* RDLX#RID1430 "Thymus"
* RDLX#RID148 "Jejunum"
* RDLX#RID150 "Ileum"
* RDLX#RID1524 "diaphragm"
* RDLX#RID163 "Rectum"
* RDLX#RID164 "Anus"
* RDLX#RID168 "Appendix"
* RDLX#RID170 "Pancreas"
* RDLX#RID176 "pancreatic duct"
* RDLX#RID1852 "Shoulder girdle"
* RDLX#RID1854 "clavicle"
* RDLX#RID18593 "nerve root"
* RDLX#RID1860 "Scapula"
* RDLX#RID187 "gallbladder"
* RDLX#RID1884 "Sternoclavicular joint"
* RDLX#RID1895 "acromioclavicular joint"
* RDLX#RID1968 "Arm"
* RDLX#RID1971 "Humerus"
* RDLX#RID1980 "Bicipital groove of humerus"
* RDLX#RID199 "Common bile duct"
* RDLX#RID20050 "Cervical segment of spinal epidural space"
* RDLX#RID20051 "Thoracic segment of spinal epidural space"
* RDLX#RID20052 "Lumbar segment of spinal epidural space"
* RDLX#RID2010 "elbow"
* RDLX#RID205 "kidney"
* RDLX#RID2107 "forearm"
* RDLX#RID2109 "Radius"
* RDLX#RID2119 "Ulna"
* RDLX#RID2177 "Wrist"
* RDLX#RID22795 "Intercostal nerve"
* RDLX#RID229 "Ureter"
* RDLX#RID2314 "Carpal tunnel"
* RDLX#RID2318 "hand"
* RDLX#RID237 "Urinary bladder"
* RDLX#RID2391 "Finger"
* RDLX#RID2392 "Thumb"
* RDLX#RID2394 "Index finger"
* RDLX#RID2396 "Long finger"
* RDLX#RID2398 "Ring finger"
* RDLX#RID2400 "Small finger"
* RDLX#RID2468 "Chest wall"
* RDLX#RID2470 "axilla"
* RDLX#RID2473 "Sternum"
* RDLX#RID2509 "Sacrum"
* RDLX#RID2524 "Coccyx"
* RDLX#RID2527 "Pelvic bone"
* RDLX#RID2564 "Acetabulum"
* RDLX#RID2577 "Sacroiliac joint"
* RDLX#RID2594 "Symphysis pubis"
* RDLX#RID2639 "hip"
* RDLX#RID2660 "Thigh"
* RDLX#RID2662 "femur"
* RDLX#RID2743 "knee"
* RDLX#RID2746 "Patella"
* RDLX#RID28545 "Ankle"
* RDLX#RID28569 "set of bone organs"
* RDLX#RID28570 "set of facial bones"
* RDLX#RID28575 "Lacrimal ducts"
* RDLX#RID28579 "Paranasal sinuses"
* RDLX#RID28581 "posterior ends of ribs"
* RDLX#RID28586 "Set of pulmonary arteries"
* RDLX#RID28587 "Set of veins"
* RDLX#RID28588 "Set of pulmonary veins"
* RDLX#RID28591 "set of ribs"
* RDLX#RID28597 "anterior ends of upper ribs"
* RDLX#RID28599 "zygomatic arch"
* RDLX#RID28600 "Circle of Willis"
* RDLX#RID28601 "orbits"
* RDLX#RID28677 "thoracic spine region"
* RDLX#RID2868 "Popliteal fossa"
* RDLX#RID28680 "Perirectal region"
* RDLX#RID2869 "Leg"
* RDLX#RID2871 "Fibula"
* RDLX#RID28726 "Cervicothoracic spine region"
* RDLX#RID28727 "Set of coronary arteries"
* RDLX#RID28731 "Base of cranium"
* RDLX#RID28734 "Lumbosacral junction"
* RDLX#RID28739 "Thoracolumbar junction"
* RDLX#RID28742 "Superior mediastinum"
* RDLX#RID28744 "Parotid gland"
* RDLX#RID28757 "set of toes"
* RDLX#RID28829 "foot"
* RDLX#RID28830 "Lumbar intervertebral disk"
* RDLX#RID2885 "Tibia"
* RDLX#RID290 "Ovary"
* RDLX#RID29154 "Vertebra"
* RDLX#RID2945 "Hindfoot"
* RDLX#RID2946 "Midfoot"
* RDLX#RID2947 "Forefoot"
* RDLX#RID295 "uterine tube"
* RDLX#RID2959 "calcaneus"
* RDLX#RID29665 "upper gastrointestinal tract"
* RDLX#RID2992 "Toe"
* RDLX#RID2993 "Great toe"
* RDLX#RID2996 "Second toe"
* RDLX#RID2997 "Third toe"
* RDLX#RID2998 "Fourth toe"
* RDLX#RID2999 "Fifth toe"
* RDLX#RID29994 "right upper quadrant of abdomen"
* RDLX#RID30014 "wall of abdomen"
* RDLX#RID3003 "Joint of ankle or foot"
* RDLX#RID302 "Uterus"
* RDLX#RID30383 "Lymphatic vessel"
* RDLX#RID31011 "Colon"
* RDLX#RID31305 "Set of abdominal lymphatic vessels"
* RDLX#RID31553 "Cervical part of esophagus"
* RDLX#RID325 "Vagina"
* RDLX#RID3331 "pseudoaneurysm"
* RDLX#RID343 "Prostate"
* RDLX#RID34436 "Long bone"
* RDLX#RID34445 "Cerebral vein"
* RDLX#RID34474 "Dural venous sinus"
* RDLX#RID34550 "Eye"
* RDLX#RID34557 "placenta"
* RDLX#RID34563 "cervical vertebral arch joint"
* RDLX#RID34571 "Cervical vertebral column"
* RDLX#RID34573 "Lumbar vertebral column"
* RDLX#RID34819 "Adrenal vein"
* RDLX#RID34890 "Urethra"
* RDLX#RID357 "seminal vesicle"
* RDLX#RID35730 "Portion of soft tissue"
* RDLX#RID35735 "Posterior cranial fossa"
* RDLX#RID35739 "Lung parenchyma"
* RDLX#RID35754 "Mastoid region"
* RDLX#RID35798 "Sesamoid bone of foot"
* RDLX#RID358 "Vas deferens"
* RDLX#RID35812 "maxillofacial region"
* RDLX#RID35846 "subdivision of common carotid artery"
* RDLX#RID35904 "subdivision of cerebral part of internal carotid artery"
* RDLX#RID35944 "Infrarenal aorta"
* RDLX#RID35951 "Pancreatic artery"
* RDLX#RID362 "penis"
* RDLX#RID365 "Scrotum"
* RDLX#RID366 "Testis"
* RDLX#RID371 "epididymis"
* RDLX#RID38078 "hepatic artery"
* RDLX#RID38279 "Intrahepatic branch of portal vein"
* RDLX#RID38594 "bone marrow"
* RDLX#RID38674 "Pituitary gland"
* RDLX#RID38751 "Set of carotid arteries"
* RDLX#RID38761 "Femoral artery"
* RDLX#RID39189 "respiratory system"
* RDLX#RID39343 "major joint"
* RDLX#RID39344 "small joint"
* RDLX#RID39345 "medium-sized joint"
* RDLX#RID39518 "Shoulder"
* RDLX#RID39545 "Set of blood vessels"
* RDLX#RID39553 "Set of iliac arteries"
* RDLX#RID39570 "skull base to mid-thigh"
* RDLX#RID39681 "Olecranon"
* RDLX#RID397 "Peritoneal cavity"
* RDLX#RID399 "Subphrenic space"
* RDLX#RID4 "Blood vessel"
* RDLX#RID410 "peritoneum"
* RDLX#RID41021 "synovial cavity of joint"
* RDLX#RID431 "RETROPERITONEUM"
* RDLX#RID43244 "Genitourinary system"
* RDLX#RID434 "Perirenal space"
* RDLX#RID43410 "Set of nasal bones"
* RDLX#RID43579 "Set of fallopian tubes"
* RDLX#RID43693 "Optic foramen"
* RDLX#RID45712 "set of biliary ducts"
* RDLX#RID476 "inguinal part of abdomen"
* RDLX#RID478 "artery"
* RDLX#RID482 "Supraaortic valve area"
* RDLX#RID4843 "Fistula"
* RDLX#RID49467 "Axial skeleton"
* RDLX#RID49533 "celiac nerve plexus"
* RDLX#RID49534 "Set of cerebral arteries"
* RDLX#RID49535 "set of cerebral sinuses"
* RDLX#RID49537 "Vasculature of kidney"
* RDLX#RID49538 "set of cerebral cisterns"
* RDLX#RID49539 "Set of cervical arteries"
* RDLX#RID49541 "Set of iliac vessels"
* RDLX#RID49542 "Set of visceral arteries"
* RDLX#RID49636 "set of tibio-peroneal arteries"
* RDLX#RID49640 "Set of lymph vessels"
* RDLX#RID49727 "cortex of kidney"
* RDLX#RID49729 "Set of renal arteries"
* RDLX#RID49825 "set of penis vessels"
* RDLX#RID49861 "joint of lower extremity"
* RDLX#RID49862 "joint of upper extremity"
* RDLX#RID49863 "Set of upper extremity vessels"
* RDLX#RID49864 "Set of runoff vessels"
* RDLX#RID49865 "Set of pulmonary vessels"
* RDLX#RID49873 "set of teeth"
* RDLX#RID49921 "Set of abdominal vessels"
* RDLX#RID49922 "Set of ankle vessels"
* RDLX#RID49923 "Set of extremity vessels"
* RDLX#RID49924 "Set of foot vessels"
* RDLX#RID49925 "Set of forearm vessels"
* RDLX#RID49926 "Set of head vessels"
* RDLX#RID49927 "Set of knee vessels"
* RDLX#RID49928 "Set of lower extremity vessels"
* RDLX#RID49929 "Set of lower leg vessels"
* RDLX#RID49930 "Set of neck veins"
* RDLX#RID49931 "Set of neck vessels"
* RDLX#RID49932 "Set of orbit vessels"
* RDLX#RID49933 "Set of pelvis vessels"
* RDLX#RID49934 "Set of shoulder vessels"
* RDLX#RID49935 "Set of spine vessels"
* RDLX#RID49936 "Set of cervical spine vessels"
* RDLX#RID49937 "Set of lumbar spine vessels"
* RDLX#RID49938 "Set of thoracic spine vessels"
* RDLX#RID49939 "Set of superior mesenteric vessels"
* RDLX#RID49940 "Set of thigh vessels"
* RDLX#RID49941 "Set of thoracic inlet vessels"
* RDLX#RID49942 "Set of tibioperoneal vessels"
* RDLX#RID49943 "set of tributaries"
* RDLX#RID49944 "Set of upper extremity veins"
* RDLX#RID49945 "Set of wrist vessels"
* RDLX#RID49957 "Set of abdominal veins"
* RDLX#RID49958 "Set of adrenal vessels"
* RDLX#RID49959 "Set of carotid vessels"
* RDLX#RID49960 "Set of celiac vessels"
* RDLX#RID49961 "Set of chest veins"
* RDLX#RID49962 "Set of chest vessels"
* RDLX#RID49963 "Set of extremity arteries"
* RDLX#RID49965 "Set of femoral vessels"
* RDLX#RID49966 "Set of hand vessels"
* RDLX#RID49967 "Set of head arteries"
* RDLX#RID49968 "Set of head veins"
* RDLX#RID49969 "Set of lower extremity veins"
* RDLX#RID49970 "Set of ovarian vessels"
* RDLX#RID49971 "Set of pelvis veins"
* RDLX#RID49972 "lactiferous duct"
* RDLX#RID49974 "Extremity artery"
* RDLX#RID49975 "Lower extremity artery"
* RDLX#RID49976 "Upper extremity artery"
* RDLX#RID49978 "Lower extremity vessel"
* RDLX#RID49979 "Upper extremity vessel"
* RDLX#RID49981 "Extremity vein"
* RDLX#RID49982 "Lower extremity vein"
* RDLX#RID49983 "Upper extremity vein"
* RDLX#RID50038 "visceral artery"
* RDLX#RID50039 "iliac artery graft"
* RDLX#RID50044 "set of subclavian vessels"
* RDLX#RID50045 "Set of testicular vessels"
* RDLX#RID50046 "Set of breast vessels"
* RDLX#RID50047 "set of mesenteric arteries"
* RDLX#RID50048 "Endomyocardium"
* RDLX#RID50049 "Peripheral skeletal system"
* RDLX#RID50162 "skull vertex to mid-thigh"
* RDLX#RID50164 "posterior ends of lower ribs"
* RDLX#RID50165 "posterior ends of upper ribs"
* RDLX#RID50166 "set of upper ribs"
* RDLX#RID50167 "set of lower ribs"
* RDLX#RID50168 "anterior ends of ribs"
* RDLX#RID50170 "portion of oral tissue"
* RDLX#RID50173 "set of bones from skull base to mid-thigh"
* RDLX#RID50266 "Renal vessel"
* RDLX#RID50267 "Head artery"
* RDLX#RID50268 "Intracranial vessel"
* RDLX#RID50269 "Femoral vessel"
* RDLX#RID50270 "Adrenal vessel"
* RDLX#RID50271 "Extremity vessel"
* RDLX#RID50272 "Peripheral artery"
* RDLX#RID50273 "Spinal artery"
* RDLX#RID50274 "set of pelvic lymphatic vessels"
* RDLX#RID50275 "Set of Extremity lymphatic vessels"
* RDLX#RID50276 "set of pelvic arteries"
* RDLX#RID50277 "st of urinary bladder arteries"
* RDLX#RID50279 "set of orbit veins"
* RDLX#RID50280 "set of vertebral vessels"
* RDLX#RID50281 "Spinal vessel"
* RDLX#RID50283 "Cerebral artery"
* RDLX#RID50284 "Mesenteric artery"
* RDLX#RID50285 "Thoracic artery"
* RDLX#RID50286 "set of intraosseous veins"
* RDLX#RID50287 "Set of extracranial vessels"
* RDLX#RID50342 "Lower leg vessel"
* RDLX#RID50362 "Set of hepatic vessels"
* RDLX#RID50363 "Set of mesenteric vessels"
* RDLX#RID50377 "Set of hepatic veins"
* RDLX#RID50378 "Set of visceral vessels"
* RDLX#RID50379 "Set of ankle arteries"
* RDLX#RID50380 "Set of lower extremity arteries"
* RDLX#RID50381 "Set of upper extremity arteries"
* RDLX#RID50382 "Neck artery"
* RDLX#RID50383 "Neck vessel"
* RDLX#RID50384 "Set of pedal lymphatic vessels"
* RDLX#RID50392 "Cervical intervertebral disk"
* RDLX#RID50393 "Set of abdominal arteries"
* RDLX#RID50528 "Sacral segment of spinal epidural space"
* RDLX#RID5555 "Tube"
* RDLX#RID5576 "Catheter"
* RDLX#RID5588 "Shunt catheter"
* RDLX#RID5598 "Stent"
* RDLX#RID58 "liver"
* RDLX#RID581 "aortic arch"
* RDLX#RID582 "Brachiocephalic artery"
* RDLX#RID584 "Common carotid artery"
* RDLX#RID585 "Internal carotid artery"
* RDLX#RID586 "Cervical portion of internal carotid artery"
* RDLX#RID605 "Cerebral part of internal carotid artery"
* RDLX#RID6067 "tendon"
* RDLX#RID6071 "Ligament organ"
* RDLX#RID6122 "Joint"
* RDLX#RID6135 "Spinal canal"
* RDLX#RID6392 "Temporal brain region"
* RDLX#RID6434 "brain"
* RDLX#RID6677 "Brainstem"
* RDLX#RID684 "External carotid artery"
* RDLX#RID7111 "epidural space"
* RDLX#RID7119 "Subarachnoid space"
* RDLX#RID7195 "Peripheral nerve"
* RDLX#RID7202 "Brachial plexus"
* RDLX#RID734 "Maxillary artery"
* RDLX#RID7361 "Spinal cord"
* RDLX#RID7456 "Lumbosacral plexus"
* RDLX#RID7578 "thyroid gland"
* RDLX#RID7587 "Parathyroid gland"
* RDLX#RID7589 "larynx"
* RDLX#RID773 "Subclavian artery"
* RDLX#RID774 "vertebral artery"
* RDLX#RID7741 "Spine"
* RDLX#RID7747 "Axis"
* RDLX#RID7749 "Dens"
* RDLX#RID7890 "Intervertebral disk"
* RDLX#RID7901 "Facet joint of spine"
* RDLX#RID823 "internal thoracic artery"
* RDLX#RID86 "Spleen"
* RDLX#RID865 "brachial artery"
* RDLX#RID879 "Thoracic aorta"
* RDLX#RID88 "adrenal gland"
* RDLX#RID880 "Bronchial artery"
* RDLX#RID884 "Intercostal artery"
* RDLX#RID905 "Abdominal aorta"
* RDLX#RID906 "Celiac artery"
* RDLX#RID908 "Left gastric artery"
* RDLX#RID9082 "Mandible"
* RDLX#RID910 "Gastroduodenal artery"
* RDLX#RID9106 "Mandibular dental arcade"
* RDLX#RID9196 "skull"
* RDLX#RID921 "Splenic artery"
* RDLX#RID9236 "Maxilla"
* RDLX#RID927 "Superior mesenteric artery"
* RDLX#RID9279 "Maxillary dental arcade"
* RDLX#RID9286 "Sella turcica"
* RDLX#RID935 "Adrenal artery"
* RDLX#RID936 "Renal artery"
* RDLX#RID9361 "Temporal bone"
* RDLX#RID9362 "Petrous part of temporal bone"
* RDLX#RID939 "Inferior mesenteric artery"
* RDLX#RID9392 "internal auditory canal"
* RDLX#RID94 "gastrointestinal tract"
* RDLX#RID945 "Internal iliac artery"
* RDLX#RID95 "Esophagus"
* RDLX#RID954 "Internal pudendal artery"
* RDLX#RID955 "uterine artery"
* RDLX#RID962 "Popliteal artery"
* RDLX#RID9779 "Temporomandibular joint"
* RDLX#RID9968 "Submandibular gland"
* RDLX#RID9990 "Nasopharynx"


// ServiceRequest.orderDetail:imagingRegion (Q: orderDetail.imagingRegion)
ValueSet: ChRadOrderImagingRegion
Id: ch-rad-order-imaging-region
Title: "Imaging Region"
Description: "Definition for Imaging Region Value Set in the context of CH RAD-Order."
* RDLX#RID56 "Abdomen"
* RDLX#RID28749 "breast"
* RDLX#RID1243 "Thorax"
* RDLX#RID13202 "limb of body"
* RDLX#RID9080 "head"
* RDLX#RID2638 "Lower extremity"
* RDLX#RID7488 "neck"
* RDLX#RID2507 "Pelvis"
* RDLX#RID1850 "Upper extremity"
* RDLX#RID39569 "whole body"
* RDLX#RID35962 "umbilical artery"
* RDLX#RID34558 "Umbilical Cord"
* RDLX#RID50043 "set of umbilical vessels"
* RDLX#RID665 "middle cerebral artery"
* RDLX#RID6062 "Body region"


// ServiceRequest.orderDetail:laterality (Q: orderDetail.laterality)
ValueSet: ChRadOrderLaterality
Id: ch-rad-order-laterality
Title: "Laterality"
Description: "Definition for Laterality Value Set in the context of CH RAD-Order."
* RDLX#RID5771 "Bilateral"
* RDLX#RID5824 "LEFT"
* RDLX#RID5825 "RIGHT"
* RDLX#RID49843 "Unspecified laterality"
* RDLX#RID38593 "Unilateral"


// ServiceRequest.orderDetail:maneuverType (Q: orderDetail.maneuverType)
ValueSet: ChRadOrderManeuverType
Id: ch-rad-order-maneuver-type
Title: "Maneuver Type"
Description: "Definition for Maneuver Type Value Set in the context of CH RAD-Order."
* RDLX#RID50075 "Extension maneuver"
* RDLX#RID50069 "Flexion maneuver"
* RDLX#RID10475 "Stress maneuver"
* RDLX#RID12535 "at rest"
* RDLX#RID10477 "exercise stress maneuver"
* RDLX#RID50035 "Single state of exercise"
* RDLX#RID50036 "Multiple states of exercise"
* RDLX#RID10467 "exhalation maneuver"
* RDLX#RID10468 "inspiration maneuver"
* RDLX#RID50083 "Standing maneuver"
* RDLX#RID50132 "standing with brace maneuver"
* RDLX#RID50073 "Bending maneuver"
* RDLX#RID50082 "Right bending maneuver"
* RDLX#RID50081 "Left bending maneuver"
* RDLX#RID50074 "clenched fist maneuver"
* RDLX#RID50078 "forced dorsiflexion maneuver"
* RDLX#RID48090 "voiding"


// ServiceRequest.orderDetail:guidanceForAction (Q: orderDetail.guidanceForAction)
ValueSet: ChRadOrderGuidanceForAction
Id: ch-rad-order-guidance-for-action
Title: "Guidance for Action"
Description: "Definition for Guidance for Action Value Set in the context of CH RAD-Order."
* RDLX#RID10379 "Venography"
* RDLX#RID10380 "myelography"
* RDLX#RID10397 "Ablation"
* RDLX#RID10398 "Aspiration of bodily substance"
* RDLX#RID10401 "Atherectomy"
* RDLX#RID10404 "embolization"
* RDLX#RID10406 "infusion"
* RDLX#RID10407 "Repair"
* RDLX#RID10408 "Object retrieval"
* RDLX#RID10412 "Thrombectomy"
* RDLX#RID10415 "Device removal"
* RDLX#RID10417 "Drainage"
* RDLX#RID11030 "Balloon dilation procedure"
* RDLX#RID11031 "Angioplasty"
* RDLX#RID12933 "Fine-needle aspiration"
* RDLX#RID1559 "Procedure"
* RDLX#RID1634 "Gastrostomy"
* RDLX#RID1647 "Chemoembolization"
* RDLX#RID1671 "cholecystostomy"
* RDLX#RID1754 "cryoablation"
* RDLX#RID1839 "Vertebroplasty"
* RDLX#RID1840 "kyphoplasty"
* RDLX#RID1849 "radiofrequency ablation"
* RDLX#RID28707 "device placement procedure"
* RDLX#RID28708 "Localization"
* RDLX#RID28842 "Injection"
* RDLX#RID35774 "NERVE BLOCK"
* RDLX#RID35777 "Stereotactic localization"
* RDLX#RID35813 "paracentesis"
* RDLX#RID35814 "pericardiocentesis"
* RDLX#RID35815 "thoracentesis"
* RDLX#RID38602 "Vacuum-assisted biopsy"
* RDLX#RID38611 "Biopsy"
* RDLX#RID39262 "radiotherapy"
* RDLX#RID43245 "tube insertion"
* RDLX#RID45699 "STEREOTACTIC BIOPSY"
* RDLX#RID45700 "Needle localization"
* RDLX#RID45710 "Endoscopy"
* RDLX#RID46071 "feeding tube advancement"
* RDLX#RID46073 "lumbar puncture"
* RDLX#RID49569 "venous sampling"
* RDLX#RID49593 "endovenous laser treatment"
* RDLX#RID49596 "manometry"
* RDLX#RID49621 "Device exchange"
* RDLX#RID49632 "check tube"
* RDLX#RID49634 "Substance removal"
* RDLX#RID49657 "hemodynamic evaluation"
* RDLX#RID49739 "cholangioscopy"
* RDLX#RID49747 "ligation"
* RDLX#RID49748 "mechanical thrombectomy"
* RDLX#RID49749 "microwave ablation"
* RDLX#RID49755 "percutaneous sympathectomy"
* RDLX#RID49757 "percutaneous transluminal angioplasty"
* RDLX#RID49760 "Device revision"
* RDLX#RID49771 "stab phlebectomy"
* RDLX#RID49772 "Dilation procedure"
* RDLX#RID49776 "vertebral augmentation"
* RDLX#RID49777 "Core needle biopsy"
* RDLX#RID49838 "Tissue sampling"
* RDLX#RID49850 "Radiosurgery"
* RDLX#RID49857 "device replacement"
* RDLX#RID49866 "Deep biopsy"
* RDLX#RID49871 "Superficial biopsy"
* RDLX#RID49896 "Change"
* RDLX#RID49912 "reduced"
* RDLX#RID49956 "Vascular access"
* RDLX#RID50031 "Peripheral venous access"
* RDLX#RID50156 "Bronchoscopy"
* RDLX#RID50240 "Denervation procedure"
* RDLX#RID50330 "Deep drainage"
* RDLX#RID50349 "Object removal"
* RDLX#RID50359 "Object repositioning"
* RDLX#RID50522 "Radioembolization"
* RDLX#RID50523 "Vascular sclerotherapy"
* RDLX#RID50524 "Excisional biopsy"


// ServiceRequest.code.coding:RdlxModType (Q: imagingService.type)
ValueSet: ChRadOrderModalityType
Id: ch-rad-order-modality-type
Title: "Modality Type"
Description: "Definition for Modality Type Value Set in the context of CH RAD-Order."
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


// ServiceRequest.orderDetail:viewType (Q: orderDetail.viewType)
ValueSet: ChRadOrderViewType
Id: ch-rad-order-view-type
Title: "View Type"
Description: "Definition for View Type Value Set in the context of CH RAD-Order."
* RDLX#RID10424 "Right lateral decubitus position"
* RDLX#RID10425 "Left lateral decubitus position"
* RDLX#RID10439 "Lateral decubitus position"
* RDLX#RID10446 "Radial deviation position"
* RDLX#RID10447 "Ulnar deviation position"
* RDLX#RID10451 "Open mouth position"
* RDLX#RID10455 "Upright position"
* RDLX#RID10509 "Implant displaced"
* RDLX#RID10521 "Frontal projection"
* RDLX#RID10534 "Radiography grid"
* RDLX#RID10579 "axial plane"
* RDLX#RID28651 "Magnification"
* RDLX#RID39542 "transrectal"
* RDLX#RID39543 "transvaginal"
* RDLX#RID43583 "AP view"
* RDLX#RID43584 "apical lordotic view"
* RDLX#RID43586 "cone view"
* RDLX#RID43591 "lateral view"
* RDLX#RID43593 "left oblique view"
* RDLX#RID43594 "PA view"
* RDLX#RID43596 "right oblique view"
* RDLX#RID43597 "Spot view"
* RDLX#RID43600 "Arcein view"
* RDLX#RID43605 "Broden view"
* RDLX#RID43616 "Danelius miller view"
* RDLX#RID43618 "Ferguson view"
* RDLX#RID43621 "Friedman view"
* RDLX#RID43625 "Grashey view"
* RDLX#RID43630 "Holmblad view"
* RDLX#RID43637 "Judet view"
* RDLX#RID43653 "Mayer view"
* RDLX#RID43654 "Merchant view"
* RDLX#RID43665 "Norgaard view"
* RDLX#RID43667 "original Law view"
* RDLX#RID43671 "Caldwell view"
* RDLX#RID43681 "Stenvers view"
* RDLX#RID43682 "Stryker notch view"
* RDLX#RID43686 "Towne view"
* RDLX#RID43689 "Occipitomental view"
* RDLX#RID43690 "West point view"
* RDLX#RID45659 "babygram"
* RDLX#RID45661 "oblique view"
* RDLX#RID45663 "swimmers view"
* RDLX#RID45779 "supine view"
* RDLX#RID45780 "Left lateral view"
* RDLX#RID45781 "Right lateral view"
* RDLX#RID45782 "cross table lateral view"
* RDLX#RID45783 "carpal tunnel view"
* RDLX#RID45785 "Transthoracic view"
* RDLX#RID45786 "Sunrise view"
* RDLX#RID45787 "Tunnel view"
* RDLX#RID45788 "Inlet view"
* RDLX#RID45789 "Outlet view"
* RDLX#RID45790 "Axillary view"
* RDLX#RID45791 "Submentovertical view"
* RDLX#RID45795 "Obliques view"
* RDLX#RID45802 "Runoff"
* RDLX#RID49830 "Panoramic"
* RDLX#RID50070 "posteroanterior 45-degree flexion view"
* RDLX#RID50077 "External rotation view"
* RDLX#RID50079 "Internal rotation view"
* RDLX#RID50087 "10 degree caudal angle view"
* RDLX#RID50088 "30 degree caudal angle view"
* RDLX#RID50090 "10 degree cephalic angle view"
* RDLX#RID50091 "20 degree cephalic angle view"
* RDLX#RID50092 "Posteroanterior 30 degree flexion view"
* RDLX#RID50093 "45 degree cephalic angle view"
* RDLX#RID50094 "90 degree abduction view"
* RDLX#RID50095 "Bora view"
* RDLX#RID50096 "Brewerton view"
* RDLX#RID50097 "Garth view"
* RDLX#RID50098 "Harris view"
* RDLX#RID50099 "Rosenberg view"
* RDLX#RID50100 "Von Rosen view"
* RDLX#RID50102 "Waters upright view"
* RDLX#RID50103 "Zanca view"
* RDLX#RID50104 "Endorectal view"
* RDLX#RID50106 "Left anterior oblique view"
* RDLX#RID50107 "Lateral frog leg view"
* RDLX#RID50109 "Lateral spot view"
* RDLX#RID50111 "Laurin view"
* RDLX#RID50113 "Left posterior oblique view"
* RDLX#RID50114 "Mediolateral oblique view"
* RDLX#RID50115 "Mortise view"
* RDLX#RID50116 "Odontoid view"
* RDLX#RID50118 "Posteroanterior prone view"
* RDLX#RID50119 "radio head capitallar view"
* RDLX#RID50120 "Right anterior oblique view"
* RDLX#RID50121 "Right posterior oblique view"
* RDLX#RID50122 "Scaphoid view"
* RDLX#RID50123 "Serendipity view"
* RDLX#RID50124 "Tangential view"
* RDLX#RID50125 "True anteroposterior view"
* RDLX#RID50126 "True lateral view"
* RDLX#RID50127 "Velpeau view"
* RDLX#RID50128 "Laterally exaggerated craniocaudal view"
* RDLX#RID50129 "Y view"
* RDLX#RID50172 "closed mouth position"
* RDLX#RID50328 "air gap breast view"
* RDLX#RID50329 "rolled breast view"
* RDLX#RID50367 "sunrise 20 degrees view"
* RDLX#RID50368 "sunrise 40 degrees view"
* RDLX#RID50369 "sunrise 60 degrees view"
* RDLX#RID50370 "Merchant 30 degrees view"
* RDLX#RID50371 "Merchant 45 degrees view"
* RDLX#RID50372 "Merchant 60 degrees view"
* RDLX#RID50373 "Trans-scapular view"
* RDLX#RID50386 "Oblique upright view"
* RDLX#RID50534 "Bitewing view"
* RDLX#RID50535 "Jones view"
* RDLX#RID50628 "Max abduction"
* RDLX#RID50629 "Oblique prone"
* RDLX#RID50635 "Oblique crosstable"
* RDLX#RID5818 "anterior"
* RDLX#RID6427 "Transabdominal"

// ServiceRequest.category (Q: requestedService.service)
/* ValueSet: ChRadOrderCid33
Id: ch-rad-order-cid33
Title: "Modality that created the series"
Description: "Valuset for the Type of equipment, or function or technique of that equipment, that created the data"
* include codes from system Cid33
*/

/* include codes from system Cid33
* ChRadOrderDicomUnknown#UNKNOWN
*/