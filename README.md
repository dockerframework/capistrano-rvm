# Capistrano RVM (Ruby Version Manager) Container
Capistrano RVM (Ruby Version Manager) Container of Docker Framework

## What is Capistrano ?
### Capistrano is a remote server automation tool.
* It supports the scripting and execution of arbitrary tasks, and includes a set of sane-default deployment workflows.

* Capistrano can be used to:
  - Reliably deploy web application to any number of machines simultaneously, in sequence or as a rolling set
  - To automate audits of any number of machines (checking login logs, enumerating uptimes, and/or applying security patches)
  - To script arbitrary workflows over SSH
  - To automate common tasks in software teams.
  - To drive infrastructure provisioning tools such as chef-solo, Ansible or similar.
  - Capistrano is also very scriptable, and can be integrated with any other Ruby software to form part of a larger tool.

### How to Use
* Set environment configuration file
  ```
  cp .env.example .env
  ```
* Define your project's folder inside `.env`
  ```
  DATA_RUBY=[YOUR_PROJECTS_FOLDER]
  ---
  eg:
  DATA_RUBY=/data/deployment
  ```
* Running docker-compose
  ```
  docker-compose up
  ```
* Goto Inside Container
  ```
  docker exec -it [CONTAINER_NAME]
  ---
  eg:
  docker exec -it capistrano_rvm_[UBUNTU_VERSION]_[RUBY_VERSION] bash
  docker exec -it capistrano_rvm_18.04_2.7.1 bash
  ```
* Install Dependencies Gem
  ```
  rvm use [RUBY_VERSION]   # eg: RUBY_VERSION=2.7.1
  ---
  rvm use 2.7.1

  gem install rubygems-bundler
  gem regenerate_binstubs
  bundle install
  ```

### References
* [Official Documentation](https://capistranorb.com/documentation/overview/what-is-capistrano/)

[![Build Status](https://travis-ci.org/dockerframework/capistrano-rvm.svg?branch=master)](https://travis-ci.org/dockerframework/capistrano-rvm) [![](https://images.microbadger.com/badges/image/dockerframework/capistrano-rvm:latest.svg)](https://microbadger.com/images/dockerframework/capistrano-rvm:latest "Layers") [![](https://images.microbadger.com/badges/version/dockerframework/capistrano-rvm:latest.svg)](https://microbadger.com/images/dockerframework/capistrano-rvm:latest "Version") [![GitHub issues](https://img.shields.io/github/issues/dockerframework/capistrano-rvm.svg)](https://github.com/dockerframework/capistrano-rvm/issues) [![GitHub forks](https://img.shields.io/github/forks/dockerframework/capistrano-rvm.svg)](https://github.com/dockerframework/capistrano-rvm/network) [![GitHub stars](https://img.shields.io/github/stars/dockerframework/capistrano-rvm.svg)](https://github.com/dockerframework/capistrano-rvm/stargazers) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/dockerframework/capistrano-rvm/master/LICENSE)
