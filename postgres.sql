heroku pg:psql -a name_of_database

\dt and \dv display tables/views in the database
\dt lists tables for public schema. To show tables of all schemas use \dt *.* and for a particular schema use \dt schema_name.*.

CREATE [OR REPLACE] VIEW name_of_view AS (<SQL query>);


DROP VIEW name_of_view [CASCADE]; --deletes the view, if CASCADE is written, all other objects depending on the view are deleted as well.

ALTER TABLE table_name DROP COLUMN column_name; -- to drop certain columns in a table, no usage needs to be re-granted after altering the tables.

GRANT SELECT ON view_flow_sessions_dog TO kianskolqhmzag;

REVOKE SELECT ON view_flow_sessions_dog FROM kianskolqhmzag;

-- CHECK THE PRIVILEGES:

SELECT grantee, privilege_type FROM information_schema.role_table_grants WHERE table_name = 'view_flow_sessions_dog';

CREATE SCHEMA crawler;

SELECT schema_name FROM information_schema.schemata; --check availability:

GRANT CREATE ON SCHEMA crawler TO data;
GRANT USAGE ON SCHEMA schema_name TO role_name;
GRANT SELECT ON ALL TABLES IN SCHEMA schema_name TO role_name;

-- Grant select to a user on all tables created by X, ensure user has access to any tables that will be created in the future by segment & data:

ALTER DEFAULT PRIVILEGES FOR USER table_owner GRANT SELECT ON TABLES TO table_reader;

--https://www.postgresql.org/docs/current/sql-alterdefaultprivileges.html


REVOKE USAGE ON SCHEMA schema_name FROM role_name;

ALTER TABLE table_name DROP COLUMN column_name; -- drop column 

