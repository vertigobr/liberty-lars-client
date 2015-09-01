WebSphere LARS Client
=====================

WebSphere LARS client container (on JDK 8).

An off-line repository is included at "/opt/lars-repo". You can use it
to upload features to a LARS server.

## Use:

    docker run --rm -ti vertigo/liberty-lars-client:latest \
       listAll --url="http://<larshost>:<larsport>/ma/v1" \
       --username=admin --password=admin

