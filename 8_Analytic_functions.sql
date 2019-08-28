/* Comparison
- Aggregate functions: perform calculations based on sets of rows. 
- Analytic functions: operate on a set of rows. However, unlike aggregate functions, analytic functions return a (potentially 
different) value for each row in the original table.
Analytic functions allow us to perform complex calculations with relatively straightforward syntax. For instance, we can 
quickly calculate moving averages and running totals, among other quantities.

Example
A small table containing data from two different people who are training for a race. 
- The id column identifies each runner, 
- The date column holds the day of the training session, and 
- Time shows the time (in minutes) that the runner dedicated to training. 
To calculate a moving average of the training times for each runner. */

query = """
    SELECT *,
      AVG(time) OVER(
                    PARTITION BY id
                    ORDER BY date
                    ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS avg_time
    FROM `bigquery-public-data.runners.train_time`
    """
    
                    
