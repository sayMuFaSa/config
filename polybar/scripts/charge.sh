#!/bin/dash

acpi | awk '{print $4}' | tr -d ','
