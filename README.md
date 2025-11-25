# Secure Voting System (GUVI Semester 3)

A secure, Java-based electronic voting system designed to ensure integrity and transparency in election processes.

## 🚀 Features
* **Voter Authentication:** Secure login mechanism for voters.
* **Real-time Tallying:** Instant calculation of votes.
* **Admin Dashboard:** Management interface for candidates and elections.
* **Secure Architecture:** Built to prevent double-voting and data tampering.

## 🛠️ Tech Stack
* **Backend:**  Java , SERVLET, JSP (Maven)
* **Frontend:** CSS, JavaScript
* **Database:** [ MySQL]
A secure, Java-based electronic voting system designed to ensure integrity and transparency in election processes.

## 🚀 Features
* **Voter Authentication:** Secure login mechanism for voters.
* **Real-time Tallying:** Instant calculation of votes.
* **Admin Dashboard:** Management interface for candidates and elections.
* **Secure Architecture:** Built to prevent double-voting and data tampering.

## 🛠️ Tech Stack
* **Backend:** Java (Maven)
* **Frontend:** HTML, CSS, JavaScript
* **Database:** [ MySQL]

## Project Structure
```
SecuredVoting/
├── .gitignore
├── pom.xml
├── mvnw
├── mvnw.cmd
├── HELP.md
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/securedvote/
│   │   │       ├── controllers/
│   │   │       │   ├── HelloServlet.java
│   │   │       │   ├── LoginServlet.java
│   │   │       │   ├── RegisterServlet.java
│   │   │       │   ├── VoteServlet.java
│   │   │       │   └── ResultsServlet.java
│   │   │       │
│   │   │       ├── dao/
│   │   │       │   ├── UserDAO.java
│   │   │       │   ├── CandidateDAO.java
│   │   │       │   └── VoteDAO.java
│   │   │       │
│   │   │       ├── models/
│   │   │       │   ├── User.java
│   │   │       │   ├── Candidate.java
│   │   │       │   └── Vote.java
│   │   │       │
│   │   │       └── utils/
│   │   │           └── DBConnection.java
│   │   │
│   │   ├── resources/
│   │   │   └── application.properties
│   │   │
│   │   ├── webapp/
│   │       ├── index.jsp
│   │       ├── login.jsp
│   │       ├── register.jsp
│   │       ├── dashboard.jsp
│   │       ├── vote.jsp
│   │       ├── results.jsp
│   │       ├── error.jsp
│   │       │
│   │       ├── css/
│   │       │   └── style.css
│   │       │
│   │       └── WEB-INF/
│   │           └── web.xml
│   │
│   └── test/
│       └── java/
│           └── com/securedvote/
│               └── dao/
│                   └── UserDAOTest.java
│
└── target/
    ├── SecuredVoting-1.0-SNAPSHOT.war
    └── ...build files...

```
## DATABASE SCHEMA
```sql
CREATE DATABASE secured_voting;
USE secured_voting;

-- Users table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('USER', 'ADMIN') NOT NULL DEFAULT 'USER'
);

-- Candidates table
CREATE TABLE candidates (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    party VARCHAR(100),
    votes INT NOT NULL DEFAULT 0
);

-- Votes table (1 user -> 1 vote)
CREATE TABLE votes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL UNIQUE,
    candidate_id INT NOT NULL,
    voted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (candidate_id) REFERENCES candidates(id)
);

-- Insert one admin
INSERT INTO users (username, password, role)
VALUES ('admin', 'admin123', 'ADMIN');

-- Some sample candidates
INSERT INTO candidates (name, party) VALUES
('Alice', 'Party A'),
('Bob', 'Party B'),
('Charlie', 'Party C');
```

## ⚙️ Installation & Setup
1. Clone the repository:
   ```bash
   git clone [https://github.com/JhaAryan07/GUVI-SEM-3.git](https://github.com/JhaAryan07/GUVI-SEM-3.git)







