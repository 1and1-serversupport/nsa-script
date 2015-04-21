# Script to monitor files on a specific directory

This script can monitor files in a specific directory. It is NOT recommended to monitor "/".
Just fill in your mail adress and a unique hostname and you are good to go.

### 1. Give the file the needed rights to run:
    chmod +x nsa.sh

### 2. Create a cronjob with your linkings (example at midnight):
    00 00 * * * /path/to/nsa.sh

### 3. Enjoy
