regist-connect:
	cat ./demo.json | kubectl exec -i infra-kafka-kafka-0 -- curl -X POST -H "Accept:application/json" -H "Content-Type:application/json" http://infra-cdc-connect-api:8083/connectors -d @-
delete-connect:
	kubectl exec -i infra-kafka-kafka-0 -- curl -X DELETE http://infra-cdc-connect-api:8083/connectors/mysqlsource-accounts
get-all-connects:
	kubectl exec -i infra-kafka-kafka-0 -- curl -X GET http://infra-cdc-connect-api:8083/connectors
