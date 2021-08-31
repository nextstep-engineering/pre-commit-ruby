# pre-commit-ruby

This is a plugin for [pre-commit](https://pre-commit.com) that will run various ruby tools for linting and testing.

### Usage

Hooks require that `bundle` be already available on your system.

To lint Ruby changes in your repo, use the `rubocop` hook. The root of your repo must have a `Gemfile` that includes the desired version of rubocop. It will be installed via Bundler prior to linting. Rubocop will only be run against changed files for each commit.

To lint changes to ERB files in your repo, use the `erblint` hook. The root of your repo must have a `Gemfile` that includes the desired version of erblint. It will be installed via Bundler prior to linting. Erblint will only be run against changed files for each commit.

    - repo: https://github.com/nextstep-engineering/pre-commit-ruby
      rev: v1.3.3
      hooks:
      - id: rubocop
      - id: erblint
