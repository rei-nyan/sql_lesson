-- 質問のタイトルとユーザ名の一覧（first.sql）
select q.title,u.name from questions q join users u on q.id= u.id;
