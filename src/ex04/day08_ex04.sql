-- Session 1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- Session 2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- Session 1
SHOW TRANSACTION ISOLATION LEVEL;

-- Session 2
SHOW TRANSACTION ISOLATION LEVEL;

-- Session 1
SELECT * FROM pizzeria WHERE name IN('Pizza Hut');

-- Session 2
UPDATE pizzeria SET rating = 3.0 WHERE name IN('Pizza Hut');

COMMIT;

-- Session 1
SELECT * FROM pizzeria WHERE name IN('Pizza Hut');

COMMIT;

SELECT * FROM pizzeria WHERE name IN('Pizza Hut');

-- Session 2
SELECT * FROM pizzeria WHERE name IN('Pizza Hut');
