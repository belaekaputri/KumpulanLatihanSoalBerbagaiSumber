/* DATA LEMUR LEVEL EASY */



viewership Table
Column Name	Type
user_id	integer
device_type	string ('laptop', 'tablet', 'phone')
view_time	timestamp

viewership Example Input
user_id	device_type	view_time
123	tablet	01/02/2022 00:00:00
125	laptop	01/07/2022 00:00:00
128	laptop	02/09/2022 00:00:00
129	phone	02/09/2022 00:00:00
145	tablet	02/24/2022 00:00:00

Example Output
laptop_views	mobile_views
2	3


with laptop as(select count(user_id) as laptop_views from viewership where device_type = 'laptop'),
     mobile as(select count(user_id) as mobile_views from viewership where device_type in ( 'tablet', 'phone') )

select laptop_views,mobile_views from laptop,mobile

/*atau*/

SELECT 
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views, 
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views 
FROM viewership;