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
├── docker-compose.yml # PostgreSQL service
├── .gitignore
└── README.md
```

---

## ⚙️ Installation & Configuration

### 🔧 Prérequis

- [Java JDK 21](https://www.oracle.com/java/technologies/downloads/)
- [Maven 3.9+](https://maven.apache.org/)
- [Docker & Docker Compose](https://www.docker.com/)
- [Eclipse IDE for Enterprise Java Developers or another IDE](https://eclipse.org/downloads/)

---

### 🐘 Démarrer la base de données PostgreSQL

```bash
docker-compose up -d
```
This launches a container named huremasys_db (port 5432).

Consider the following informations:
- DB name: huremasys
User: huremasys
Password: huremasyspwd

### Compile and run the backend
```bash
cd huremasys-backend
mvn clean install
```
Then deploy the .war to your Jakarta EE application server.

Once deployed:

- Test endpoint: http://localhost:8080/huremasys/api/test

Expected result :
```txt
{ "status": "ok" }
```

- Swagger / OpenAPI (coming soon) : http://localhost:8080/huremasys/api/openapi.json

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

💼 Name : [Gaspar da Rosa Francisco]

🎓 Profile : Software engineer — Développeur (Java) Full Stack

🔗 GitHub : https://github.com/Gasparfgf

LinkedIn : ...

---

## Autres

- [Development roadmap](https://github.com/Gasparfgf/huremasys/blob/1-set-up-project-and-infrastructure/huremasys-backend/doc/development.md)



