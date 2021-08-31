#!/bin/sh -e

bundle install >/dev/null
bundle exec rubocop -a --color "$@"
git add -u
