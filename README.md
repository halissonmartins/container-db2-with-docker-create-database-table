# Docker Compose example to run containerized IBM DB2 that create database, schema and table on startup using Flyway

When working with IBM Db2 in containerized environments, developers often need a way to quickly spin up a database with predefined objects such as schemas and tables. While Docker Compose simplifies container orchestration, it does not natively handle database initialization beyond basic scripts. This is where Flyway, a powerful database migration tool, comes into play.

In this project, we will walk through a practical Docker Compose example that runs IBM Db2 inside a container and leverages Flyway to automatically create a database, schema, and table at startup.

## Steps to run using Docker Compose

1. Download [IBM DB2 driver](https://mvnrepository.com/artifact/com.ibm.db2/jcc) and save inside ```.\drivers``` diretory.
	- jcc-12.1.2.0.jar (use the latest version and change the name in the Docker Compose file)

2. To start execute in the terminal:
	```sh
	docker compose -f docker-compose-db2.yml up -d
	```

3. Wait for all containers to initialize and Flyway apply the script.

4. Use to connect:
	- Host: localhost
	- Port: 50000
	- Database: pdt
	- User: db2inst1
	- Password: 1StrongPsswd

5. In the terminal, execute the command to stop the container.
	```sh
	docker compose -f docker-compose-db2.yml down --volumes
	```