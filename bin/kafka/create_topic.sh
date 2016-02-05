#!/usr/bin/env bash

ZOOKEEPER="localhost:2181"
TOPIC="eagleeye"

kafka-topics --create --zookeeper $ZOOKEEPER --topic $TOPIC --partitions 1 --replication-factor 1