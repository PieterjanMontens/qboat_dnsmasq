# qboat_dnsmasq
This docker image runs [dnsmasq](http://www.thekelleys.org.uk/dnsmasq/doc.html) in a debian-strech-slim environment
for the QNAP Qboat sunny, which runs on a ARM32v7 Cortex 15 CPU

## Usage
The container needs to be run (and exposes) the following ports:
- 53:53/tcp
- 53:53/udp

Additionnaly, `--cap-add=NET_ADMIN` has to be added on the execution line.

As for the definition of the hosts, the container will read the first 60 numbered environment variables following these patterns, where X is a number starting from 1 :
- `HOST_X_FQDN` : the fully qualified domain name (required)
- `HOST_X_IP` : the ip address (required)
- `HOST_X_NAME` : the host name

These will automaticaly be added to the hosts file.

Same for the nameserver: every match on `NAMESERVER_X` will be added to the `/etc/resolv.conf` file.
