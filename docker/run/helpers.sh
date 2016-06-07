#!/bin/bash

calculate_heap() {
  usagePercent=$1

  # Available memory
  totalMemKB=$(awk '/MemTotal:/ { print $2 }' /proc/meminfo)

  # Calculate the available heap size
  let heapMB=$totalMemKB*$usagePercent/100/1024

  # Return value and unit (MB)
  echo ${heapMB}m
}
