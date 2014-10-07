-- Deploy anonymous_user
-- requires: sessions
-- requires: speakers
-- requires: sponsors

BEGIN;

CREATE ROLE forward_anonymous;

GRANT USAGE ON SCHEMA "1" TO forward_anonymous;
GRANT SELECT ON ALL TABLES IN SCHEMA "1" TO forward_anonymous;

COMMIT;
