# GBTNetwork-L1 Architecture

## Overview
GBTNetwork is a secure Ethereum-compatible L1 chain with:
- Chain ID: `999`
- Native Token: `GBT`
- Consensus: Proof-of-Work (PoW), fixed difficulty.
- Peer discovery: **disabled**, static peers only.

## Components
- **Nodes**: Geth-based clients, hardened and containerized.
- **RPC Gateway**: Exposed via Nginx/Express proxy with rate limiting.
- **Explorer**: Blockscout for chain visibility.
- **Contracts**: GoldBarTether (GBT) as native token contract.
- **Monitoring**: Prometheus + Grafana dashboards.

## Security
- RBAC and secrets management enforced in Kubernetes.
- Limited RPC API: `eth, net, web3, txpool`.
- No access to `admin.*` or `debug.*`.

## Deployment Model
- Supports Docker, Kubernetes, and Render hosting.
- RPC strictly bound to `localhost:9636` and `GBTNetwork:9636`.
