#!/bin/bash

mkdir -p figures
origin_pic_name="$1"
pic_name="$origin_pic_name"

while true; do
    if ! [ -e "./figures/$1.png" ];then
        break
    fi
    pic_name="${pic_name}_1"
done

flameshot gui --path "./figures/$pic_name.png" >/dev/null
echo "![$origin_pic_name](./figures/$pic_name.png)"
