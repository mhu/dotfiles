#!/bin/bash

case $BLOCK_BUTTON in
    3)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        ;;
    4)
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
        ;;
    5)
        wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
        ;;
esac

VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2*100)}')
MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED && echo "true" || echo "false")

if [ "$MUTED" = "true" ]; then
    echo "VOL MUTED"
else
    echo "VOL $VOLUME%"
fi
