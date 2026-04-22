#!/usr/bin/env bash
# exit or error
ser -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate