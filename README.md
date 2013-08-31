Annales-Insa
============

Application des annales de l'INSA de Lyon

Installation
------------

### Requirements

* [Git](http://git-scm.com/)
* [Ruby](http://www.ruby-lang.org/fr/)
* [Rails](http://rubyonrails.org/)
* [Bundler](http://gembundler.com/)
* [Postgres](http://www.postgresql.org/)
* [ImageMagick](http://www.imagemagick.org/)

### Setup

* Clone the repo `git clone git@github.com:BdEINSALyon/annales-insa.git`
* And new go to the directory `cd annales-insa`
* Run the bundle command to install all the depends gems `bundle install`
* First of all create the postgres database and the attached user and run the command `rake db:create` and `rake db:migrate` to get your database tables up to date.

How does it works
-----------------

* To launch the webserver you can user `rails s` and the application is now available at `http://localhost:3000`.
* To test the application use the command line `rake`

Support : `dartus.pierremarie@gmail.com`
Liscence : Apache License