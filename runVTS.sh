#!/bin/sh

# Set VTS config 
CONFIGURE_JSON=/opt/MF/MF_VTS/web/configure.json # Path to configure.json
sed -i 's/"adminPort": 4000,/"adminPort": '"$ADMIN_PORT"',/g' $CONFIGURE_JSON
sed -i 's/"defaultApiPort": 8888,/"defaultApiPort": '"$DEFAULT_API_PORT"',/g' $CONFIGURE_JSON 
sed -i 's/"enableDiag": false,/"enableDiag": '"$ENABLE_DIAG"',/g' $CONFIGURE_JSON 
sed -i 's/"autoCreateIndexedColumn": true,/"autoCreateIndexedColumn": '"$AUTO_CREATE_INDEXED_COLUMN"',/g' $CONFIGURE_JSON 
sed -i 's/"maxInstancesAllowed": 50,/"maxInstancesAllowed": '"$MAX_INSTANCES_ALLOWED"',/g' $CONFIGURE_JSON 
sed -i 's/"defaultLanguage": "en",/"defaultLanguage": "'"$DEFAULT_LANGUAGE"'",/g' $CONFIGURE_JSON  
sed -i 's/"useSSL": false,/"useSSL": '"$USE_SSL"',/g' $CONFIGURE_JSON 
sed -i 's/"minVersion": "TLSv1.2",/"minVersion": "'"$TLS_MIN_VERSION"'",/g' $CONFIGURE_JSON 
sed -i 's/"maxVersion": "TLSv1.3",/"maxVersion": "'"$TLS_MAX_VERSION"'",/g' $CONFIGURE_JSON 
sed -i 's/"ciphers": "ALL",/"ciphers": "'"$CIPHERS"'",/g' $CONFIGURE_JSON 
sed -i 's/"level": "error",/"level": "'"$LOGGER_LEVEL"'",/g' $CONFIGURE_JSON 

sed -i 's/"defaultStart": false,/"defaultStart": true,/g' $CONFIGURE_JSON 

#Run VTS
/opt/MF/MF_VTS/vts.sh