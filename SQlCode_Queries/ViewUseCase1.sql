Create VIEW Engg_School AS
SELECT US_News_URL, Graduate_School_Name,Score
FROM top_engineering_school
WHERE Score >= 3;

Select * from Engg_School;