#!/bin/bash
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out server.crt \
       -keyout server.key \
       -subj "/C=MA/ST=MA/L=BG/O=1337/OU=achahdan/CN=achahdan/"