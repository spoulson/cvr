.PHONY: default
default:

.PHONY: reset
reset:
	docker-compose -f ../docker-compose.yaml down
	docker volume rm voter_reg_data
	docker-compose -f ../docker-compose.yaml up -d
	docker-compose run --rm --entrypoint "/bin/sh -c" python "while ! mysqladmin ping -hmysql -uvoter_reg -pvoter_reg --silent; do sleep 0.5; done"

.PHONY: model
model:
	docker-compose run --rm --entrypoint ./create_model.sh python
