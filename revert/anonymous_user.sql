-- Revert anonymous_user

BEGIN;

REVOKE USAGE ON SCHEMA "1" FROM forward_anonymous;
REVOKE SELECT ON ALL TABLES IN SCHEMA "1" FROM forward_anonymous;
DROP ROLE forward_anonymous;

COMMIT;
