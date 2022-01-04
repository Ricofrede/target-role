# Target Role Webapp

## Introduction

This project is a simple website and webapp meant to create and share TTRPG content.

## Dependencies

- Strapi 4.0.2
- PostgreSQL 14.1
- Next.JS 12 (Yet to be implemented)

## Spinning It Up

- `make up`: Spins up the necessary containers.
- `make down`: Turn down containers and remove everything created with them. 
- `make rebuild`: Spins up the necessary containers forcing their docker images to rebuild.
- `make grant`: Grants admin access to all files in case you run into privilege problems.
- `make accessBack`: Access backend container.
- `make accessFront`: Access frontend container.
- `make install`: Install NPM packages inside the containers.
- `make installLocal`: Install NPM packages outside the containers.
- `make importDump`: Import the dump/dump.sql file into the database.
- `make exportDump`: Export the dump/dump.sql file from the database.
