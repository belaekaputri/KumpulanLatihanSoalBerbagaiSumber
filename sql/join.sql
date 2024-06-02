/* 
Table_A                             Table_B
---------------                     -----------------------        
 ID  | UserName                     ID  | Position
 ---------------                    -----------------------
 1   | Rudy                         3   | Business Anaylist
 2   | Kevin                        4   | Programmer
 3   | Anton                        5   | Technical Support
 4   | Toni                         6   | Programmer
 5   | Richard                      7   | System Analyst

*/
Select * from Table_A inner join Table_B on Table_A.ID= Table_B.ID
/*--------------------------------------
  ID |UserName | ID | Position         |
  --------------------------------------
  3  |Anton    | 3  | Business Anaylist|
  4  |Toni     | 4  | Programmer       |
  5  |Richard  | 5  | Technical Support|
  --------------------------------------*/
Select * from Table_A left join Table_B on Table_A.ID= Table_B.ID
/*--------------------------------------
  ID |UserName | ID | Position         |
  --------------------------------------
  1  |Rudy     |Null| Null             |
  2  |Kevin    |Null| Null             | 
  3  |Anton    | 3  | Business Anaylist|
  4  |Toni     | 4  | Programmer       |
  5  |Richard  | 5  | Technical Support|
  --------------------------------------
*/
Select * from Table_A right join Table_B on Table_A.ID= Table_B.ID
/*--------------------------------------
  ID |UserName | ID | Position         |
  --------------------------------------
  3  |Anton    | 3  | Business Anaylist|
  4  |Toni     | 4  | Programmer       |
  5  |Richard  | 5  | Technical Support|
 Null|Null     | 6  | Programmer       |
 NUll|Null     | 7  | System Analyst   |
  --------------------------------------
*/




