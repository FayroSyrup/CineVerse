# 🎬 CineVerse

### A Provenance-Enabled Movie Database System

CineVerse is a database-driven movie management system developed as an extension of the original **CSE302 CineVerse project** for the **CSE464 project**.

Beyond storing and managing movie information, CineVerse introduces **data provenance and change tracking** at the database level. It maintains a record of who changed what, when the change occurred, and why it was made through Oracle audit tables and database triggers.

The project demonstrates how database systems can provide accountability, traceability, and transparency while supporting a modern web-based application.

---

## ✨ Key Features

- **Movie Database Management** — Organize and manage movie-related information.
- **Change Auditing** — Track changes made to database records.
- **Data Provenance** — Maintain a history of who changed what, when, and why.
- **Database Triggers** — Automatically capture relevant data modifications.
- **Audit Tables** — Preserve historical records independently of current data.
- **REST API** — Connect the database with the frontend through a structured backend.
- **Web Interface** — Provide an interactive user interface for working with CineVerse.

## 🛠️ Technology Stack

| Layer | Technologies |
|---|---|
| Database | Oracle Database XE 21c |
| Database Environment | Docker |
| Backend | Node.js, Express.js, TypeScript |
| Frontend | Next.js |
| Database Logic | SQL, PL/SQL, Triggers |
| API Architecture | REST API |

## 📁 Project Structure

```text
CineVerse/
│
├── db/                     # Database scripts and PL/SQL logic
│   ├── schema/             # Database schema definitions
│   ├── audit/              # Audit tables and triggers
│   └── seed/               # Initial or sample data
│
├── server/                 # Backend REST API
│
├── client/                 # Next.js frontend application
│
├── docs/                   # Project documentation
│   ├── diagrams/           # ER diagrams and system diagrams
│   └── report/             # Academic project report
│
└── README.md
```

*Note: The subfolders above illustrate the intended organization; adjust them to match the actual repository structure.*

## 🏗️ System Architecture

CineVerse follows a layered architecture in which the frontend communicates with the backend API, while the backend interacts with Oracle Database.

```text
          ┌──────────────────────┐
          │     Next.js GUI      │
          │       (Client)       │
          └──────────┬───────────┘
                     │
                     │ HTTP / REST API
                     ▼
          ┌──────────────────────┐
          │   Express Backend    │
          │  Node.js + TypeScript│
          └──────────┬───────────┘
                     │
                     │ SQL / Database Operations
                     ▼
          ┌──────────────────────┐
          │   Oracle XE 21c       │
          │      (Docker)         │
          │                      │
          │  ┌────────────────┐  │
          │  │  Main Tables   │  │
          │  └────────────────┘  │
          │  ┌────────────────┐  │
          │  │  Audit Tables  │  │
          │  └────────────────┘  │
          │  ┌────────────────┐  │
          │  │ DB Triggers    │  │
          │  └────────────────┘  │
          └──────────────────────┘
```

## 🔍 Data Provenance & Auditing

A core objective of CineVerse is to make database changes traceable.

Whenever a monitored record is modified, database triggers capture the relevant change information in audit tables.

The audit mechanism is designed to record:

| Attribute | Description |
|---|---|
| Actor | Who performed the operation |
| Operation | Type of database operation (INSERT, UPDATE, DELETE) |
| Timestamp | When the change occurred |
| Record Reference | Which record was affected |
| Previous State | Relevant values before the change |
| New State | Relevant values after the change |
| Reason | Why the change was made, where supplied |

This provides a historical view of database modifications and supports accountability beyond the current state of the records.

## 🚀 Getting Started

### Prerequisites

Make sure the following tools are installed:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Node.js](https://nodejs.org/)
- [Git](https://git-scm.com/)
- [DBeaver](https://dbeaver.io/) or another Oracle-compatible database client

### 1. Clone the Repository

```bash
git clone <YOUR_REPOSITORY_URL>
cd CineVerse
```

### 2. Start Oracle Database

Start the Oracle XE 21c Docker container using the database configuration provided in the project.

Ensure that the database is accessible before proceeding with the backend setup.

### 3. Set Up the Database

Execute the SQL scripts in the appropriate order:

1. Create the database schema and tables.
2. Create the audit tables.
3. Configure the required sequences and procedures, if applicable.
4. Create and enable database triggers.
5. Insert initial or sample data.

Refer to the `db/` directory for the available scripts.

### 4. Configure the Backend

```bash
cd server
npm install
```

Create a `.env` file using the required environment variables documented by the backend.

Start the development server:

```bash
npm run dev
```

### 5. Configure the Frontend

Open another terminal:

```bash
cd client
npm install
npm run dev
```

Open the application in your browser at:

```text
http://localhost:3000
```

*The exact commands and environment variables may vary depending on the implementation.*

## 📚 Documentation

Project documentation and supporting materials are maintained in the `docs/` directory.

This may include:

- Project report
- Entity Relationship (ER) diagram
- Database schema documentation
- System architecture diagrams
- Data provenance and auditing workflow

## 🎓 Academic Context

CineVerse is developed for the **CSE464 project**, extending the original CineVerse application created for **CSE302**.

The project focuses on applying database concepts and implementation techniques, particularly:

- Database triggers
- PL/SQL programming
- Audit logging
- Data provenance
- Transactional data management
- Database-backed application development

## 👥 Contributors

Project team member: Fayroz Tasnim Rowza

## 📄 License

This project is developed for academic purposes. Licensing and reuse permissions can be specified here if applicable.

---

**CineVerse — More than a movie database. A traceable history of every change.**