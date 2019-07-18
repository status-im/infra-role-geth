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
geth_log_level_name: 'info'
geth_consul_extra_tags: ['mytag']
```

By default this role creates a new account.
If you want to control the account used by the `geth` process you can use:
```yaml
geth_account_addr: 0x1j98dsa087fh09as8d7fhsa98dhfas9s0dasjd0d
geth_account_pass: my-secret-account-pass
geth_account_json: '{"account":"json_data"}'
```

By default we create a [Consul service definition](https://www.consul.io/docs/agent/services.html), disable it using:
```yaml
geth_consul_enabled: false
```

For the rest see the [`defaults/main.yml`](/defaults/main.yml) config file.

# Known Issues

Currently only 3 networks are supported: `mainnet`, `ropsten`, and `goerli`
