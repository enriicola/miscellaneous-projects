
#!/usr/bin/env bash

# chmod +x /Users/enrico/Library/CloudStorage/OneDrive-unige.it/ssdm/deleteRumenta.sh #!!!

cd /Users/enrico/Library/CloudStorage/OneDrive-unige.it/ssdm
# find . -type f -name '*bak*' -delete

#shopt -s extglob
rm *bak*
exit