#! /usr/bin/env bash

set -euv

# toda la info está en pactl list cards

CARD=alsa_card.pci-0000_09_00.4 # HD-Audio Generic

SP_PROFILE=output:iec958-stereo # con +input:analog-stereo se combina con el micrófono de los headphones
HEADPHONES_PROFILE=output:analog-stereo



pactl set-card-profile $CARD $SP_PROFILE
