#!/bin/bash

baseUrl="http://localhost:4502"
password="admin:admin"

curl $baseUrl/etc/replication/agents.author/publish/jcr:content --user $password --data-urlencode "{'transportUri': 'http://publisher:4503/bin/receive?sling:authRequestLogin=1'}"


echo "checking agent"
curl $baseUrl/etc/replication/agents.author/publish/jcr:content.json --user $password
