-- Drops every table, view and program in this schema.
-- Lets us re-run the whole setup from zero.
BEGIN
  FOR t IN (SELECT table_name FROM user_tables) LOOP
    EXECUTE IMMEDIATE 'DROP TABLE "' || t.table_name || '" CASCADE CONSTRAINTS PURGE';
  END LOOP;
  FOR o IN (SELECT object_name, object_type FROM user_objects
            WHERE object_type IN ('VIEW','PROCEDURE','FUNCTION','PACKAGE')) LOOP
    EXECUTE IMMEDIATE 'DROP ' || o.object_type || ' "' || o.object_name || '"';
  END LOOP;
END;
/