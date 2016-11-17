#!/bin/bash
export PATH=$PATH:/usr/local/bin
cd /opt/PasswordPusher
bundle install --without development production test --deployment
bundle exec rake assets:precompile
RAILS_ENV=private bundle exec rake db:setup