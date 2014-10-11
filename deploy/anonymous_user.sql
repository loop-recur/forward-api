-- Deploy anonymous_user
-- requires: sessions
-- requires: speakers
-- requires: sponsors

BEGIN;


CREATE ROLE anonymous INHERIT;

GRANT USAGE ON SCHEMA "1" TO anonymous;

GRANT SELECT, REFERENCES ON ALL TABLES IN SCHEMA "1" TO anonymous;

GRANT anonymous TO auth;

COMMIT;
