#!/bin/bash



touch <roll_number>.txt

#ROLL_NUMBER=<roll_number>

#FILE_NAME=${ROLL_NUMBER}.txt

#UPLOAD_URL="http://local.server/upload/${FILE_NAME}"

UPLOAD_URL="http://local.server/upload/<roll_number>.txt"

TMP_UPLOAD_DIR="/tmp/local_uploads"



# Upload the file to the server

#curl -X PUT -T "${FILE_NAME}" "${UPLOAD_URL}"

curl -X PUT -T "<roll_number>.txt" "${UPLOAD_URL}"



# Verify that the file has been uploaded

if [ -f "${TMP_UPLOAD_DIR}/<roll_number>.txt" ]; then

  echo "File uploaded successfully"

else

  echo "File upload failed"

fi

