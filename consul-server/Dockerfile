FROM channeladam/consul-base:latest

MAINTAINER Adam Craven <adam@ChannelAdam.com>

# see https://www.consul.io/docs/agent/options.html for config file options
COPY 200-server-config.json /var/lib/consul/config/ 

VOLUME /var/lib/consul/config
VOLUME /var/lib/consul/data

ENTRYPOINT ["/bin/consul", "agent", "-server", "-config-dir=/var/lib/consul/config"]