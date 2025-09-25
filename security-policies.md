# GBTNetwork-L1 Security Policies

## Node Operators
- Only authorized operators may run nodes.
- All nodes must use **encrypted keystores** and strong passphrases.
- Keys must never be stored unencrypted on disk.
- Regular patching of system and dependencies is mandatory (weekly at minimum).
- Backups of keystores and configs must be encrypted and stored offsite.

## Network Access
- RPC is restricted to `localhost:9636` and `GBTNetwork:9636` only.
- No random peer discovery: nodes must use `static-nodes.json`.
- Firewall must drop all traffic except P2P (30303) and RPC (9636).

## Incident Handling
- Any compromise must be reported within 1h.
- Compromised nodes must be isolated and rebuilt from clean images.
