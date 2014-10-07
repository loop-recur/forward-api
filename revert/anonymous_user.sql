-- Revert anonymous_user

BEGIN;

DROP ROLE forward_anonymous;

COMMIT;
