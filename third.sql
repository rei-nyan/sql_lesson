-- カテゴリごとの質問数（third.sql）
SELECT tag_category.name as category_name,
COUNT(question.id) as question_count
FROM questions as question
JOIN tag_categories as tag_category on question.tag_category_id = tag_category.id
GROUP BY tag_category.id;