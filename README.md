# CP Azure Connector

### Setup

1) Build local docker image `docker build -t kafka-connect-azure-db:0.0.1 .`

2) Create the properties file and paste it inside the `conf` folder.

3) Run `docker-compose up` and wait for all components to go up.

4) Test that the Azure DB Kafka Connector has been installed: http://localhost:8083/connector-plugins/

A response like this should be show:

```
[{"class":"io.confluent.connect.azuresqldw.AzureSqlDwSinkConnector","type":"sink","version":"1.0.2"},{"class":"org.apache.kafka.connect.file.FileStreamSinkConnector","type":"sink","version":"5.3.1-ccs"},{"class":"org.apache.kafka.connect.file.FileStreamSourceConnector","type":"source","version":"5.3.1-ccs"}]
```
