#!/bin/bash
set -e

echo "🚀 Starting GBTNetwork L1 Node (ChainID 999, RPC on 9636)"

exec geth \
  --networkid 999 \
  --http \
  --http.addr 0.0.0.0 \
  --http.port 9636 \
  --http.api eth,net,web3,txpool \
  --http.vhosts "localhost,GBTNetwork" \
  --http.corsdomain "http://localhost,http://GBTNetwork" \
  --port 30303 \
  --nodiscover \
  --syncmode full \
  --datadir /gbtnetwork/data \
  --nousb \
  --ipcdisable
