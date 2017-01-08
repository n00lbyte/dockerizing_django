dockerizing django project

Based on nginx, postgres and uwsgi.
All service in a different containers.



nginx:
	Docker image: nginx:latest
	
	To customize conf edit ./nginx/sites-enabled/app_nginx.conf and ./nginx/uwsgi_params (for uwsgi params)

	nginx logs will be in ./logs

postgres:

	postgres:latest

	Postgres data will be stored at ./pgdata.
	
	Edit ./postgres/init-user-db.sh for creation django user.

	Edit ./.env  (DB_USER and DB_PASS must be same that in ./postgres/init-user-db.sh, POSTGRES_USER and POSTGRES_PASSWORD - postgres root user auth)
	

web:
	based on python:latest
	
	To customize uwsgi edit ./web/app_uwsgi.ini

	Django application code in ./web/app/ (if you are using existing project dont' forget migrate your models)
	

to run:

docker-compose up

check it: http:/127.0.0.1
