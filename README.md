# Description

This role configures a `geth`([go-ethereum](https://github.com/ethereum/go-ethereum)) container.

The image used by default is [ethereum/client-go](https://hub.docker.com/r/ethereum/client-go/).

# Configuration

The only mandaotry settings is the account password, which can be set to an empty string:

```yaml
geth_account_password: 'my-secret-password'
```

Other important settings are:

```yaml
geth_cont_name: 'geth-mainnet'
geth_network_name: 'mainnet'
geth_sync_mode: 'full'
geth_log_level: 3
geth_consul_tags: '{{ geth_consul_tags + ["mytag"] }}'
```

For the rest see the [`defaults/main.yml`](/defaults/main.yml) config file.

# Known Issues

__TODO__
