postgres:
	docker run --name postgres14 -p 5435:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:14.7-alpine

createdb:
	docker exec -it postgres14 createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it postgres14 dropdb --username=root --owner=root simple_bank

.PHONY: createdb	

