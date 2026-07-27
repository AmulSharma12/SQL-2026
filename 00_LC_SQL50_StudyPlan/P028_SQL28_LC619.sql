-- https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50

-- 619. Biggest Single Number

Select MAX(num) as 'num'
From (

    Select 
    m.num
    from MyNumbers m
    group by m.num
    having Count(m.num) = 1

) t