#!/bin/bash

DIR=/sys/kernel/debug/ieee80211/$(sudo ls /sys/kernel/debug/ieee80211/ | tail -n1)/wil6210

echo "$DIR"

echo "cat temp command---------------"
echo ""
echo ""
echo `sudo cat $DIR/temp`
echo ""
echo ""

echo "cat bf command-----------------"
echo `sudo cat $DIR/bf`
echo ""
echo ""
