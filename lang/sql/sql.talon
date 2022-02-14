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
danger: "DELETE "
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
select star from: "SELECT * FROM "
#select: "SELECT "
union$: "UNION "
union all: "UNION ALL "
update: "UPDATE "
using: "USING "
value null: "NULL "
where$: "WHERE "
where ID in: 
    "WHERE ID IN ("
    key(enter:2)
    ")"
    key(up:1 tab)
    "''--"
    key(left:3)
where ID equals: 
    "WHERE ID = ''"
    key(left:1)

add entry:
    key(enter:1)
    "'"
    insert(clip.text())
    "', -- "

where target ID in: 
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
comment out: key(home - -) 
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

get meta information:
    "SELECT db_name() as DATABASE_NAME, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION,"
    key(space enter)
    "COLUMN_DEFAULT, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH,"
    key(space enter)
    "NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE,"
    key(space enter)
    "DATETIME_PRECISION"
    key(space enter)
    "FROM INFORMATION_SCHEMA.COLUMNS"

get basic information:
    "SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME NOT IN ('created', 'id', 'description', 'parentid', 'title', 'lastupdate') ORDER BY TABLE_NAME, COLUMN_NAME, DATA_TYPE"
    key(space enter)

select basic:
    "SELECT ID, Title, Created, LastUpdate "

like: 
    " LIKE '%%'"
    key(left:2)

reset worker from schedule: 
    "UPDATE ttx_Schedule set ScheduleWorkerID = '00000000-0000-0000-0000-000000000000' WHERE id = ''"
    key(left:1)

get changes:
    "DECLARE @CrossLoomAppID uniqueidentifier = '18027c26-f8c8-4ff3-8875-119e480336e6';SELECT ID,DevItem,Application,ObjectType,ItemID,CONVERT(NVARCHAR, Timestamp, 104) as Date, Message, COUNT(ID) as 'NrOfChanges',''''+ CAST(ID AS NVARCHAR(40))+''''+' --'+DevItem AS 'ObjectID' ,Dev FROM (SELECT c.ID as ID, c.Title as 'DevItem', COALESCE(tapp.AppAlias,dl.Title, ds.Title, dot.Title, dtsql.Title,dui.Title, '-') AS 'Application', o.Title as ObjectType, '../../'+CAST(l.AppID AS VARCHAR(36)) +'/object/'+CAST(c.ID AS VARCHAR(36)) as ItemID, l.Created AS 'Timestamp', l.Message AS 'Message', l.CreatedBy AS 'Dev'FROM ttx_Messages as l WITH (NOLOCK) INNER JOIN view_ttx_App_CrossLoom as c WITH (NOLOCK) ON l.ObjectID = c.ID AND l.AppID = @CrossLoomAppID INNER JOIN ttx_ObjectTypes as o WITH (NOLOCK) on c.ObjectTypeID = o.id INNER JOIN ttx_user as u WITH (NOLOCK) on u.SamAccountName = l.CreatedBY LEFT JOIN ttx_Dependency_Lookup dl WITH (NOLOCK) on dl.TargetID = c.ID LEFT JOIN ttx_Dependency_Script ds WITH (NOLOCK) on ds.TargetID = c.ID LEFT JOIN ttx_Dependency_TrustedSQL dtsql WITH (NOLOCK) on dtsql.TargetID = c.ID LEFT JOIN ttx_Dependency_UISnippet dui WITH (NOLOCK) on dui.TargetID = c.ID LEFT JOIN ttx_Dependency_ObjectType dot WITH (NOLOCK) on dot.TargetID = o.ID LEFT JOIN ttx_UI as tui WITH (NOLOCK) on c.ID = tui.ID LEFT JOIN ttx_Menu_Form as tmf WITH (NOLOCK) on tmf.ID = tui.ParentID LEFT JOIN ttx_Apps as tapp WITH (NOLOCK) on tapp.ID = tmf.ParentID ) tempResultr GROUP BY ID, DevItem, Application, ObjectType, ItemID, CONVERT(NVARCHAR, Timestamp, 104), Message, CONVERT(DATE, Timestamp), ''''+ CAST(ID AS NVARCHAR(40))+''''+' --'+DevItem,Dev Order By CONVERT(DATE, Timestamp) desc"

get version:
    "SELECT @@version"

table <user.datatable>$:
	insert('{datatable} ')


clear WASP dashboard:
	insert("delete FROM ttx_lookups WHERE title like 'WASP Dashboard -%';-- Delete superfluous test scripts")