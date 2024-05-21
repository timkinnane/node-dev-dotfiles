# Define location of Zscaler cert bundle
export CERTIFICATE_BUNDLE=$HOME/.ssh/zscaler-cert-bundle.pem

# Use Zscaler cert bundle with all language environments
if [[ -f "$CERTIFICATE_BUNDLE" ]]; then
  export REQUESTS_CA_BUNDLE=$CERTIFICATE_BUNDLE
  export CURL_CA_BUNDLE=$CERTIFICATE_BUNDLE
  export NODE_EXTRA_CA_CERTS=$CERTIFICATE_BUNDLE
  export AWS_CA_BUNDLE=$CERTIFICATE_BUNDLE
  export SSL_CERT_FILE=$CERTIFICATE_BUNDLE  
fi
