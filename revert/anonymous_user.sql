-- Revert anonymous_user

BEGIN;

REVOKE ALL ON SCHEMA "1" FROM anonymous;
REVOKE ALL ON ALL TABLES IN SCHEMA "1" FROM anonymous;

DROP ROLE anonymous;

COMMIT;
