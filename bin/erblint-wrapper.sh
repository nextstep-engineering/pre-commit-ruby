#!/bin/sh -e

bundle install >/dev/null
bundle exec erblint --config .erb-lint.yml --autocorrect "$@"
git add -u
