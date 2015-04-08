# Ansible Composer Role

[![Build Status](https://img.shields.io/travis/weareinteractive/ansible-composer.svg)](https://travis-ci.org/weareinteractive/ansible-composer)
[![Galaxy](http://img.shields.io/badge/galaxy-franklinkim.supervisor-blue.svg)](https://galaxy.ansible.com/list#/roles/3274)
[![GitHub Tags](https://img.shields.io/github/tag/weareinteractive/ansible-composer.svg)](https://github.com/weareinteractive/ansible-composer)
[![GitHub Stars](https://img.shields.io/github/stars/weareinteractive/ansible-composer.svg)](https://github.com/weareinteractive/ansible-composer)

> `composer` is an [ansible](http://www.ansible.com) role which:
>
> * installs composer
> * updates composer

## Installation

Using `ansible-galaxy`:

```
$ ansible-galaxy install franklinkim.composer
```

Using `requirements.yml`:

```
- src: franklinkim.composer
```

Using `git`:

```
$ git clone https://github.com/weareinteractive/ansible-composer.git
```

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```
# days till next update
composer_update_day: 20
# path to install composer to
composer_path: /usr/local/bin
```

## Example playbook

```
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
```

## Testing

```
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

## License
Copyright (c) We Are Interactive under the MIT license.
