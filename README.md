# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

Here are my notes about how I created the wire5 Ruby on Rails web application

fallstechdave@mmrxps17:~/railsprojects/wire5$ date
Thu 07 Jul 2022 06:53:52 AM EDT
fallstechdave@mmrxps17:~/railsprojects/wire5$ pwd -P
/home/fallstechdave/railsprojects/wire5
fallstechdave@mmrxps17:~/railsprojects/wire5$ ls -latr
total 104
-rw-rw-r--  1 fallstechdave fallstechdave    6 Jul  1 06:14 .ruby-version
-rw-rw-r--  1 fallstechdave fallstechdave  227 Jul  1 06:14 Rakefile
-rw-rw-r--  1 fallstechdave fallstechdave  246 Jul  1 06:14 .gitattributes
-rw-rw-r--  1 fallstechdave fallstechdave 2356 Jul  1 06:14 Gemfile
-rw-rw-r--  1 fallstechdave fallstechdave  160 Jul  1 06:14 config.ru
drwxrwxr-x 10 fallstechdave fallstechdave 4096 Jul  1 06:14 test
drwxrwxr-x  2 fallstechdave fallstechdave 4096 Jul  1 06:14 storage
drwxrwxr-x  4 fallstechdave fallstechdave 4096 Jul  1 06:14 lib
-rw-rw-r--  1 fallstechdave fallstechdave 5591 Jul  1 06:14 Gemfile.lock
drwxrwxr-x  3 fallstechdave fallstechdave 4096 Jul  1 06:14 vendor
drwxrwxr-x 11 fallstechdave fallstechdave 4096 Jul  1 06:14 app
-rw-rw-r--  1 fallstechdave fallstechdave   63 Jul  1 06:14 Procfile.dev
-rw-rw-r--  1 fallstechdave fallstechdave  757 Jul  1 06:14 .gitignore
drwxrwxr-x  5 fallstechdave fallstechdave 4096 Jul  1 06:14 config
drwxr-xr-x  2 fallstechdave fallstechdave 4096 Jul  1 06:14 bin
drwxrwxr-x  3 fallstechdave fallstechdave 4096 Jul  1 06:32 db
drwxrwxr-x  6 fallstechdave fallstechdave 4096 Jul  1 06:32 tmp
drwxrwxr-x  4 fallstechdave fallstechdave 4096 Jul  2 12:53 ..
drwxrwxr-x  7 fallstechdave fallstechdave 4096 Jul  2 12:53 .git
drwxrwxr-x  2 fallstechdave fallstechdave 4096 Jul  6 07:23 log
drwxrwxr-x  3 fallstechdave fallstechdave 4096 Jul  6 07:32 public
drwxrwxr-x 14 fallstechdave fallstechdave 4096 Jul  7 06:52 .
-rw-rw-r--  1 fallstechdave fallstechdave 4018 Jul  7 06:53 wire5-development-mysqldump-20220707.sql
-rw-rw-r--  1 fallstechdave fallstechdave 5798 Jul  7 06:53 README.md
fallstechdave@mmrxps17:~/railsprojects/wire5$ 
fallstechdave@mmrxps17:~/railsprojects/wire5$ cat .ruby-version 
3.1.2
fallstechdave@mmrxps17:~/railsprojects/wire5$ 

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

Here are my notes about the laptop environment on which I created the wire5 Ruby on Rails web application

whoami                fallstechdave
hostname              mmrxps17
hostname -I           192.168.86.247 
nvm --version         0.39.1
node --version        v16.15.1
npm --version         8.11.0
yarn --version        1.22.19
rbenv --version       rbenv 1.2.0-14-gc6cc0a1
@uby --version        ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]
rails --version       Rails 7.0.3
git --version         git version 2.25.1
passenger --version   Phusion Passenger(R) 6.0.14
apache2 -v            Server version: Apache/2.4.41 (Ubuntu)   Server built:   2022-06-14T13:30:55
nginx -v              nginx version: nginx/1.18.0 (Ubuntu)
mysql --version       mysql  Ver 8.0.29 for Linux on x86_64 (MySQL Community Server - GPL)

