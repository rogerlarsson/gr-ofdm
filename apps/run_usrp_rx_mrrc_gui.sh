#!/bin/sh

cd $(dirname $0)

if [ -d "$PWD/../build" ]; then
    . $PWD/environment_debug
else
    . $PWD/environment_release
fi

ofdm_mimo_rx_gui.py  $1 &

rx.py -f 2.45G --disable-ctf-enhancer --bandwidth=1M --subcarriers=200 --fft-length=256 --scatterplot --ber-window=50000 --rx-ant=2 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16
