# Find Files by date

Bash script that find files that are older then N days (Defoult is 30 days)
Its build for pracice, learning new code and quick check

## Tech Stack
- Bash
- Linux (Debian 13)
- Tools: find, -mtime, -printf, wc -l, input, shellcheck

## How to Run
git clone https://github.com/zarko1705/Find_old_files.git
cd findold.sh
chmod +x findold.sh
./findold.sh

## Optional

./findold.sh . 
./findold.sh /usr
./findold.sh /boot 5

## What I Learned
-maxdepth 3 ('find' command) is not the same as --max-depth=3 ('du' command)
 ^[0-9]+$   regex match --> only digits, nothing else
 %TY-%Tm-%Td   another format, usualy i write %Y:%m:%d
 Most Important what i have learnd: There is more then one way to skin a cat ... linux is truly amazing.
