dockerizing django project

1. edit ./.env and ./postgres/init-user-db.sh to change username and password for postgres database.
2. edit ./docker-compose.yml to change postgres root user login and password.

Code of django app in ./web/app/

to run:

docker-compose up
