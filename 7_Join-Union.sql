/* Join:
- Inner join
- Left join: returns all rows where the two tables have matching entries, along with all of the rows in the left table (whether 
there is a match or not).
- Right join
- Full join: returns all rows from both tables. Note that in general, any row that does not have a match in both tables will 
have NULL entries for the missing values. */

query = """
SELECT o.Name AS Owner_Name, p.Name AS Pet_Name
FROM `bigquery-public-data.pet_records.owners` AS o
INNER JOIN `bigquery-public-data.pet_records.pets` AS p
ON p.ID = o.Pet_ID """

/* UNIONs
JOINs horizontally combine results from different tables. If you instead would like to vertically concatenate columns, you can 
do so with a UNION.
Note that with a UNION, the data types of both columns must be the same, but the column names can be different. 
We use UNION ALL to include duplicate values. If you'd like to drop duplicate values, you need only change UNION ALL in the 
query to UNION DISTINCT. */

query = """
SELECT Age FROM `bigquery-public-data.pet_records.pets`
UNION ALL
SELECT Age FROM `bigquery-public-data.pet_records.owners`
"""
