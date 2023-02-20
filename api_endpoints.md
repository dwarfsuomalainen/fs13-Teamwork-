# Library System Endpoints
# Books

# Get All Books

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
    

# Get One Book

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
		"category_id": 23,
		"title": "Database System Concepts",
		"author": "Abraham Silberschatz, Henry F. Korth, S. Sudarshan"
		"description": "Intended for a first course in databases at the junior or senior undergraduate, or first-year graduate, level, this book covers concepts and algorithms based on those used in commercial or experimental database systems." 
	}
```

# Create Book

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
		"category_id": 23,
		"title": "Refactoring Databases: Evolutionary Database Design",
		"author": "Scott W. Ambler, Pramod J. Sadalage"
		"description": "Refactoring has proven its value in a wide range of developmentprojects, helping software professionals improve system designs, maintainability, extensibility, and performance." 
	}
```

### Response

```json
		"id": 3700,
		"category_name": "databases",
		"category_id": 23,
		"title": "Refactoring Databases: Evolutionary Database Design",
		"author": "Scott W. Ambler, Pramod J. Sadalage"
		"description": "Refactoring has proven its value in a wide range of developmentprojects, helping software professionals improve system designs, maintainability, extensibility, and performance." 
	}
```

# Update a Book

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
		"title": "Database System Concepts",
		"author": "Abraham Silberschatz, Henry F. Korth"
		"description": "Intended for a first course in databases at the junior or senior undergraduate, or first-year graduate, level, this book covers concepts and algorithms based on those used in commercial or experimental database systems." 
	}
```

# Delete Book
# Get All Fines

**[GET]** The F******ines****** endpoint return **Fines** listed, allowing queries bases on **********Fines********** purpose

**[URL]** https://api.libary.management/api/v1/fines

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
| fine_type | String | Type of the fines “burnt” | “broken” |
| fine_amount | Number | Amount of the fine |

### Response

```json
[
	{
		"id": 6,
		"userId": 25,
		"bookId": 30,
		"fineType" "broken",
		"amount": 50
	},
	{
		"id": 7,
		"userId": 15,
		"bookId": 20,
		"fineType" "burnt",
		"amount": 100
	}
]
```

# Get One Fine

**[GET]** The F******ines****** endpoint return one ********Fine********, allowing queries bases on **********Fines********** purpose

**[URL]** https://api.libary.management/api/v1/fines/{id}

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
	"id": 5,
	"userId": 10,
	"bookId": 15,
	"fineType" "broken",
	"amount": 30
}
```

# Create Fine

**[POST]** You can create a new fines sending a object like the following /fines/

**[URL]** https://api.libary.management/api/v1/fines/

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Body

```json
{
	"userId": 123,
	"bookId": 12,
	"fineType": "broke",
	"amount": 50
}
```

### Response

```json
{
	"id": 1,
	"userId": 123,
	"bookId": 12,
	"fineType" "broken",
	"amount": 50
}
```

# Patch Fines

**[PATCH]** The ************Fines************ endpoint allows changing state of one ********Fine********

**[URL]** https://api.libary.management/api/v1/fines/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

### Parameter

- **ID (Required):** Unique identifier for a fines

### Body

```json
{
	"fineType": "burnt",
	"amount": 100,
}
```

### Response

```json
{
	"id": 1,
	"userId": 123,
	"bookId": 12,
	"fineType" "burnt",
	"amount": 100
}
```

# Delete Fines

**[DELETE]** The fines endpoint allows to delete fines

**[URL]** https://api.libary.management/api/v1/fines/{id}

**[MULTIPLE DELETES]** Adds the ids separate by **‘,’:**  https://api.libary.management/api/v1/fines/1,2,3

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

# **************************Books Actions**************************

# Borrow A Book

**[POST]** You can borrow a book sending a object like the following

**[URL]** https://api.libary.management/api/v1/book/action/borrow

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
	"book_copy_id": 30,
	"user_id": 25,
	"start_date": "17/02/2023"
	"end_date": "03/03/2023"
}
```

# Return A Book

**[PATCH]** You can return a book sending a object like the following

**[URL]** https://api.libary.management/api/v1/book/action/return/{book_copy_id}

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
	"book_copy_id": 30,
	"user_id": 25,
	"start_date": "17/02/2023"
	"end_date": "03/03/2023"
}
```

# User

# Get All Users

**[GET]** The Users endpoint returns **a** list of users

[URL] https://api.library.management/api/v1/users

### Header

- **Authorization**: none

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

# Get A Single User

**[GET]** The user endpoint returns a single user

**[URL]** https://api.library.management/api/v1/users/{id}

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

# Check email

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

# Create User

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

# Update User

**[PATCH]** The ************************endpoint allows updating the user data

**[PATCH]** https://api.library.management/api/v1/users/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

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

# Delete User

**[DELETE]** The ************************endpoint allows deleting the user

**[URL]** https://api.library.management/api/v1/users/{id}

### Header

- **Authorization**: Bearer {api_key_librarian}

| Parameter | Type | Description |
| --- | --- | --- |
| api_key | string | Required. Your API key |

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

# Get All Reminders

**[GET]** The endpoint returns **a** list of reminders

[URL] https://api.library.management/api/v1/reminders

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

# Get A Single Reminder

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

# Create Reminder

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

# Delete Reminder

**[DELETE]** The ************************endpoint allows deleting the reminder

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
