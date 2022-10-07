CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

-- sample
CREATE TABLE products (
	id INT NOT NULL ,
  name STRING,
  price MONEY,
  PRIMARY KEY (id)
  )


--   insert
INSERT INTO products 
VALUES (1,"Pen",1.20)

-- or
INSERT into products (id,name)
VALUES (2,"Pencil")


-- select
SELECT name,price FROM products 

SELECT name,price,id FROM products 

SELECT * FROM products WHERE id=1


-- update
UPDATE products
SET price = 0.8
WHERE id=2


-- alter or add
ALTER TABLE products
add stock INT

UPDATE products
set stock = 32
WHERE id = 1



[
  {
    "ID": 1,
    "Name": "https://SQL.BanD",
    "Hint": "The most secure, fast, efficient web-sql client"
  },
  { "ID": 2, "Name": "SQL Online", "Hint": "Next gen SQL editor" },
  {
    "ID": 3,
    "Name": "Kirill N.",
    "Hint": "https://www.linkedin.com/in/sqliteonlinecom"
  },
  { "ID": 4, "Name": "Twitter", "Hint": "https://twitter.com/SqliteOnlineCom" },
  {
    "ID": 5,
    "Name": "Chart",
    "Hint": "LINE-SELECT name, cos(id), sin(id) FROM demo;"
  },
  {
    "ID": 6,
    "Name": "Short CODE",
    "Hint": "s* tableName => SELECT * FROM tableName\r\nsf tableName => SELECT columns FROM tableName\r\nsc tableName => SELECT count(*) FROM tableName\r\nsl tableName => SELECT * FROM tableName ORDER BY key DESC LIMIT 100;\r\nct => CREATE TABLE\r\nii tableName => INSERT INTO\r\nus tableName => UPDATE SET\r\nuw tableName => UPDATE SET WHERE\r\ndf tableName => DELETE FROM\r\ndw tableName => DELETE FROM WHERE"
  },
  { "ID": 7, "Name": "SqLite 3.39.3", "Hint": "SQL OnLine on JavaScript" },
  {
    "ID": 8,
    "Name": "[RightClick] mouse",
    "Hint": "Opens many additional features"
  },
  {
    "ID": 9,
    "Name": "Left-Panel, Table",
    "Hint": "[RightClick] mouse \"Context menu\""
  },
  {
    "ID": 10,
    "Name": "Tabs",
    "Hint": "mouse: [RightClick] , [MiddleClick] , [Wheel] , [LeftClick]"
  },
  {
    "ID": 11,
    "Name": "SQL Editor",
    "Hint": "autocomplete: [Ctrl-Space] or [Alt-Space]; run: [Shift-Enter]"
  },
  { "ID": 12, "Name": "Size table", "Hint": "Fast scroll million rows" },
  { "ID": 13, "Name": "Share", "Hint": "Create public link DB" },
  { "ID": 14, "Name": "9", "Hint": "Number of color themes" },
  { "ID": 15, "Name": "ai.Url", "Hint": "https://sqliteonline.com/LICENSE" },
  { "ID": 16, "Name": "ai.Color", "Hint": "#9393ad" },
  {
    "ID": 17,
    "Name": "ai.Image",
    "Hint": "Blob - png, jpg, gif or String(base64) [DbClick] row"
  },
  { "ID": 18, "Name": "SQL", "Hint": "Syntax example library" },
  {
    "ID": 19,
    "Name": "CREATE",
    "Hint": "CREATE TABLE table_name (col1, col2)"
  },
  { "ID": 20, "Name": "SELECT", "Hint": "SELECT * FROM table_name" },
  {
    "ID": 21,
    "Name": "INSERT",
    "Hint": "INSERT INTO table_name (col1, col2) VALUES (\"example\",\"test\")"
  },
  {
    "ID": 22,
    "Name": "UPDATE",
    "Hint": "UPDATE table_name SET col1=\"work\" WHERE col2=\"test\""
  },
  { "ID": 23, "Name": "DELETE", "Hint": "DELETE FROM table_name" }
]
