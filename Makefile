include .env

BCWD := /app
FCWD := /app
BCWDLOC := ./back-tr
FCWDLOC := ./front-tr
USER := $(shell /usr/bin/id -u)
BACK := back-tr
FRONT := front-tr
DB := db-tr

up:## Build the app container image (if it doesn't exists) and runs the containers
	docker-compose up

rebuild:## Rebuild the app container image and runs the containers
	docker-compose up --build

down:## Stop and remove the containers that was created by 'make up' command
	docker-compose down

install:## Runs 'npm install'
	docker exec -it $(BACK) sh -c "(cd $(BCWD) && npm install)"
	docker exec -it $(FRONT) sh -c "(cd $(FCWD) && npm install)"

installLocal:## Runs 'npm install' locally
	cd $(BCWDLOC) && npm install && cd ..
	cd $(FCWDLOC) && npm install && cd ..

grant:## Grant permissions to all files (Use it if you have access permissions issues)
	bash -c "sudo chmod -R a+rw . && sudo chown -R $(USER):$(USER) ."

exportDump:## Export the PostgreSQL database file at '/dump'
	docker exec $(DB) /bin/bash -c "PGPASSWORD=$(DATABASE_PASSWORD) pg_dump --username $(DATABASE_USERNAME) $(DATABASE_NAME)" > dump/dump.sql

importDump:## Import the PostgreSQL database file at '/dump'
	docker exec $(DB) /bin/bash -c "PGPASSWORD=$(DATABASE_PASSWORD) psql --username $(DATABASE_USERNAME) $(DATABASE_NAME)" < dump/dump.sql

accessBack:## Run an interactive bash session on back-end container
	docker exec -it $(BACK) bash

accessFront:## Run an interactive bash session on front-end container
	docker exec -it $(FRONT) bash
