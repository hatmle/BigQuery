/* Using the keywords SELECT, FROM, and WHERE to get data from specific columns based on the conditions.
Data: small imaginary dataset pet_records which contains just one table, called pets (from bigquery-public-data project).

SELECT ... FROM : selects a single column from a single table.
- specify the column you want after the word SELECT
- specify the table after the word FROM.

For instance, to select the Name column (from the pets table): */
query = """
        SELECT Name
        FROM `bigquery-public-data.pet_records.pets`
        """

/* Note that when writing an SQL query, the argument we pass to FROM is not in single or double quotation marks (' or "). It is in backticks (`).

WHERE ...
BigQuery datasets are large, so you'll usually want to return only the rows meeting specific conditions. 
You can do this using the WHERE clause.

EX: The query below returns the entries from the Name column that are in rows where the Animal column has the text 'Cat'. */
query = """
        SELECT Name
        FROM `bigquery-public-data.pet_records.pets`
        WHERE Animal = 'Cat'
        """
