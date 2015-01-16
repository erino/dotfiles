#!/usr/bin/env bash

function ehosts() {
  sudo vi /etc/hosts && sudo discoveryutil udnsflushcaches
}
