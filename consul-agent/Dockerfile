FROM gliderlabs/consul:latest

MAINTAINER Adam Craven <adam@ChannelAdam.com>

VOLUME /var/lib/consul/config
VOLUME /var/lib/consul/data

# see https://www.consul.io/docs/agent/options.html for config file options
COPY 100-agent-config.json /var/lib/consul/config/ 

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp

ENTRYPOINT ["/bin/consul", "agent", "-config-dir=/var/lib/consul/config"]