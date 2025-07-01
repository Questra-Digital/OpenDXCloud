#!/usr/bin/env bash

DB_NAME=${ODOO_DB_NAME:-odoo}

# Reading Odoo Password from File
if [ -n "$PASSWORD_FILE" ] && [ -f "$PASSWORD_FILE" ]; then
  export ODOO_DB_PASSWORD=$(cat "$PASSWORD_FILE")
fi

echo "🔍 Checking if inventory modules are installed..."
PGPASSWORD=$ODOO_DB_PASSWORD psql -h odoo-db -U ${USER} -d $DB_NAME -tc "SELECT 1 FROM ir_module_module WHERE name='stock' AND state='installed';" | grep -q 1


if [ $? -ne 0 ]; then
  echo "⚙️  Modules not found, initializing database..."
  odoo -d $DB_NAME -r ${USER} -w ${ODOO_DB_PASSWORD} --db_host=${HOST} --db_port=${DB_PORT} -i $MODULES --without-demo=all --stop-after-init
  echo "✅ DB initialized."

else
  echo "✅ Inventory modules already installed. Skipping init."
fi
