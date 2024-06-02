pages Table:
Column Name	Type
page_id	integer
page_name	varchar

pages Example Input:
page_id	page_name
20001	SQL Solutions
20045	Brain Exercises
20701	Tips for Data Analysts

page_likes Table:
Column Name	Type
user_id	integer
page_id	integer
liked_date	datetime

page_likes Example Input:
user_id	page_id	liked_date
111	20001	04/08/2022 00:00:00
121	20045	03/12/2022 00:00:00
156	20001	07/25/2022 00:00:00

Example Output:
page_id
20701


Select pages.page_id FROM pages left join page_likes on pages.page_id= page_likes.page_id where page_likes.liked_date is null order by
pages.page_id asc 

/*atau*/

SELECT pg.page_id
FROM pages pg
LEFT OUTER JOIN page_likes pl 
ON pg.page_id = pl.page_id
WHERE pl.page_id IS NULL;
