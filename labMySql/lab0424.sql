SELECT
    *,
    sum(`price` * `quantity`)
FROM
    `order_details`
WHERE
    `order_sid` = 11;

-- Maria DB能跑, mySQL 不行
SELECT
    `order_sid`,
    sum(`price` * `quantity`)
FROM
    `order_details`
WHERE
    `order_sid` = 11;

--
SELECT
    *
FROM
    `products`
    JOIN `categories` ON `products`.`category_sid` = `categories`.`sid`;

--
SELECT
    p.*,
    c.name
FROM
    products AS p
    JOIN categories AS c ON p.category_sid = c.sid;

--
SELECT
    p.*,
    c.name
FROM
    products p
    JOIN categories c ON p.category_sid = c.sid;

--recordSet join 兩張table 時, 有時候出現相同的欄位名稱, 可以重命名方便查看
SELECT
    p.*,
    c.name AS `newName`
FROM
    products p
    JOIN categories c ON p.category_sid = c.sid;

SELECT
    p.*,
    c.name `newName`
FROM
    products p
    JOIN categories c ON p.category_sid = c.sid;

--LEFT JOIN
SELECT
    p.*,
    c.`name` O_name
FROM
    `products` p
    LEFT JOIN `categories` c ON p.category_sid = c.sid;

SELECT
    p.*,
    c.`name` O_name
FROM
    `categories` c
    LEFT JOIN `products` p ON p.category_sid = c.sid;

SELECT
    c1.*,
    c2.*
FROM
    `categories` c1
    LEFT JOIN `categories` c2 ON c1.parent_sid = c2.sid;

SELECT
    c1.*,
    c2.name O_name
FROM
    `categories` c1
    LEFT JOIN `categories` c2 ON c1.parent_sid = c2.sid;

==
SELECT
    o.*,
    od.price,
    od.quantity,
    p.bookname
FROM
    orders o
    JOIN order_details od ON o.sid = od.order_sid
    JOIN products p ON od.product_sid = p.sid
WHERE
    o.member_sid = 1;

-- 每筆訂單的總quantity
SELECT
    order_sid,
    sum(quantity)
FROM
    `order_details`
GROUP BY
    order_sid;

--
SELECT
    p.*,
    c.`name`
FROM
    products p
    LEFT JOIN categories c ON p.category_sid = c.sid
WHERE
    c.name IS NULL;

--
SELECT
    *
FROM
    `products`
WHERE
    sid IN (6, 2, 3) --
SELECT
    *
FROM
    `orders`
WHERE
    `order_date` >= '2017-10-03'
    AND `order_date` < '2017-10-04';

--
SELECT
    `product_sid`,
    `price`
FROM
    `order_details`
WHERE
    `order_sid` = 11;

--
SELECT
    p.*,
    od.price od_price
FROM
    products p
    JOIN (
        SELECT
            `product_sid`,
            `price`
        FROM
            `order_details`
        WHERE
            `order_sid` = 11
    ) od ON p.sid = od.product_sid
SELECT
    p.*,
    od.price AS od_price
FROM
    products p
    JOIN(
        SELECT
            `product_sid`,
            `price`
        FROM
            `order_details`
        WHERE
            `order_sid` = 11
    ) od ON p.sid = od.product_sid;