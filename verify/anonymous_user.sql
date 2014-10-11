-- Verify anonymous_user

BEGIN;

SELECT has_table_privilege('anonymous', '1.speakers', 'select');
SELECT has_table_privilege('anonymous', '1.sessions', 'select');
SELECT has_table_privilege('anonymous', '1.sponsors', 'select');

ROLLBACK;
