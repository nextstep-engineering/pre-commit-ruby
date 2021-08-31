#!/bin/sh -e

bundle install >/dev/null
bundle exec rubocop --color "$@"
git add -u
