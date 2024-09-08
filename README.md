# docker-compose-postgre-template

Welcome to the docker-compose-postgre-template! 🚀 This template provides a ready-to-use setup for running a PostgreSQL container with Docker Compose. It’s designed to help you get started quickly with PostgreSQL in a containerized environment.

## Features

- **Automatic Initialization:** If the PostgreSQL data directory is empty, the container will execute SQL scripts from the `docker-entrypoint-initdb.d` volume to initialize the database.
- **Persistent Data:** If the data directory is not empty (i.e., data already exists), the container will use the specified Docker volume to persist database data across container restarts.
- **Customizable:** Easily customize initialization scripts and volume paths to suit your project needs.

## Getting Started

### Prerequisites

Ensure you have Docker and Docker Compose installed on your system. You can find installation guides on the [Docker website](https://docs.docker.com/get-docker/).
