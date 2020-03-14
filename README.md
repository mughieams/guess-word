# Guess Word

A simple quiz game with command line basis (CLI)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

1. Ruby `2.6.0`. You can follow this [instruction](https://www.ruby-lang.org/en/documentation/installation/) for the installation procedure.
2. Bundler `2.1.4`. You can execute this command below:
```console
$ sudo gem install bundler
```

### How to use

These commands below will help you to use this project properly.

For the first, you need to clone this repository then run:

```
$ bundle install --path vendor/bundle
```
### When working

#### Running the tests

Open this project directory on terminal and execute this command below:

```console
$ bundle rspec spec
```

#### Verifying code style

Open this project directory on terminal and execute this command below:

```console
$ bundle exec rubocop 
```

You can reformat the code by executing:

```console
$ bundle exec rubocop -a
```

### When running this project

Open this project directory on terminal and execute this command below:

```console
$ ./ruby main.rb
```

## Acknowledgments

* Sweet Escape who has given me the opportunity to do this coding test