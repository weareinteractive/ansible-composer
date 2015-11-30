# Ansible franklinkim.composer role

[![Build Status](https://img.shields.io/travis/weareinteractive/ansible-composer.svg)](https://travis-ci.org/weareinteractive/ansible-composer)
[![Galaxy](http://img.shields.io/badge/galaxy-franklinkim.composer-blue.svg)](https://galaxy.ansible.com/list#/roles/3274)
[![GitHub Tags](https://img.shields.io/github/tag/weareinteractive/ansible-composer.svg)](https://github.com/weareinteractive/ansible-composer)
[![GitHub Stars](https://img.shields.io/github/stars/weareinteractive/ansible-composer.svg)](https://github.com/weareinteractive/ansible-composer)

> `franklinkim.composer` is an [Ansible](http://www.ansible.com) role which:
>
> * installs composer
> * updates composer
> * runs composer on given paths

## Installation

Using `ansible-galaxy`:

```shell
$ ansible-galaxy install franklinkim.composer
```

Using `requirements.yml`:

```yaml
- src: franklinkim.composer
```

Using `git`:

```shell
$ git clone https://github.com/weareinteractive/ansible-composer.git franklinkim.composer
```

## Dependencies

* Ansible >= 1.9

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```yaml
---
# For more information about default variables see:
# http://www.ansibleworks.com/docs/playbooks_variables.html#id26
#
# composer_paths:
#  - /var/www/foo
#  - command: ...
#    no_dev: ...
#    no_plugins: ...
#    no_scripts: ...
#    optimize_autoloader: ...
#    prefer_dist: ...
#    prefer_source: ...
#    working_dir: /var/www/bar
#

# days till next update
composer_update_day: 20
# path to install composer to
composer_path: /usr/local/bin
# list of paths to run composer (@see http://docs.ansible.com/composer_module.html)
composer_paths: []

```


## Usage

This is an example playbook:

```yaml
---

- hosts: all
  sudo: yes
  roles:
    - franklinkim.apt
    - franklinkim.php5
    - franklinkim.composer
  vars:
    php5_cli_config:
      - { section: PHP, option: default_charset, value: UTF-8 }
      - { section: Date, option: date.timezone, value: Europe/Berlin }
      - { section: PHP, option: error_log, value: /var/log/php5/error-cli.log }
    composer_update_day: 30

```

## Testing

```shell
$ git clone https://github.com/weareinteractive/ansible-composer.git
$ cd ansible-composer
$ vagrant up
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

*Note: To update the `README.md` file please install and run `ansible-role`:*

```shell
$ gem install ansible-role
$ ansible-role docgen
```

## License
Copyright (c) We Are Interactive under the MIT license.
