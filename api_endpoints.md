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

**[GET]** https://api.libary.management/api/v1/users

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

**[GET]** https://api.libary.management/api/v1/users/{id}

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

# Create User

**[POST]** https://api.libary.management/api/v1/users/

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

**[PUT]** https://api.libary.management/api/v1/users/{id}

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

**[DELETE]** https://api.libary.management/api/v1/users/{id}

### Response

```json
true
```
