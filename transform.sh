FILENAME="OrderBundleMappedFromQr" 
INPUT="@./fsh-generated/resources/QuestionnaireResponse-QuestionnaireResponseRadiologyOrder.json"
REPLACE="s|<meta>|<id value=\"$FILENAME\" /><meta>|g"
curl --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-rad-order%2FStructureMap%2FRadOrderQrToBundle' \
  --header 'accept: application/fhir+xml;fhirVersion=4.0' \
  --header 'content-type: application/fhir+json;fhirVersion=4.0' \
  --header 'user-agent: vscode-restclient' \
  --data $INPUT \
  -o ./input/resources/bundle/$FILENAME.xml

sed -i '' "$REPLACE" ./input/resources/bundle/$FILENAME.xml