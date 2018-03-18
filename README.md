# Family API

List of all the endpoints available and descriptions

## Users

| Ready? | HTTP | URI                     | Description                                         |
| ------ | ---- | ----------------------- | --------------------------------------------------- |
| `-`    | POST | /user                   | creates a new user and returns the new user created |
| `-`    | GET  | /users                  | returns all the users                               |
| `-`    | GET  | /user/:id               | returns a user where id === :id                     |
| `-`    | PUT  | /user/:id               | updates a user where id === :id                     |
| `-`    | GET  | /user/:id/tasks         | return all the tasks that belongs to the user       |
| `-`    | PUT  | /user/:id/task/:task_id | update a task that belongs to the user              |

## Task

| Ready? | HTTP | URI       | Description                                         |
| ------ | ---- | --------- | --------------------------------------------------- |
| `-`    | POST | /task     | creates a new task and returns the new task created |
| `-`    | GET  | /tasks    | returns all the tasks                               |
| `-`    | GET  | /task/:id | returns a task where id === :id                     |
| `-`    | PUT  | /task/:id | updates a task where id === :id                     |
