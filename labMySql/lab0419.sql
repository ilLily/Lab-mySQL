INSERT INTO
    `address_book` (
        `sid`,
        `name`,
        `mobile`,
        `email`,
        `line_id`,
        `birthday`,
        `address`,
        `created_at`
    )
VALUES
    (
        NULL,
        'Lily',
        '0905290001',
        'ilwidtu@gmail.com',
        'lily0209',
        '1986-02-09',
        'ad;slfkj;alsdkjf',
        CURRENT_TIMESTAMP
    );

INSERT INTO
    `address_book` (
        `sid`,
        `name`,
        `mobile`,
        `email`,
        `line_id`,
        `birthday`,
        `address`,
        `created_at`
    )
VALUES
    (
        NULL,
        'Lily',
        '0905290002',
        'ilwidftu@gmail.com',
        'lily0209',
        '1986-02-09',
        'ad;slfkj;alsdkjf',
        '2023-04-19 15:06:44'
    ),
    (
        NULL,
        'Lily',
        '0905290040',
        'ilkiku@gmail.com',
        'lily0209',
        NULL,
        'ad;slfkj;alsdkjf',
        '2023-04-19 15:03:36'
    ),
    (
        NULL,
        'Lily',
        '0905294002',
        'ilkidftu@gmail.com',
        'lily0209',
        NULL,
        'ad;slfkj;alsdkjf',
        '2023-04-19 15:06:44'
    ),
    (
        NULL,
        'Lily',
        '0905290780',
        'ilwxcvu@gmail.com',
        'lily0209',
        '1986-02-09',
        NULL,
        '2023-04-19 15:03:36'
    );

-- DELETE
-- DELETE FROM address_book WHERE `address_book`.`sid` = 3
DELETE FROM
    `address_book`
WHERE
    `sid` = 3