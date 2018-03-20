# Family API

List of all the endpoints available and descriptions

## Users

| Ready? | HTTP | URI       | Description        |
| ------ | ---- | --------- | ------------------ |
| `yes`  | POST | /users    | creates a new user |
| `yes`  | GET  | /user/:id | returns a user     |
| `yes`  | PUT  | /user/:id | updates a user     |

## Families

| Ready? | HTTP | URI           | Description          |
| ------ | ---- | ------------- | -------------------- |
| `yes`  | POST | /families     | creates a new family |
| `yes`  | GET  | /families/:id | returns a user       |
| `yes`  | PUT  | /families/:id | updates a user       |

## Tasks

| Ready? | HTTP | URI       | Description                                         |
| ------ | ---- | --------- | --------------------------------------------------- |
| `-`    | POST | /task     | creates a new task and returns the new task created |
| `-`    | GET  | /tasks    | returns all the tasks                               |
| `-`    | GET  | /task/:id | returns a task where id === :id                     |
| `-`    | PUT  | /task/:id | updates a task where id === :id                     |
