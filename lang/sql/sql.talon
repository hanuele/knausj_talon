os: windows
app: microsoft_edge
win.title: /18027c26-f8c8-4ff3-8875-119e480336e6/
win.title: /(CL)/
-

# Commands
created: "Created "
last update: "LastUpdate "
id: "ID "
title: "Title "
description: "Description "
parent id:"ParentID "
select top <number>: 
    "SELECT TOP("
    insert(number) 
    ") " 

case when:
    "CASE WHEN  END "
    key(left:4)
create table: "CREATE TABLE "
#delete: "DELETE "
distinct: "DISTINCT "
from: "FROM "
for system time: "FOR SYSTEM TIME "
group by: "GROUP BY "
having: "HAVING "
insert into:
    "INSERT INTO "
    key(enter:2)
    "VALUES "
    key(up:2 end)
is not null: " IS NOT NULL "
not is null: " IS NOT NULL "
is null: "IS NULL "
#
left join: "LEFT JOIN "
right join: "RIGHT JOIN "
full join: "FULL JOIN "
inner join: "INNER JOIN "
outer join: "OUTER JOIN "
normal join: "JOIN "
#
limit: "LIMIT "
not equals: " <> "
on columns: " ON "
order ascending: " ASC "
order by: "ORDER BY "
order descending: " DESC "
select every: "SELECT * FROM "
#select: "SELECT "
union$: "UNION "
union all: "UNION ALL "
update: "UPDATE "
using: "USING "
value null: "NULL "
where$: "WHERE "
where id in: 
    "WHERE ID IN ("
    key(enter:2)
    ")"
    key(up:1 tab)
    "''--"
    key(left:3)

where target id in: 
    "WHERE TargetID IN ("
    key(enter:2)
    ")"
    key(up:1 tab)
    "''--"
    key(left:3)

with as:
    " WITH  AS ()"
    key(left enter:2 up:2 end left:5)
semi: key(end ;)
with no lock: " WITH (NOLOCK) "
declare unique: 
    "DECLARE @variable uniqueidentifier = '';"
    key(left:2)
declare string: 
    "DECLARE @variable nvarchar(50) = '';"
    key(left:2)

read view: 
    "select definition from sys.objects o join sys.sql_modules m on m.object_id = o.object_id where o.object_id = object_id( '')"
    key(left:2)

collect meta information:
    "SELECT db_name() as DATABASE_NAME, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION,"
    key(space enter)
    "COLUMN_DEFAULT, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH,"
    key(space enter)
    "NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE,"
    key(space enter)
    "DATETIME_PRECISION"
    key(space enter)
    "FROM INFORMATION_SCHEMA.COLUMNS"

collect basic information:
    "SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME NOT IN ('created', 'id', 'description', 'parentid', 'title', 'lastupdate') ORDER BY TABLE_NAME, COLUMN_NAME, DATA_TYPE"
    key(space enter)

select basic:
    "SELECT ID, Title, Created, LastUpdate "

like: 
    " LIKE '%%'"
    key(left:2)