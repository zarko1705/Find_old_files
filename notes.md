Project spec

# Goal:

Scans a directory for files not modified in N days. Prints each file with its size and last modified date.
Useful for finding stale logs, old downloads, forgotten backups.

# Location:
~/projects/micro-scripts/findold.sh

# Permissions:
chmod +x findold.sh

# Usage:
./findold.sh [path] [days]

# Examples:
./findold.sh ./findold.sh /var/log 30 ./findold.sh ~/Downloads 7

# Tools / commands I expect to use:
find, -mtime, -printf, stat, wc -l, shellcheck
