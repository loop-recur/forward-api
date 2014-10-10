-- Deploy anonymous_user
-- requires: sessions
-- requires: speakers
-- requires: sponsors

BEGIN;

CREATE ROLE forward_anonymous INHERIT;

GRANT USAGE ON SCHEMA "1" TO forward_anonymous;
GRANT SELECT, REFERENCES ON SCHEMA information_schema to forward_anonymous;

COMMIT;
