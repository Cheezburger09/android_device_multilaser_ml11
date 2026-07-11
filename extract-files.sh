#!/bin/bash

DEVICE=ml11
VENDOR=multilaser

source ../../../vendor/lineage/build/tools/extract_utils.sh

setup_vendor $DEVICE $VENDOR

extract proprietary-files.txt "$1"

setup_makefiles
