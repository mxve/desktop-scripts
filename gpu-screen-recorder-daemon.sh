#!/bin/bash
while true; do
    date=$(date '+%Y-%m-%d_%H-%M-%S')
    flatpak run --command=gpu-screen-recorder com.dec05eba.gpu_screen_recorder -a "desktop/$(pactl get-default-sink).monitor" -a "mic/$(pactl get-default-source)" -q ultra -w screen -cr full -f 60 -r 300 -c mp4 -o /mnt/ssd1/clips &> ~/scripts/logs/gpu-screen-recorder_${date}.log
done