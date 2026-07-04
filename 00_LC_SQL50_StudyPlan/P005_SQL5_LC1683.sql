-- https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50

Select 
tweet_id
from Tweets
where LEN(content) > 15