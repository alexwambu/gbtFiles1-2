# GBTNetwork-L1 Runbook

## Incident Response
1. Identify node failure or anomaly (alerts from Prometheus).
2. Isolate affected node from network (stop service, firewall).
3. Rotate keys if compromise suspected.
4. Restore from clean backup image.

## Recovery Procedures
- **Single Node Crash**: Restart via `systemctl restart gbtnetwork-l1` or Docker.
- **Full Outage**: Redeploy nodes using `launch_gbtnetwork_l1.sh`.
- **Lost Key**: Generate new account with `create_account.sh`, update static peers.

## Monitoring
- Prometheus metrics exposed on :9090.
- Grafana dashboards track block times, peers, RPC health.

## Communication
- Ops team must notify stakeholders via secure channel.
- Incident reports stored in central encrypted log vault.
