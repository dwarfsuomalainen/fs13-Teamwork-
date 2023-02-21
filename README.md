
# Library System Management

This is our Library System Management Design and Documentation Where we show our ERD and Endpoints.

- Made By:
    - [Roman Bogoudinov](https://github.com/dwarfsuomalainen)
    - [Daniel Moreno](https://github.com/DanielMM161)
    - [Anna Metsäpelto](https://github.com/annametsapelto)
    - [Hung Hoang](https://github.com/HungHoang108)
 
# Responsabilities
- Planning - **Team**
- ERD - **Team**
- Team management - [Roman Bogoudinov](https://github.com/dwarfsuomalainen)
- Endpoints documentation, tables testing and SQL queries: Users, Reminders - [Hung Hoang](https://github.com/HungHoang108)
- Endpoints documentation, tables testing and SQL queries: Books - [Roman Bogoudinov](https://github.com/dwarfsuomalainen)
- Endpoints documentation, tables testing and SQL queries: Authors, Publishers - [Anna Metsäpelto](https://github.com/annametsapelto)
- Endpoints documentation, tables testing and SQL queries: Actions, Fines, Book actions, Auth JWT, Readme Documentation - [Daniel Moreno](https://github.com/DanielMM161)
    
# Endpoint Navigation
<details>
	<summary><h2>Books<a name="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#books"></a></h2></summary>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-all-books">Get All Books</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-one-book">Get One Book</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#create-book">Create A Book</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#update-a-book">Update A Book</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#delete-book">Delete A Book</a></li>	
</details>
<details>
	<summary><h2>Books Actions<a name="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#books-actions"></a></h2></summary>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#borrow-a-book">Borrow A Book</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#return-a-book">Return A Book</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#extend-return-time">Extend Return Time</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#reserve-a-book">Reserve A Book</a></li>	
</details>
<details>
	<summary><h2>Fines<a name="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#fines-1"></a></h2></summary>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-all-fines">Get All Fines</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-one-fine">Get One Fine</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#create-fine">Create Fine</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#patch-fines">Patch Fines</a></li>	
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#delete-fines">Delete Fines</a></li>	
</details>
<details>
	<summary><h2>Auth JWT<a name="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#auth-jwt"></a></h2></summary>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#authentication">Authentication</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-user-session">Get User Session</a></li>	
</details>
<details>
	<summary><h2>User<a name="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#auth-jwt"></a></h2></summary>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-all-users">Get All Users</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-a-single-user">Get A Single User</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#check-email">Check Email</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#update-user">Update User</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#delete-user">Delete User</a></li>
</details>
<details>
	<summary><h2>Reminder<a name="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#auth-jwt"></a></h2></summary>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-all-reminders">Get All Reminders</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-a-single-reminder">Get A Single Reminder</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#create-reminder">Create A Reminder</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#delete-reminder">Delete Reminder</a></li>	
</details>
<details>
	<summary><h2>Authors<a name="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#auth-jwt"></a></h2></summary>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-all-authors">Get All Authors</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-one-author">Get One Author</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#create-author">Create Author</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#patch-authors">Patch Authors</a></li>	
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#delete-authors">Delete Authors</a></li>	
</details>
<details>
	<summary><h2>Publishers<a name="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#auth-jwt"></a></h2></summary>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-all-publishers">Get All Publishers</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-one-publisher">Get One Publisher</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#create-publisher">Create Publisher</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#patch-publishers">Patch Publisher</a></li>	
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#delete-publishers">Delete Publisher</a></li>	
</details>
<details>
	<summary><h2>Categories<a name="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#auth-jwt"></a></h2></summary>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-all-categories">Get All Categories</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#get-one-category">Get One Category</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#create-category">Create Category</a></li>
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#patch-categories">Patch Categories</a></li>	
	<li><a href="https://github.com/dwarfsuomalainen/fs13-Teamwork/tree/dev#delete-categories">Delete Categories</a></li>	
</details>

# Entity Relationship Diagram

The diagram shows a relationships between the entities:
- user can have different roles (librarian or customer)
- user can have many reservations
- book can have many authors and categories
- one user(customer) can get many reminders from system and also can get many fines in case of loss, damage a book or late return.

![Database ERD](Images/db_erd.png)

# Database

We stored our queries into the **Database** folder
Where you can find the next:
- **Create_tables**: All the queries to create the tables
- **Authors**: All queries related to authors (CRUD)
- **Books**: All queries related to books (CRUD)
- **Books actions**: All queries related to the actions with books (borrow, return, etc..)
- **Fines**: All queries related to fines (CRUD)
- **Reminders**: All queries related to reminders (CRUD)
- **Users**: All queries related to users (CRUD)

# Endpoints

# Books

## Get All Books

**[GET]** The Books endpoint return Books listed

**[URL]** https://api.libary.management/api/v1/books?{parameter}

### Header

- **Authorization**: none

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| author | string | Books filtered by author | Yes |
| user_id | Number | Books currently borrowed by user | Yes |
| status | String | Books filtered by status | Yes |
| category_name | String | Books filtered by category | Yes |
| release_year | Number | Book filtered by release year | Yes |

### Response

```json
[
	{
		"id": 1,
		"category_name": "programming and software development",
		"category_id": 23,
		"title": "Distributed Systems with Node.js: Building Enterprise-Ready Backend Services",
		"author": "John Doe",
		"description": "The book covers the process of development of distributed Systems with Node.js for Enterprise-Ready Backend Services" 
	},

...,

	{
		"id": 3699,
		"category_name": "databases",
		"category_id": 23,
		"title": "Database System Concepts",
		"author": "Abraham Silberschatz, Henry F. Korth, S. Sudarshan"
		"description": "Intended for a first course in databases at the junior or senior undergraduate, or first-year graduate, level, this book covers concepts and algorithms based on those used in commercial or experimental database systems." 
	}
]
```

- Filtered by author
    
    ### Body
    
    ```json
	{
		"author": "Scott W. Ambler, Pramod J. Sadalage"
	}
    ```
    
    ### Response
    
    ```json
	{		
		"id": 3700,
		"category_id": "databases",
		"category_name": 25,
		"title": "Refactoring Databases: Evolutionary Database Design",
		"author": "Scott W. Ambler, Pramod J. Sadalage"
		"description": "Refactoring has proven its value in a wide range of developmentprojects, helping software professionals improve system designs, maintainability, extensibility, and performance." 
	}
    ```
    
- Filtered by user
    
    ### Body
    
    ```json
	{
		"user_id": 8767
	}
    ```
    
    ### Response
    
    ```json
	{
		"id": 3700,
		"title": "Refactoring Databases: Evolutionary Database Design"
	}
    ```
    
- Filtered by status
    
    ### Body
    
    ```json
	{
		"status": "borrowed"
	}
    ```
    
    ### Response
    
    ```json
	{		
		"id": 3700,
	}
    ```
    
- Filtered by category
    
    ### Body
    
    ```json
	{
		"category_name": "databases"
	}
    ```
    
    ### Response
    
    ```json
	{		
		"id": 3700,
		"title": "Refactoring Databases: Evolutionary Database Design"
	}
    ```
    
- Filtered by release year
    
    ### Body
    
    ```json
	{
		"release_year": "2006"
	}
    ```
    
    ### Response
    
    ```json
	{		
		"id": 3700,
		"title": "Refactoring Databases: Evolutionary Database Design"
	}
    ```
    

## Get One Book

**[GET]** The Book endpoint return one Book

**[URL]** https://api.libary.management/api/v1/books/{id}

### Header

- **Authorization**: none

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | ID of Book | Yes |

### Response

```json
{
	"id": 3699,
	"category_name": "databases",
	"category_number": 0.14,
	"title": "Database System Concepts",
	"author": "Abraham Silberschatz, Henry F. Korth, S. Sudarshan"
	"description": "Intended for a first course in databases at the junior or senior undergraduate, or first-year graduate, level, this book covers concepts and algorithms based on those used in commercial or experimental database systems." 
}
```

## Create Book

**[POST]** You can create a new book sending a object like the following /book/

**[URL]** https://api.libary.management/api/v1/books/

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | String | Required. Your API key |

### Body

```json
{
	"category_name": "databases",
	"category_number": 0.14,
	"title": "Refactoring Databases: Evolutionary Database Design",
	"author": "Scott W. Ambler, Pramod J. Sadalage"
	"description": "Refactoring has proven its value in a wide range of developmentprojects, helping software professionals improve system designs, maintainability, extensibility, and performance." 
}
```

### Response

```json
{
	"id": 3700,
	"category_name": "databases",
	"category_number": 0.14,
	"title": "Refactoring Databases: Evolutionary Database Design",
	"author": "Scott W. Ambler, Pramod J. Sadalage"
	"description": "Refactoring has proven its value in a wide range of developmentprojects, helping software professionals improve system designs, maintainability, extensibility, and performance." 
}
```

## Update a Book

**[PATCH]** The Books endpoint allows changing fields of one Book

**[URL]** https://api.library.management/api/v1/books/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | ID of Book | Yes |

### Body

```json
{
	"author": "Abraham Silberschatz, Henry F. Korth"
}
```

### Response

```json
{
	"id": 3699,
	"category_id": "databases",
	"category_number": 0.14,
	"title": "Database System Concepts",
	"author": "Abraham Silberschatz, Henry F. Korth"
	"description": "Intended for a first course in databases at the junior or senior undergraduate, or first-year graduate, level, this book covers concepts and algorithms based on those used in commercial or experimental database systems." 
}
```

## Delete Book

**[DELETE]** The Book endpoint allows to delete book

**[URL]** https://api.libary.management/api/v1/books/{id}

**[MULTIPLE DELETES]** Adds the ids separate by **‘,’:**  https://api.libary.management/api/v1/book/1,2,3

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Required. ID of the book | Yes |

### Response

```json
{
	"book_deleted": true
}
```

# 
**Books Actions**************************

## Borrow A Book

**[POST]** You can borrow a book sending a object like the following

**[URL]** https://api.library.management/api/v1/books/borrow

### Header

- **Authorization**: Bearer {api_key}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Body

```json
{
	"book_copy_id": 30,
	"user_id": 25,
}
```

### Response

```json
{
	"id": 1,
	"first_name": "Daniel"
	"title": "Harry Potter - The chamber of secret",
	"start_date": "17/02/2023"
	"end_date": "03/03/2023"
	"return_status" false
}
```

## Return A Book

**[PUT]** You can return a book sending a object like the following

**[URL]** https://api.library.management/api/v1/books/return

### Header

- **Authorization**: Bearer {api_key}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Body

```json
{
	"book_copy_id": 30,
	"user_id": 25,
}
```

### Response

```json
{
	"id": 1,
	"first_name": "Daniel"
	"title": "Harry Potter - The chamber of secret",
	"start_date": "17/02/2023"
	"end_date": "03/03/2023"
	"return_status" true
}
```

## Extend Return Time

**[PATCH]** You can extend the time of a book sending a object like the following

**[URL]** https://api.library.management/api/v1/books/return/{book_copy_id}

### Header

- **Authorization**: Bearer {api_key}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Body

```json
{
	"endDate": "07/03/2023"
}
```

### Response

```json
{
	"id": 1,
	"first_name": "Daniel"
	"title": "Harry Potter - The chamber of secret",
	"start_date": "17/02/2023"
	"end_date": "10/03/2023"
	"return_status" false
}
```

## Reserve a Book

**[POST]** You can reserve a book sending a object like this

**[URL]** https://api.library.management/api/v1/books/reserve/{book_copy_id}

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| book_copy_id | Number | Indentifier a single book_copy_id | Yes |

### Header

- **Authorization**: Bearer {api_key}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Response

```json
{
	"id": 1,
	"first_name": "Daniel"
	"title": "Harry Potter - The chamber of secret",
	"start_date": "17/02/2023"
	"reservation_status": "ready to be borrowed"
}
```

## Fines

### Get All Fines

**[GET]** The F******ines****** endpoint return **Fines** listed, allowing queries bases on **********Fines********** purpose

**[URL]** https://api.library.management/api/v1/fines

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description |
| --- | --- | --- |
| user_id | Number | Id of the user |
| book_id | Number | Id of the book |
| fine_type | String | “lost” | “damaged” | “lost” |
| fine_amount | Number | Amount of the fine |

### Response

```json
[
	{
		"id": 6,
		"user_name": "Daniel"
		"book_title": "Harry Potter and the chamber of secrets",
		"fine_type" "damaged",
		"amount": 50
	},
	{
		"id": 7
		"user_name": "Roman"
		"book_title": "Harry Potter - the philosopher's stone",
		"fine_type" "lost",
		"amount": 100
	}
]
```

## Get One Fine

**[GET]** The F******ines****** endpoint return one ********Fine********, allowing queries bases on **********Fines********** purpose

**[URL]** https://api.library.management/api/v1/fines/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Indentifier of Fine | Yes |

### Response

```json
{
	"id": 6,
	"user_name": "Daniel"
	"book_title": "Harry Potter and the chamber of secrets",
	"fine_type" "damaged",
	"amount": 50
}
```

## Create Fine

**[POST]** You can create a new fine sending a object like the following /fines/

**[URL]** https://api.library.management/api/v1/fines/

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Body

```json
{
	"user_id": 123,
	"book_id": 12,
	"fine_type": "lost",
	"amount": 50
}
```

### Response

```json
{
	"id": 6,
	"user_name": "Daniel"
	"book_title": "Harry Potter and the chamber of secrets",
	"fine_type" "damaged",
	"amount": 50
}
```

## Patch Fines

**[PATCH]** The ************Fines************ endpoint allows changing state of one ********Fine********

**[URL]** https://api.library.management/api/v1/fines/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | ID of fine | Yes |

### Body

```json
{
	"fine_type": "lost",
	"amount": 100,
}
```

### Response

```json
{
	"id": 6,
	"user_name": "Daniel"
	"book_title": "Harry Potter and the chamber of secrets",
	"fine_type" "lost",
	"amount": 100
}
```

## Delete Fines

**[DELETE]** The fines endpoint allows to delete fines

**[URL]** https://api.library.management/api/v1/fines/{id}

**[MULTIPLE DELETES]** Adds the ids separate by **‘,’:**  https://api.library.management/api/v1/fines/1,2,3

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Required. Id fine | Yes |

### Response

```json
{
	"status_process": true
}
```

# Auth JWT

## Authentication

**[POST]** You can do login sending an object like the following

**[URL]** https://api.library.management/api/v1/auth/login

### Body

```json
{
	"email": "team2@mail.com",
	"password": "team2",
}
```

### Response

```json
{
 	"access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTY3Mjc2NjAyOCwiZXhwIjoxNjc0NDk0MDI4fQ.kCak9sLJr74frSRVQp0_27BY4iBCgQSmoT3vQVWKzJg"
}
```

## Get User Session

**[POST]** You can get the profile the current user with session sending the access token

**[URL]** https://api.library.management/api/v1/auth/profile

### Header

- **Authorization**: Bearer {api_key}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Response

```json
{
	"id": 1,
  "first_name": "Team 2",
  "last_name": "Team 2 last name",
  "email": "team2@mail.com",
  "phone_number": "047877546",
  "creation_date": "17/02/2023"
}
```

# User

## Get All Users

**[GET]** The Users endpoint returns **a** list of users

[URL] https://api.library.management/api/v1/users

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Librarian API key |

### Parameter

| Parameter | Type | Description |
| --- | --- | --- |
| id | Number | User’s id |
| library_card | String | Library card |
| first_name | String | First name |
| last_name | String | Last name |
| email | String | Email |
| phone_number | String | Phone number |
| status | String | 'active | unactive | pending’ |
| created_at | Timestamp | Date of creation |

### Response

```json
[
	{
		"id": 6,
		"library_card": "2342325",
		"first_name": "John",
		"last_name": "Wiki",
		"email": "John@gmail.com",
		"phone_number": "1234555"
		"status": "active",
		"user_creation_date": "2023-02-20T00:00:00.000+00:00",
	},
	{
	...
	}
]
```

## Get A Single User

**[GET]** The user endpoint returns a single user

**[URL]** https://api.library.management/api/v1/users/{id}

### Header

- **Authorization**: Bearer {api_key}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | ID user | Yes |

### Response

```json
{
	"id": 6,
	"library_card": "2342325",
	"first_name": "John",
	"last_name": "Wiki",
	"email": "John@gmail.com",
	"phone_number": "1234555"
	"status": "active",
	"user_creation_date": "2023-02-20T00:00:00.000+00:00",
}
```

## Check email

**[POST]** This endpoint shows if a user is already registered

**[URL]** https://api.library.management/api/v1/users/is-available

### Body

```json
{
	"email": "hello@gmail.com
}
```

### Response

```json
{
	"isAvailable": false
}
```

## Create User

**[POST]** The user will be created by sending a post request to the below endpoint

**[URL]** https://api.library.management/api/v1/users

### Body

```json
{
	"first_name": "Nicolas",
	"last_name": "Jo",
	"library_card": "2323545",
	"email": "hello@gmail.com",
	"phone_number": "1234555"
}
```

### Response

```json
{
	"id": 6,
	"library_card": "2323545",
	"first_name": "Nicolas",
	"last_name": "Jo",
	"email": "hello@gmail.com",
	"phone_number": "1234555"
	"status": "active",
	"user_creation_date": "2023-02-20T00:00:00.000+00:00",
}
```

## Update User

**[PATCH]** The endpoint allows updating the user data

**[PATCH]** https://api.library.management/api/v1/users/{id}

### Header

- **Authorization**: Bearer {api_key}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | ID of user | Yes |

### Body

```json
{
	"email": "hello1@gmail.com",
	"phone_number": "121212"
}
```

### Response

```json
{
	"id": 6,
	"library_card": "2323545",
	"first_name": "Nicolas",
	"last_name": "Jo",
	"email": "hello1@gmail.com",
	"phone_number": "121212"
	"status": "active",
	"user_creation_date": "2023-02-20T00:00:00.000+00:00",
}
```

## Delete User

**[DELETE]** The endpoint allows deleting the user

**[URL]** https://api.library.management/api/v1/users/{id}

### Header

- **Authorization**: Bearer {librarian_api_key}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. librarian_api_key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | ID of user | Yes |

### Response

```json
{
	"user_deleted": true
}
```

# Reminder

## Get All Reminders

**[GET]** The endpoint returns **a** list of reminders

[**URL**] https://api.library.management/api/v1/reminders?{parameter}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description |
| --- | --- | --- |
| id | Number | Reminder’s id |
| user_id | Number | User’s id |
| sent_time | Timestamp | Date of sending reminder |
| sent_type | String | ‘due date | reservation’ |
| message | String | Message of reminder |

### Response

```json
[
	{
		"id": 6,
		"*user_id*": "2342325",
		"sent_type": "due date",
		"*message*": "test",
		"*sent_time*": "2023-02-20T00:00:00.000+00:00",
	},
	{
	...
	}
]
```

## Get A Single Reminder

**[GET]** The endpoint returns a single reminder

**[URL]** https://api.library.management/api/v1/reminders/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | ID reminder | Yes |

### Response

```json
{
	"id": 6,
	"*user_id*": "2342325",
	"sent_type": "due date",
	"*message*": "test",
	"*sent_time*": "2023-02-20T00:00:00.000+00:00"
}
```

## Create Reminder

**[POST]** The reminder will be created by sending a post request to the below endpoint

**[URL]** https://api.library.management/api/v1/reminders

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Body

```json
{
	"sent_type": "reservation availability",
	"*message*": "pick up date is available",
}
```

### Response

```json
{
	"id": 6,
	"*user_id*": "2342325",
	"sent_type": "reservation availability",
	"*message*": "pick up date is available",
	"*sent_time*": "2023-02-20T00:00:00.000+00:00"
}
```

## Delete Reminder

**[DELETE]** The endpoint allows deleting the reminder

**[URL]** https://api.library.management/api/v1/reminders/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | ID of reminder | Yes |

### Response

```json
{
	"reminder_deleted": true
}
```

# Authors

## Get All Authors

**[GET]** The Authors endpoint return Authors ****listed, allowing queries bases on Authors purpose

**[URL]** https://api.library.management/api/v1/authors?{parameters}

### Header

- **Authorization**: none

### Parameter

| Parameter | Type | Description |
| --- | --- | --- |
| first_name | String | First name of the author |
| last_name | String | Last name of the author |
| nationality | String | Nationality of the author |
| biography | String | Additional information about the author |

### Response

```json
[
	{
		"id": 6,
		"first_name": "J. R. R.",
		"last_name": "Tolkien",
		"nationality": "British",
		"biography": "Born in 1892 and died in 1973. The writer of The Hobbit and The Lord of the Rings trilogy."
	},
	{
		"id": 7,
		"first_name": "Robin",
		"last_name": "Hobb",
		"nationality" "American",
		"biography": "Born in 1952. Real name Margaret Astrid Lindholm Ogden."
	}
]
```

## Get One Author

**[GET]** The Authors endpoint return one Author, allowing queries bases on Authors purpose

**[URL]** https://api.library.management/api/v1/authors/{id}

### Header

- **Authorization**: none

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Indentifier of Fine | Yes |

### Response

```json
{
	"id": 7,
	"first_name": "Robin",
	"last_name": "Hobb",
	"nationality" "American",
	"biography": "Born in 1952. Real name Margaret Astrid Lindholm Ogden."
}
```

## Create Author

**[POST]** You can create a new Author sending a object like the following /authors/

**[URL]** https://api.library.management/api/v1/authors/

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Body

```json
{
	"first_name": "Reetta",
	"last_name": "Vuokko-Syrjänen",
	"nationality" "Finnish",
	"biography": "Born in 1985. Writes science fiction and fantasy."
}
```

### Response

```json
{
	"id": 8,
	"first_name": "Reetta",
	"last_name": "Vuokko-Syrjänen",
	"nationality" "Finnish",
	"biography": "Born in 1985. Writes science fiction and fantasy."
}
```

## Patch Authors

**[PATCH]** The Authors endpoint allows changing state of one Author

**[URL]** https://api.library.management/api/v1/authors/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | ID of Author | Yes |

### Body

```json
{
	"id": 8,
	"first_name": "Reetta",
	"last_name": "Vuokko-Syrjänen",
	"nationality" "Finnish",
	"biography": "Born in 1985. Writes science fiction and fantasy. Lives in Tampere."
}
```

### Response

```json
{
	"id": 8,
	"first_name": "Reetta",
	"last_name": "Vuokko-Syrjänen",
	"nationality" "Finnish",
	"biography": "Born in 1985. Writes science fiction and fantasy. Lives in Tampere."
}
```

## Delete Authors

**[DELETE]** The Author endpoint allows to delete authors

**[URL]** https://api.library.management/api/v1/authors/{id}

**[MULTIPLE DELETES]** Adds the ids separate by **‘,’:**  https://api.library.management/api/v1/authors/1,2,3

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Required. Id fine | Yes |

### Response

```json
{
	"author_deleted": true
}
```

# Publishers

## Get All Publishers

**[GET]** The Publishers endpoint return Publishers ****listed, allowing queries bases on Publishers purpose

**[URL]** https://api.library.management/api/v1/publishers

### Header

- **Authorization**: none

### Parameter

| Parameter | Type | Description |
| --- | --- | --- |
| id | Number | Id of the author in the database |
| name | String | The name of the publisher |

### Response

```json
[
	{
		"id": 6,
		"name": "Tammi"
	},
	{
		"id": 7,
		"name": "WSOY"
	}
]
```

## Get One Publisher

**[GET]** The Publishers endpoint return one Publisher, allowing queries bases on Publishers purpose

**[URL]** https://api.library.management/api/v1/publishers/{id}

### Header

- **Authorization**: none

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Indentifier of Fine | Yes |

### Response

```json
{
	"id": 7,
	"name": "Tammi"
}
```

## Create Publisher

**[POST]** You can create a new Publisher sending an object like the following /publishers/

**[URL]** https://api.library.management/api/v1/publishers/

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Body

```json
{
	"name": "Otava"
}
```

### Response

```json
{
	"id": 8,
	"name": "Otava"
}
```

## Patch Publishers

**[PATCH]** The Publishers endpoint allows changing state of one Publisher

**[URL]** https://api.library.management/api/v1/publishers/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Indentifier of publisher | Yes |

### Body

```json
{
	"id": 8,
	"name": "Otava Oy"
}
```

### Response

```json
{
	"id": 8,
	"name": "Otava Oy"
}
```

## Delete Publishers

**[DELETE]** The Publishers endpoint allows to delete publishers

**[URL]** https://api.library.management/api/v1/publishers/{id}

**[MULTIPLE DELETES]** Adds the ids separate by **‘,’:**  https://api.library.management/api/v1/publishers/1,2,3

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Required. Id fine | Yes |

### Response

```json
{
	"publisher_deleted": true
}
```

# Categories

## Get All Categories

**[GET]** The Categories endpoint return Categories ****listed, allowing queries bases on Categories purpose

**[URL]** https://api.library.management/api/v1/categories?{parameter}

### Header

- **Authorization**: none

### Parameter

| Parameter | Type | Description |
| --- | --- | --- |
| id | Number | Id of the author in the database |
| name | String | Name of the category |
| category_number | Number | The number of the category according to YKL |

### Response

```json
[
	{
		"id": 1,
		"category_name": "Books"
		"category_number": 0.00
	},
	{
		"id": 2,
		"category_name": "Bibliography"
		"category_number": 0.01
	}
]
```

## Get One Category

**[GET]** The Categories endpoint return one Category, allowing queries bases on Categories purpose

**[URL]** https://api.library.management/api/v1/categories/{id}

### Header

- **Authorization**: none

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Indentifier of Category | Yes |

### Response

```json
{
	"id": 2,
	"category_name": "Bibliography"
	"category_number": 0.01
}
```

## Create Category

**[POST]** You can create a new Category sending an object like the following /categories/

**[URL]** https://api.library.management/api/v1/categories

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Body

```json
{
	"category_name": "Library. Informatics"
	"category_number": 0.02
}
```

### Response

```json
{
	"id": 3,
	"category_name": "Library. Informatics"
	"category_number": 0.02
}
```

## Patch Categories

**[PATCH]** The Categories endpoint allows changing state of one Category

**[URL]** https://api.library.management/api/v1/categories/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Indentifier of Category | Yes |

### Body

```json
{
	"id": 3,
	"category_name": "Library. Library Science Informatics"
	"category_number": 0.02
}
```

### Response

```json
{
	"id": 3,
	"category_name": "Library. Library Science Informatics"
	"category_number": 0.02
}
```

## Delete Categories

**[DELETE]** The Categories endpoint allows to delete Categories

**[URL]** https://api.library.management/api/v1/categories/{id}

**[MULTIPLE DELETES]** Adds the ids separate by **‘,’:**  https://api.library.management/api/v1/categories/1,2,3

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

| Parameter | Type | Description | Required |
| --- | --- | --- | --- |
| id | Number | Required. Id fine | Yes |

### Response

```json
{
	"category_deleted": true
}
```

# Project structure
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
