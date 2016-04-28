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
5. Follow the YASP README to set up your environment, database, and pm2 services

Note: postgres, redis, cassandra, and yasp docker images should start up automatically through the vagrant provision process.
You should be able to skip any step that involves `docker run` in the README.

Current Progress
----

I have only tested that this setup successfully sets up all the dependencies needed to run the yasp web service.
