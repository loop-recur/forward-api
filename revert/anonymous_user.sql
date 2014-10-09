-- Revert anonymous_user

BEGIN;

REVOKE ALL ON SCHEMA "1" FROM forward_anonymous;
REVOKE ALL ON ALL TABLES IN SCHEMA "1" FROM forward_anonymous;
DROP ROLE forward_anonymous;

COMMIT;
