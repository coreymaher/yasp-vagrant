YASP Vagrant
====

Overview
----

Unofficial VirtualBox Vagrant file to set up a YASP development environment.

Takes care of setting up:
- Ubuntu VM
- Dev Dependencies (OpenJDK 8, git, etc)
- NVM, Node.js, NPM
- Clones YASP repository from github
- Docker
- Docker images:
  - postgres
  - redis
  - cassandra

Quickstart
----

1. Clone this repo onto a host machine with VirtualBox installed.
2. Run `vagrant up`
3. Answer any questions it asks
4. SSH into the vm with `vagrant ssh`
5. Navigate to /home/yasp with `cd /home/yasp`
6. Follow the YASP README to set up your environment, database, and pm2 services
    1. Create your env file from the example: `cp .env_example .env` then edit it with your own values
    2. Initialize postgres: `docker exec -i postgres psql -- postgres://postgres@localhost < sql/init.sql`
    3. Create postgres tables: `docker exec -i postgres psql -- postgres://postgres@localhost/yasp < sql/create_tables.sql`
    4. Open a shell into the YASP container `docker exec -it yasp bash`
    5. Run the build script `npm run build`
    6. Start the services you like (i.e. start the web service with `pm2 start web.js --watch`)
    7. Open localhost:8080 in your host browser to view the web frontend

Note: postgres, redis, cassandra, and yasp docker images should start up automatically through the vagrant provision process.
You should be able to skip any step that involves `docker run` in the README.

Current Progress
----

I have only tested that this setup successfully sets up all the dependencies needed to run the yasp web service.
