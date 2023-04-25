-- create a new user
CREATE USER 'Lily' @'%' IDENTIFIED WITH mysql_native_password AS '***';

GRANT ALL PRIVILEGES ON *.* TO 'Lily' @'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

-- SELECT * FROM `products` ORDER BY `products`.`price` ASC
SELECT
    *
FROM
    `products`
ORDER BY
    `price`,
    `publish_date` DESC;