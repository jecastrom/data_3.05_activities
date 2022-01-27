SELECT
    DISTINCT account_id
FROM
    account
WHERE
    district_id IN (
        SELECT
            DISTINCT A1
        FROM
            district
        WHERE
            A3 = 'central Bohemia'
    )
LIMIT
    10;