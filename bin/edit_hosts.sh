#!/usr/bin/env bash

function ehosts() {
  sudo vi /etc/hosts && sudo killall -HUP mDNSResponder
}