fallstechdave@mmrxps17:~$ neofetch --off
fallstechdave@mmrxps17 
---------------------- 
OS: Ubuntu 20.04.4 LTS x86_64 
Host: XPS 17 9720 
Kernel: 5.13.0-52-generic 
Uptime: 5 mins 
Packages: 1808 (dpkg), 7 (snap) 
Shell: bash 5.0.17 
Resolution: 1920x1200 
DE: GNOME 
WM: Mutter 
WM Theme: Adwaita 
Theme: Yaru [GTK2/3] 
Icons: Yaru [GTK2/3] 
Terminal: gnome-terminal 
CPU: 12th Gen Intel i7-12700H (20) @ 5.900GHz 
GPU: Intel Device 46a6 
GPU: NVIDIA 01:00.0 NVIDIA Corporation Device 25a2 
Memory: 2068MiB / 15686MiB 

fallstechdave@mmrxps17:~$ 

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

Here is what I did at the MySQL prompt before creating the wire5 Rails application

CREATE USER 'railsuser'@'localhost' IDENTIFIED BY 'railsuserpw';

DROP DATABASE IF EXISTS wire5_development;
DROP DATABASE IF EXISTS wire5_test;
DROP DATABASE IF EXISTS wire5_production;
CREATE DATABASE wire5_development;
CREATE DATABASE wire5_test;
CREATE DATABASE wire5_production;
GRANT ALL PRIVILEGES ON wire5_development.* TO 'railsuser'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON wire5_test.* TO 'railsuser'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON wire5_production.* TO 'railsuser'@'localhost' WITH GRANT OPTION;

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

Here is what I did at the Linux command prompt to create the wire5 Rails application

cd ~/railsprojects
rails new wire5 --css tailwind -d mysql
cd wire5
vi ./config/database.yml

bin/rails generate scaffold Article \
title:string{4000} summary:string{4000} doc_num:string{100} \
image_caption:string{1000} has_attachments:boolean \
worldwide:boolean date_published:date producing_office:string \
country:string topic:string non_state_actor:string body:text

bin/rails db:create
bin/rails db:migrate
bin/rails db:migrate:status
bin/rails server

use browser to view http://127.0.0.1:3000/
use browser to view http://127.0.0.1:3000/articles

mysqldump -u root -p wire5_development > wire5-development-mysqldump-20220707.sql

RAILS_ENV=test       bundle exec rake db:create db:schema:load
RAILS_ENV=production bundle exec rake db:create db:schema:load

RAILS_ENV=test       bundle exec rake assets:precompile
RAILS_ENV=production bundle exec rake assets:precompile

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

Here are my notes on starting / running the wire5 Rails application

fallstechdave@mmrxps17:~/railsprojects/wire5$ bin/rails server
=> Booting Puma
=> Rails 7.0.3 application starting in development 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.6.4 (ruby 3.1.2-p20) ("Birdie's Version")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 8039
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop
^C- Gracefully stopping, waiting for requests to finish
=== puma shutdown: 2022-07-07 06:58:26 -0400 ===
- Goodbye!
Exiting
fallstechdave@mmrxps17:~/railsprojects/wire5$ 
fallstechdave@mmrxps17:~/railsprojects/wire5$ passenger status
Phusion Passenger(R) Standalone is not running, according to PID file /home/fallstechdave/railsprojects/wire5/tmp/pids/passenger.3000.pid
fallstechdave@mmrxps17:~/railsprojects/wire5$ 
fallstechdave@mmrxps17:~/railsprojects/wire5$ sudo /usr/sbin/passenger-memory-stats
Version: 6.0.14
Date   : 2022-07-07 06:59:14 -0400

--------- Apache processes ----------
PID   PPID  VMSize     Private  Name
-------------------------------------
1084  1     101.8 MB   2.8 MB   /usr/sbin/apache2 -k start
1145  1084  1982.5 MB  0.8 MB   /usr/sbin/apache2 -k start
1151  1084  1982.5 MB  0.8 MB   /usr/sbin/apache2 -k start
### Processes: 3
### Total private dirty RSS: 4.33 MB

-------- Nginx processes --------

### Processes: 0
### Total private dirty RSS: 0.00 MB

