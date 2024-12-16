-- コメントが1件以上存在する質問の、タイトルとカテゴリと投稿日時の一覧（second.sql）
SELECT question.title as question_title, tag_category.name as category_name,
question.created_at as post_datetime
FROM questions as question
JOIN comments as comment on question.id = comment.question_id
JOIN tag_categories as tag_category on question.tag_category_id = tag_category.id
WHERE comment.id IS NOT NULL
GROUP BY question.id
HAVING COUNT(comment.id) > 0;
-- コメントが1件以上存在する質問だけ出るよう指定。
