#!/usr/bin/env bash

ZOOKEEPER="localhost:2181"
TOPIC="eagleeye"

kafka-console-consumer --zookeeper $ZOOKEEPER --topic $TOPIC