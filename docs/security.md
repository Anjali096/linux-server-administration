# Security & System Inspection

## Objective

Inspect users, group memberships, administrative privileges, and listening network services on the Linux server.

## User and Group Verification

The project uses separate users and groups:

- `devuser` → `developers`
- `opsuser` → `operations`

This demonstrates basic user and group isolation.

## Administrative Privileges

The primary administrative user has sudo privileges for performing system administration tasks.

## Network Service Inspection

Listening services were inspected using:

```bash
ss -tulpn
