SELECT 
    CASE 
        WHEN pclass = 1 THEN 'first_class'
        WHEN pclass = 2 THEN 'second_class'
        WHEN pclass = 3 THEN 'third_class'
    END AS passenger_class,
    SUM(CASE WHEN survived = 1 THEN 1 ELSE 0 END) AS survivors,
    SUM(CASE WHEN survived = 0 THEN 1 ELSE 0 END) AS non_survivors
FROM 
    titanic
GROUP BY 
    pclass
ORDER BY 
    pclass
