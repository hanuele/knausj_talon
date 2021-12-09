os: windows
app: microsoft_edge
win.title: /18027c26-f8c8-4ff3-8875-119e480336e6/
win.title: /CL-/
-

# Commands
case when:
    "CASE WHEN  END"
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
is not null: " IS NOT NULL"
is null: " IS NULL"
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
on columns: "ON "
order ascending: "ASC "
order by: "ORDER BY "
order descending: "DESC "
select every: "SELECT *"
#select: "SELECT "
union: "UNION "
update: "UPDATE"
using: "USING "
value null: "NULL"
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
    "WITH  AS ()"
    key(left enter:2 up:2 end left:5)
semi: key(end ;)
with no lock: "WITH (NOLOCK) "
declare unique: "DECLARE @variable uniqueidentifier = '';"
declare string: "DECLARE @variable nvarchar(50) = '';"
read view: 
    "select definition from sys.objects o join sys.sql_modules m on m.object_id = o.object_id where o.object_id = object_id( '')"
    key(left:2)