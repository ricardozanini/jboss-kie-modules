#!/bin/sh
set -e

# maven pulls in jdk8, so we need to remove it
for pkg in java-1.8.0-openjdk-devel \
           java-1.8.0-openjdk-headless \
           java-1.8.0-openjdk; do
    if rpm -q "$pkg"; then
        rpm -e --nodeps "$pkg"
    fi
done
