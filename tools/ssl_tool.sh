#!/bin/bash

echo ""
echo "========generate CA cert and key files========"
echo ""
openssl genrsa -out ca.key 2048
openssl req -new -x509 -days 365 -key ca.key -out ca.crt

echo ""
echo "========generate Server cert and key files========"
echo ""
openssl genrsa -out server.key 2048
openssl req -new -key server.key -out server.csr

echo ""
echo "========generate Client cert and key files========"
echo ""
openssl genrsa -out client.key 2048
openssl req -new -key client.key -out client.csr

echo ""
echo "========sign server cert with CA========"
echo ""
openssl x509 -req -days 365 -in server.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out server.crt
#openssl x509 -req -days 365 -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt

echo ""
echo "========sign client cert with CA========"
echo ""
openssl x509 -req -days 365 -in client.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out client.crt
#openssl x509 -req -days 365 -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt

# openssl s_server -accept 10001 -key server.key -cert server.crt
# openssl s_client -connect localhost:10001 -CAfile ca.crt

# openssl s_server -accept 10001 -key server.key -cert server.crt -Verify 5
# openssl s_client -connect localhost:10001 -cert client.crt -key client.key -CAfile ca.crt