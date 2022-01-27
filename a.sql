SELECT
    account_id,
    (
        SELECT
            floor(avg(count(account_id)))
    ) AS no_trans_above_avg
FROM
    trans
GROUP BY
    1
HAVING
    no_trans_above_avg > (
        SELECT
            *
        FROM
            avg_count_trans
    )
ORDER BY
    2 DESC
LIMIT
    10;