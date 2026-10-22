## Defaults for the beanstalkd systemd unit, managed by Ansible.
BEANSTALKD_LISTEN_ADDR={{ beanstalkd.listenAddress }}
BEANSTALKD_LISTEN_PORT={{ beanstalkd.listenPort }}
BEANSTALKD_EXTRA="{% if beanstalkd.persistent | bool %}-b {{ beanstalkd.storage }}{% endif %}"
