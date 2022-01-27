SELECT
    account_id,
    count(trans_id) AS num_of_transactions
FROM
    trans
WHERE
    account_id IN (
        SELECT
            account_id
        FROM
            account
        WHERE
            district_id IN (
                SELECT
                    a1
                FROM
                    district
                WHERE
                    a3 = 'central Bohemia'
            )
    )
GROUP BY
    1
ORDER BY
    2 DESC
LIMIT
    1;