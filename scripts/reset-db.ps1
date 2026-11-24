# Rebuilds the database inside the oracle container.
# If you changed the passwords in .env, set $env:APP_USER and $env:APP_USER_PASSWORD first.
$user = if ($env:APP_USER) { $env:APP_USER } else { "cineverse" }
$pass = if ($env:APP_USER_PASSWORD) { $env:APP_USER_PASSWORD } else { "ChangeMe123" }

docker exec -w /db cineverse-oracle sqlplus "${user}/${pass}@//localhost/XEPDB1" "@run_all.sql"