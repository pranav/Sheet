Sheet
=====

D &amp; D Character Sheet simplified

# Installation

Once I figure out dependency managers, I'll add appropriate Gemfile/package.json, but in the meantime, install these things:
* Coffeescript (npm install coffeescript)
* Sass (gem install sass)
* Jade (npm install jade)

Then you can start the static asset compiler (which exists in watch mode only right now)
* `make`

This will tail the logs of jade/coffee/sass for you. This is much shorter than setting up grunt / gulp / whatever.