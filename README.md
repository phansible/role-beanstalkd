# Phansible Role: Beanstalkd

[![CI](https://github.com/phansible/role-beanstalkd/actions/workflows/ci.yml/badge.svg)](https://github.com/phansible/role-beanstalkd/actions/workflows/ci.yml)

An Ansible Role that installs [Beanstalkd](https://beanstalkd.github.io/) from the distribution packages and runs it as a systemd service, specifically created with [Phansible](http://phansible.com/) in mind.

## Requirements

- Ubuntu 22.04, 24.04, 26.04 or Debian 12, 13, with systemd
- Ansible 2.15 or newer

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

```yaml
beanstalkd:
  listenAddress: 0.0.0.0
  listenPort: '13000'
  user: beanstalkd
  persistent: 'yes'
  storage: /var/lib/beanstalkd
```

- `beanstalkd.listenAddress`: address beanstalkd listens on.
- `beanstalkd.listenPort`: TCP port beanstalkd listens on.
- `beanstalkd.user`: system user the service runs as, created if missing.
- `beanstalkd.persistent`: write jobs to a binlog so they survive restarts.
- `beanstalkd.storage`: binlog directory used when `persistent` is on.

## Dependencies

None.

## Example Playbook

```yaml
- hosts: all
  become: yes
  vars:
    beanstalkd:
      listenAddress: 127.0.0.1
      listenPort: '11300'
      user: beanstalkd
      persistent: 'yes'
      storage: /var/lib/beanstalkd
  roles:
    - role-beanstalkd
```

## License

This role is released under the terms of the license specified in the repository or if not specified, under the [MIT license](https://raw.githubusercontent.com/phansible/role-beanstalkd/master/LICENSE).

## Author Information

This role was created in 2015 by [The Phansible Team & Contributors](https://github.com/phansible/role-beanstalkd/graphs/contributors), credits go also to [Jeff Geerling](http://jeffgeerling.com/), author of [Ansible for DevOps](http://ansiblefordevops.com/) and source of inspiration.
