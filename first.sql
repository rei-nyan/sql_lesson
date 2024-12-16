-- 質問のタイトルとユーザ名の一覧（first.sql）
SELECT
 q.title,u.name
FROM
 questions q
JOIN
 users u
ON
 q.id= u.id;
