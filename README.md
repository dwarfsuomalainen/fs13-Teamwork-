# Backend project

Our team has created a Library management system acording the requirements of an assignment. 
### Main features:
    - Users
    - Books
    - Fines
    - Authors
    - Reservations
    - Waitlist

## Completed parts

1. Design and documentation of the API endpoints created in a markdown file api_endpoints.md
2. ERD diagram for database.
The diagram shows a relationships between the entities:
- user can have different roles (librarian or customer)
- user can have many reservations
- book can have many authors and categories
- one user(customer) can get many reminders from system and also can get many fines in case of loss, damage a book o late return.


![Database ERD](Images/db_erd.png)


## Library Management System

1. Group members:
- Roman Bogoudinov
- Daniel Moreno Marquez
- Hung Hoang
- Anna Metsäpelto

2. Responsibilities
- Planning - Team
- ERD - Team
- Team management - Roman Bogoudinov
### Endpoints documentation and SQL queries:
- Users, Reminders - Hung Hoang
- Books - Roman Bogoudinov
- Authors, Publishers - Anna Metsäpelto
- Actions, Fines, Book actions, Auth JWT - Daniel Moreno 


## Project structure
```
.
├── Database
│   ├── Authors.sql
│   ├── Books_actions.sql
│   ├── Create_tables.sql
│   ├── Fines.sql
│   ├── Reminders.sql
│   └── Users.sql
├── Images
│   └── db_erd.png
├── README.md
└── api_endpoints.md
```