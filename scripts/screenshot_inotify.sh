#!/bin/bash
screenshots_dir=~/Pictures/screenshots
mkdir -p ./figures
inotifywait -e close_write --format "%w %f" -m -r "$screenshots_dir" 2>/dev/null | \
    while read -r w f; do
        mv "$w"/"$f" ./figures
        echo "![${f%%.png}](./figures/$f)"
    done
