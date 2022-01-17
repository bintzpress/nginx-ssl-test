# Readme

This is a simple Docker Compose project to test a certificate and key using a NGINX container. The NGINX container uses SSL and serves an index test file. The certificates are mounted into the container using a volume and they are specified by the .env file. You need to copy over the .env_sample to .env and edit it to match where you put your certificate and key.
