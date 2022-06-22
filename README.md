## Forum

### Objectives

This project consists of creating a web forum that allows:

- Communication between users.
- Associating categories to posts.
- Liking and disliking posts and comments.
- Filtering posts by your liked posts and categories.

### What I've Learned From This Project:

- The fundamentals of web:
  - HTML
  - HTTP
  - Sessions and cookies
- Using and [setting up Docker](https://docs.docker.com/get-started/)
  - Containerizing an application
  - Compatibility/Dependency
  - Creating images
- SQL language
  - Manipulation of databases
- The fundamentals of encryption

#### SQLite

In order to store the data in this project (users, posts, comments, etc.) I have decided to use the database library SQLite.

SQLite is a popular choice as an embedded database software for local/client storage in application software such as web browsers. It enables you to create a database as well as controlling it by using queries.

#### Authentication

For each client that registers or logs in, I have created a `login session` to access the forum and be able to add posts and comments. If the account is logged in elsewhere, the old session ID is deleted from the database, therefore logging the user out/revoking their access.

You should use cookies to allow each user to have only one opened session. Each of this sessions must contain an expiration date. It is up to you to decide how long the cookie stays "alive".

The requirements for user registration are as follows:

- Requires a valid email address
  - When the email is already registered, the user will be notified and prompted to enter a different email address
- Requires a username
- Requires a password
  - The password is encrypted when stored in the database for security reasons

#### Communication

Users are able to communicate to eachother through creating posts and comments.

- Only registered users are able to create posts and comments.
- When registered users are creating a post they can associate one or more categories to it.
  - The implementation and choice of the categories is up to you.
- The posts and comments should be visible to all users (registered or not).
- Non-registered users will only be able to see posts and comments.

#### Likes and Dislikes

Only registered users will be able to like or dislike posts and comments.

However, the number of likes and dislikes are visible by all users (registered or not).

#### Filter

I have implemented a filter mechanism, which allows the user to filter posts by:

- Categories
- Your posts
- Your liked posts

#### Docker

I've used Docker with this project, as I'm not too familiar with it, so I've used this project as a stepping-stone to help me understand the fundamentals.

### Project Outlines

For this project, I've set myself some outlines to follow:

- I must use **SQLite**.
- I must handle website errors and HTTP statuses.
- I must handle all sort of technical errors to ensure the user has a pleasant experience on the forum.
- The code must respect [**good coding practices and favour efficiency**](../good-practices/README.md).

### Allowed packages

I've limited myself to only use these packages to really maximise my understanding/growth throughout this project.

- All [standard Go](https://golang.org/pkg/) packages are allowed.
- [sqlite3](https://github.com/mattn/go-sqlite3)
- [bcrypt](https://pkg.go.dev/golang.org/x/crypto/bcrypt)
- [UUID](https://github.com/satori/go.uuid)
- 
