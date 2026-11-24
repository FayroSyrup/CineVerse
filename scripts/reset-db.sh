#!/bin/bash
# Rebuilds the database inside the oracle container.
# If you changed the passwords in .env, export APP_USER and APP_USER_PASSWORD first.
APP_USER=${APP_USER:-cineverse}
APP_USER_PASSWORD=${APP_USER_PASSWORD:-ChangeMe123}

# MSYS_NO_PATHCONV stops Git Bash from changing /db into a Windows path
MSYS_NO_PATHCONV=1 docker exec -w /db cineverse-oracle \
  sqlplus "$APP_USER/$APP_USER_PASSWORD@//localhost/XEPDB1" @run_all.sql