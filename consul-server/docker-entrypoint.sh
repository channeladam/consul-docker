#!/bin/sh
set -e

# See https://www.consul.io/docs/agent/options.html for config file options

configFile="/var/lib/consul/config/100-default-server-config.generated.json"
rm -f $configFile

echo "==> Creating the default Consul server config file: $configFile"
( cat <<"EOM"
{
	"client_addr": "0.0.0.0",
	"data_dir": "/var/lib/consul/data",
    "disable_remote_exec": true,
	"dns_config": {
		"allow_stale": false
	},
	"leave_on_terminate": true,
	"ui": true
}
EOM
) >> $configFile

echo "==> Running Consul server with additional args: '$@'"
exec "/bin/consul" "agent" "-server" "-config-dir=/var/lib/consul/config" "$@"