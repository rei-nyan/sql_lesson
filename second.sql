-- コメントが1件以上存在する質問の、タイトルとカテゴリと投稿日時の一覧（second.sql）
  SELECT
    q.title as question_title, t.name as category_name, q.created_at as post_datetime
  FROM
    questions as q
  JOIN
    comments as c
  ON q.id = c.question_id
  JOIN
    tag_categories as t
  ON q.tag_category_id = t.id
  GROUP BY
    q.id
  HAVING
    COUNT(c.id) > 0;
-- コメントが1件以上存在する質問だけ出るよう指定。