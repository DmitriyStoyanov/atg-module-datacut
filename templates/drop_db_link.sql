BEGIN
   EXECUTE IMMEDIATE 'DROP DATABASE LINK @DATABASE_LINK@';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -1918 THEN
         RAISE;
      END IF;
END;
