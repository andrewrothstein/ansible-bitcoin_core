andrewrothstein.bitcoin_core
=========
![Build Status](https://github.com/andrewrothstein/ansible-bitcoin_core/actions/workflows/build.yml/badge.svg)

Installs [BitCoin Core](https://bitcoin.org/en/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.bitcoin_core
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
