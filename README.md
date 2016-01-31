# consul-docker

The Consul containers in this repo specify a Volume for /var/lib/consul/config, allowing you to mount that path and specify your own Consul configuration .json files - for instance, with Gossip and RPC encryption settings.

All .json files are loaded by Consul in alphabetical order and overwrite previously loaded configuration.

## consul-agent
The consul-agent container creates a default config file named "/var/lib/consul/config/100-default-agent-config.generated.json".

## consul-server
The consul-server container creates a default config file name "/var/lib/consul/config/100-default-server-config.generated.json".
