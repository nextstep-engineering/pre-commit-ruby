#!/bin/sh

bundle install >/dev/null
bundle exec erblint --config .erb-lint.yml --autocorrect "$@"
