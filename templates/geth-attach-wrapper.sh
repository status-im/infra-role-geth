#!/usr/bin/env bash

GETH_RPC_PORT="{{ geth_rpc_port }}"
GETH_CONT_NAME="{{ geth_cont_name }}"

if [[ -z "$@" ]]; then
    docker exec -it "${GETH_CONT_NAME}" geth attach "http://localhost:${GETH_RPC_PORT}"
else
    docker exec "${GETH_CONT_NAME}" geth attach "http://localhost:${GETH_RPC_PORT}" --exec "$@"
fi
