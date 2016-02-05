#!/usr/bin/env bash

ZOOKEEPER="localhost:2181"

kafka-topics --list --zookeeper $ZOOKEEPER