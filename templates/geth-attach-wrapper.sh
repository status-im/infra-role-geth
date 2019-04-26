#!/usr/bin/env bash
if [[ -z "$@" ]]; then
    docker exec -it {{ geth_cont_name }} geth attach http://localhost:{{ geth_rpc_port }}
else
    docker exec {{ geth_cont_name }} geth attach http://localhost:{{ geth_rpc_port }} --exec "$@"
fi
