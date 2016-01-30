FROM channeladam/consul-agent:latest

MAINTAINER Adam Craven <adam@ChannelAdam.com>

# see https://www.consul.io/docs/agent/options.html for config file options
RUN mkdir -p /var/lib/consul/config
COPY 200-server-config.json /adam-config/ 

ENTRYPOINT ["/bin/consul", "agent", "-server", "-config-dir=/var/lib/consul/config"]