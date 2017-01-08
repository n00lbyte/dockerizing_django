dockerizing django project

Based on nginx, postgres and uwsgi.
All service in a different containers.

edit ./.env and ./postgres/init-user-db.sh to change username and password for postgres database (django user and root user).

Put code of django application in ./web/app/ (dont' forget migrate your models)

to run:

docker-compose up
check it: http:/127.0.0.1
