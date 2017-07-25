SELECT u.id, u.username, u.first_name, u.last_name, u.created_at, u.updated_at
FROM users u;

SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, p.users_id
FROM posts p
WHERE p.users_id = 100;

SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, p.users_id, u.first_name, u.last_name
FROM posts p
JOIN users u
ON p.users_id = u.id
WHERE p.users_id = 200;

SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, p.users_id, u.username
FROM posts p
JOIN users u
ON p.users_id = u.id
WHERE u.first_name  = "Norene"
AND u.last_name = "Schmitt";

SELECT u.username
FROM users u
JOIN posts p
ON p.users_id = u.id
WHERE p.created_at > "2015-01-01" :: DATE;

SELECT p.title, p.content, u.username
FROM users u
JOIN posts p
ON p.users_id = u.id
WHERE p.created_at <"2015-01-01" :: DATE;

SELECT c.id, c.body, c.created_at, c.updated_at, c.users_id, c.posts_id, p.title "Post Title"
FROM comments c
JOIN posts p
ON c.posts_id = p.id;

SELECT  c.id, c.body, c.created_at, c.updated_at, c.users_id, c.posts_id,