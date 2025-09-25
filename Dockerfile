# Hardened GBTNetwork L1 Node Image
FROM ethereum/client-go:stable

# Create working dir
WORKDIR /gbtnetwork

# Copy chain configuration
COPY chains/gbtnetwork-mainnet/genesis.json /gbtnetwork/genesis.json
COPY chains/gbtnetwork-mainnet/static-nodes.json /gbtnetwork/static-nodes.json

# Initialize chain with genesis
RUN geth init /gbtnetwork/genesis.json --datadir /gbtnetwork/data

# Copy launch script
COPY scripts/launch_gbtnetwork_l1.sh /usr/local/bin/launch_gbtnetwork_l1.sh
RUN chmod +x /usr/local/bin/launch_gbtnetwork_l1.sh

# Expose required ports
EXPOSE 9636 30303

# Keep node alive
ENTRYPOINT ["launch_gbtnetwork_l1.sh"]
