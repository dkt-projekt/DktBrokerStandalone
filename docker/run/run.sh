#!/bin/bash
source /bin/helpers.sh

# Memory to use for Java heap (x % of available memory)
export JVM_MAX_HEAP_SIZE=$(calculate_heap 80)
java -cp "./*:config" org.springframework.boot.loader.JarLauncher "$@"
