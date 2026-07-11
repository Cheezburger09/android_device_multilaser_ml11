#!/bin/bash

DEVICE=ml11
VENDOR=multilaser

source ../../../vendor/lineage/build/tools/extract_utils.sh

setup_vendor $DEVICE $VENDOR

write_headers

write_makefiles proprietary-files.txt

write_footers
