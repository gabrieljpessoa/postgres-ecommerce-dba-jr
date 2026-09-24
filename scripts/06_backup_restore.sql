-- Instruções de backup lógico usando ferramentas do Postgres
-- Nota: Estes comandos devem ser rodados no terminal do sistema operacional, não no client SQL.

-- Backup (Dump):
-- pg_dump -U postgres -d ecommerce_db -F c -f /caminho/do/backup/ecommerce_bkp.dump

-- Restore:
-- pg_restore -U postgres -d ecommerce_db -1 /caminho/do/backup/ecommerce_bkp.dump