----- Passenger processes -----
PID   VMSize     Private  Name
-------------------------------
1086  296.1 MB   2.6 MB   Passenger watchdog
1089  3313.2 MB  5.1 MB   Passenger core
### Processes: 2
### Total private dirty RSS: 7.70 MB
fallstechdave@mmrxps17:~/railsprojects/wire5$ 
fallstechdave@mmrxps17:~/railsprojects/wire5$ sudo systemctl status apache2.service 
  apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
     Active: active (running) since Thu 2022-07-07 06:18:14 EDT; 43min ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 845 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
      Tasks: 108 (limit: 18739)
     Memory: 33.5M
     CGroup: /system.slice/apache2.service
             ├─1084 /usr/sbin/apache2 -k start
             ├─1086 Passenger watchdog
             ├─1089 Passenger core
             ├─1145 /usr/sbin/apache2 -k start
             └─1151 /usr/sbin/apache2 -k start

Jul 07 06:18:13 mmrxps17 systemd[1]: Starting The Apache HTTP Server...
Jul 07 06:18:13 mmrxps17 apachectl[880]: WARNING: PassengerDisableAnonymousTelemetry cannot occur within <VirtualHost> section
Jul 07 06:18:13 mmrxps17 apachectl[880]: AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.1.1. Set the 'ServerName' directive globally to suppress thi>
Jul 07 06:18:14 mmrxps17 systemd[1]: Started The Apache HTTP Server.
fallstechdave@mmrxps17:~/railsprojects/wire5$ 
fallstechdave@mmrxps17:/etc/apache2/sites-available$ cat wire5.conf
<VirtualHost *:80>
    ServerName localhost
    PassengerDisableAnonymousTelemetry on
    # Tell Apache and Passenger where your app's 'public' directory is
    DocumentRoot /home/fallstechdave/railsprojects/wire5/public
    PassengerRuby /home/fallstechdave/.rbenv/versions/3.1.2/bin/ruby
    # Relax Apache security settings
    <Directory /home/fallstechdave/railsprojects/wire5/public>
      Allow from all
      Options -MultiViews
      # Uncomment this if you're on Apache > 2.4:
      Require all granted
    </Directory>
</VirtualHost>
fallstechdave@mmrxps17:/etc/apache2/sites-available$ 

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

fallstechdave@mmrxps17:~$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.29 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| app_development    |
| app_production     |
| app_test           |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| wire5_development  |
| wire5_production   |
| wire5_test         |
+--------------------+
10 rows in set (0.00 sec)

mysql> use wire5_development;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-----------------------------+
| Tables_in_wire5_development |
+-----------------------------+
| ar_internal_metadata        |
| articles                    |
| schema_migrations           |
+-----------------------------+
3 rows in set (0.00 sec)

mysql> desc articles;
+------------------+---------------+------+-----+---------+----------------+
| Field            | Type          | Null | Key | Default | Extra          |
+------------------+---------------+------+-----+---------+----------------+
| id               | bigint        | NO   | PRI | NULL    | auto_increment |
| title            | varchar(4000) | YES  |     | NULL    |                |
| summary          | varchar(4000) | YES  |     | NULL    |                |
| doc_num          | varchar(100)  | YES  |     | NULL    |                |
| image_caption    | varchar(1000) | YES  |     | NULL    |                |
| has_attachments  | tinyint(1)    | YES  |     | NULL    |                |
| worldwide        | tinyint(1)    | YES  |     | NULL    |                |
| date_published   | date          | YES  |     | NULL    |                |
| producing_office | varchar(255)  | YES  |     | NULL    |                |
| country          | varchar(255)  | YES  |     | NULL    |                |
| topic            | varchar(255)  | YES  |     | NULL    |                |
| non_state_actor  | varchar(255)  | YES  |     | NULL    |                |
| body             | text          | YES  |     | NULL    |                |
| created_at       | datetime(6)   | NO   |     | NULL    |                |
| updated_at       | datetime(6)   | NO   |     | NULL    |                |
+------------------+---------------+------+-----+---------+----------------+
15 rows in set (0.01 sec)

mysql> 

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

