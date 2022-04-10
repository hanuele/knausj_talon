mode: command
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
    user.paste("DECLARE @variable nvarchar(50) = '';")
    key(left:2)

read view: 
    command= '''select definition 
                from sys.objects o 
                join sys.sql_modules m on m.object_id = o.object_id 
                where o.object_id = object_id(\'\')'''
    key(left:2)

get meta information:
    command = '''SELECT db_name() as DATABASE_NAME
        , TABLE_SCHEMA
        , TABLE_NAME
        , COLUMN_NAME
        , ORDINAL_POSITION
        , COLUMN_DEFAULT
        , DATA_TYPE
        , CHARACTER_MAXIMUM_LENGTH
        , NUMERIC_PRECISION
        , NUMERIC_PRECISION_RADIX
        , NUMERIC_SCALE
        , DATETIME_PRECISION
        FROM INFORMATION_SCHEMA.COLUMNS'''
    user.paste(command)

get basic information:
    command = '''SELECT  TABLE_NAME
                  , COLUMN_NAME
                  , DATA_TYPE
                  FROM INFORMATION_SCHEMA.COLUMNS
                  WHERE COLUMN_NAME NOT IN (\'created\', \'id\', \'description\', \'parentid\', \'title\', \'lastupdate\')
                  ORDER BY TABLE_NAME, COLUMN_NAME, DATA_TYPE'''
    user.paste(command)

select basic:
    user.paste('''SELECT ID
                  , Title
                  , Created
                  , LastUpdate''')

like: 
    user.paste(''' LIKE \'%%\'''')
    key(left:2)

reset worker from schedule: 
    command = '''UPDATE ttx_Schedule
                  SET ScheduleWorkerID = '00000000-0000-0000-0000-000000000000'
                  WHERE id = \'\''''
    user.paste(command)
    key(left:1)

get changes:
    command = '''DECLARE @CrossLoomAppID uniqueidentifier = \'18027c26-f8c8-4ff3-8875-119e480336e6\';
                 SELECT ID
                 , DevItem
                 , Application 
                 , ObjectType
                 , ItemID
                 , CONVERT(NVARCHAR, Timestamp, 104) as Date
                 , Message
                 , COUNT(ID) as 'NrOfChanges'
                 , \'\'\'\'+ CAST(ID AS NVARCHAR(40))+\'\'\'\'+\' --\'+DevItem AS \'ObjectID\'
                 , Dev 
                 FROM (
                    \tSELECT c.ID as ID, c.Title as \'DevItem\'
                    \t, COALESCE(tapp.AppAlias,dl.Title, ds.Title, dot.Title, dtsql.Title,dui.Title, '-') AS \'Application\'
                    \t, o.Title as ObjectType,\'../../\'+CAST(l.AppID AS VARCHAR(36)) +\'/object/\'+CAST(c.ID AS VARCHAR(36)) as ItemID
                    \t, l.Created AS \'Timestamp\'
                    \t, l.Message AS \'Message\'
                    \t, l.CreatedBy AS \'Dev\'
                    \tFROM ttx_Messages as l WITH (NOLOCK)
                    \tINNER JOIN view_ttx_App_CrossLoom as c WITH (NOLOCK) ON l.ObjectID = c.ID AND l.AppID = @CrossLoomAppID
                    \tINNER JOIN ttx_ObjectTypes as o WITH (NOLOCK) on c.ObjectTypeID = o.id
                    \tINNER JOIN ttx_user as u WITH (NOLOCK) on u.SamAccountName = l.CreatedBY
                    \tLEFT JOIN ttx_Dependency_Lookup dl WITH (NOLOCK) on dl.TargetID = c.ID
                    \tLEFT JOIN ttx_Dependency_Script ds WITH (NOLOCK) on ds.TargetID = c.ID
                    \tLEFT JOIN ttx_Dependency_TrustedSQL dtsql WITH (NOLOCK) on dtsql.TargetID = c.ID
                    \tLEFT JOIN ttx_Dependency_UISnippet dui WITH (NOLOCK) on dui.TargetID = c.ID
                    \tLEFT JOIN ttx_Dependency_ObjectType dot WITH (NOLOCK) on dot.TargetID = o.ID
                    \tLEFT JOIN ttx_UI as tui WITH (NOLOCK) on c.ID = tui.ID
                    \tLEFT JOIN ttx_Menu_Form as tmf WITH (NOLOCK) on tmf.ID = tui.ParentID
                    \tLEFT JOIN ttx_Apps as tapp WITH (NOLOCK) on tapp.ID = tmf.ParentID 
                    ) tempResultr
                GROUP BY ID
                \t, DevItem
                \t, Application
                \t, ObjectType
                \t, ItemID
                \t, CONVERT(NVARCHAR, Timestamp, 104)
                \t, Message
                \t, CONVERT(DATE, Timestamp)
                \t, \'\'\'\'+ CAST(ID AS NVARCHAR(40))+\'\'\'\'+\' --\'+DevItem
                \t,Dev
                Order By CONVERT(DATE, Timestamp) desc'''
    user.paste(command)

get version:
    "SELECT @@version"

table <user.datatable>$:
	user.paste('{datatable} ')


clear WASP dashboard:
    command = '''DELETE FROM ttx_lookups
                 WHERE title LIKE \'WASP Dashboard -%\';-- Delete superfluous test scripts'''
	user.paste(command)
