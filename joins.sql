/*SELECT u.id, u.username, u.first_name, u.last_name, u.created_at, u.updated_at
FROM users u;
-- STEP 1

SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, p.users_id
FROM posts p
WHERE p.users_id = 100;
-- STEP 2

SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, p.users_id, u.first_name, u.last_name
FROM posts p
JOIN users u
ON p.users_id = u.id
WHERE p.users_id = 200;
-- STEP 3

SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, p.users_id, u.username
FROM posts p
JOIN users u
ON p.users_id = u.id
WHERE u.first_name  = 'Norene'
AND u.last_name = 'Schmitt';
-- STEP 4

SELECT u.username
FROM users u
JOIN posts p
ON p.users_id = u.id
WHERE p.created_at > '2015-01-01' :: DATE;
-- STEP 5

SELECT p.title, p.content, u.username
FROM users u
JOIN posts p
ON p.users_id = u.id
WHERE p.created_at <'2015-01-01' :: DATE;
-- STEP 6

SELECT c.id, c.body, c.created_at, c.updated_at, c.users_id, c.posts_id, p.title "Post Title"
FROM comments c
JOIN posts p
ON c.posts_id = p.id;
-- STEP 7

SELECT  c.id, c.body "comment_body", c.created_at, c.updated_at, c.users_id, c.posts_id, p.title "post_title", p.url "post_url"
FROM comments c
JOIN posts p
ON c.posts_id = p.id
WHERE p.created_at <'2015-01-01' :: DATE;
-- STEP 8

SELECT  c.id, c.body "comment_body", c.created_at, c.updated_at, c.users_id, c.posts_id, p.title "post_title", p.url "post_url"
FROM comments c
JOIN posts p
ON c.posts_id = p.id
WHERE p.created_at >'2015-01-01' :: DATE;
-- STEP 9

SELECT  c.id, c.body "comment_body", c.created_at, c.updated_at, c.users_id, c.posts_id, p.title "post_title", p.url "post_url"
FROM comments c
JOIN posts p
ON c.posts_id = p.id
WHERE c.body LIKE '%USB%';*/
-- STEP 10

SELECT p.title "post_title", u.first_name , u.last_name, c.body "comment_body"
FROM posts p
JOIN users u
ON p.users_id = u.id
JOIN comments c
ON p.id = c.posts_id
WHERE c.body LIKE '%matrix%';
-- STEP 11

SELECT u.first_name, u.last_name, c.body "comment_body"
FROM comments c
JOIN users u
ON u.id = c.users_id
JOIN  posts p
ON c.posts_id = p.id
WHERE c.body LIKE '%SSL%' AND p.content LIKE '%dolorum%';
-- STEP 12

SELECT u.first_name "post_author_first_name", u.last_name "post_author_last_name", p.title "post_title", u.username "comment_author_username", c.body "comment_body"
FROM comments c
JOIN users u
ON c.users_id = u.id
JOIN posts p
ON c.posts_id = p.id
WHERE (c.body LIKE '%SSL%' OR c.body LIKE '%firewall%') AND p.content LIKE '%nemo%';