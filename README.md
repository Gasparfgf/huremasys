# Huremasys (Human Resources Management System)

> **Huremasys** is a full-stack web application for managing employees, leave, and payroll.
> This project demonstrates a modern business architecture based on **Jakarta EE**, **Hibernate**, **PostgreSQL**, and **Angular** (frontend coming soon).

---

## Project Objective

Huremasys aims to offer a simple, powerful, and secure solution for:
- Managing a company's employees
- Centralizing leave requests and approvals
- Generating and viewing payroll slips
- Providing a documented and secure RESTful API (JWT + Swagger)

---

## 🏗️ Technical Architecture

| Layer | Core Technology |
|---------|------------------------|
| **Backend API** | Jakarta EE 11 (JAX-RS, JPA) |
| **ORM** | Hibernate 6 |
| **Database** | PostgreSQL (via Docker) |
| **Authentication** | JWT (JSON Web Token) |
| **API Documentation** | Swagger / OpenAPI 3 |
| **Frontend (coming soon)** | Angular 18 |
| **BuildTool** | Maven |
| **Deployment (local)** | Serveur to be defined |
| **Versioning** | Git + GitHub |

---

## Project structure

```java
huremasys/
│
├── huremasys-backend/ # Code source Java Jakarta EE
│ ├── src/
│ ├── pom.xml
│ └── Dockerfile (coming soon)
│
├── bin/                   # Automation scripts
│ ├── build-backend.sh     # Clean and build the project with Maven
│ ├── stop-server.sh       # Stop Payara server
│ ├── start-server.sh      # Start Payara server
│ ├── deploy-backend.sh    # Deploy WAR on Payara
| └── run-all.sh			  # Build, start server & deploy
|
├── docker-compose.yml # PostgreSQL service
├── .gitignore
└── README.md
```

---

## ⚙️ Installation & Configuration

### 🔧 Prerequisites

- [Java JDK 17](https://www.oracle.com/java/technologies/downloads/)
- [Maven 3.9+](https://maven.apache.org/)
- [Docker & Docker Compose](https://www.docker.com/)
- An IDE. **Exemple**: [Eclipse IDE for Enterprise Java Developers or another IDE](https://eclipse.org/downloads/)
- [Payara Server 6 installed (payara/ folder at the root of the project)](https://payara.fish/downloads/payara-platform-community-edition/)
- [Swagger-UI](https://github.com/swagger-api/swagger-ui/releases)

### 🐘 Start the PostgreSQL database

```bash
docker-compose up -d
```
This launches a container named huremasys_db (port 5432).

Verify container

```bash
docker ps
```

Stop container

```bash
docker-compose down
```

### Compile and run the backend

1. If it's for the _first time_

```bash
./run-all.sh	# from project root > bin
```

2. Not the _first time_

Build Maven - Compile and package the application

```bash
./build-backend.sh	# from project root > bin
```

Then deploy the .war to Jakarta EE application server.

```bash
./deploy-backend.sh	# from project root > bin
```

> If you have problems with server, check this [document](https://github.com/Gasparfgf/huremasys/blob/main/huremasys-backend/doc/DEBUG.md) please !

Once deployed:

- Test endpoint: http://localhost:8080/huremasys/test

Expected result :
> { "status": "ok" }

### Swagger / OpenAPI

Interactive API documentation is available via MicroProfile OpenAPI, integrated with Payara.

- [JSON specification](http://localhost:8080/huremasys-backend/openapi)
- [Swagger UI](http://localhost:8080/huremasys-backend/openapi-ui)

---

## Planned modules

| Module             | Description                                 | Status       |
| ------------------ | ------------------------------------------- | ------------ |
| **Authentication** | JWT login/logout, role management         | 🏗️ In progress |
| **Employees**      | Full CRUD on employees               | 🔜           |
| **Leaves**         | Leave management and validation            | 🔜           |
| **Payroll**        | Pay slip generation and PDF export | 🔜           |
| **Dashboard**      | Real-time HR statistics               | 🔜           |

---

## 📘 API Documentation

Swagger UI (OpenAPI 3) will be available at: http://localhost:8080/huremasys/swagger-ui.html
(after full integration in week 2)

---

## 🧑‍💻 Auteur

💼 **Name** : Gaspar da Rosa Francisco

🎓 **Profile** : [Software engineer — Full Stack Developer](https://www.linkedin.com/in/gaspar-francisco-5a4639203/)

🔗 **GitHub** : [Gasparfgf](https://github.com/Gasparfgf)


---

## Autres

- [Development roadmap](https://github.com/Gasparfgf/huremasys/blob/main/huremasys-backend/doc/development.md)



