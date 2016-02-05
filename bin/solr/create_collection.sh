#!/usr/bin/env bash

# create solr collection
echo "creating solr collection..."
SOLR_COLLECTION="eagleeye"
SOLR_DIR="/tmp/eagleeye_configs"
SHARDS=1
REPLICAS=1
SOLR="http://localhost:8983/solr"
ZK="localhost:2181/solr"

rm -rf $SOLR_DIR
solrctl instancedir --generate $SOLR_DIR
cp bin/solr/schema.xml $SOLR_DIR/conf/

solrctl --solr $SOLR --zk $ZK instancedir --create $SOLR_COLLECTION $SOLR_DIR
solrctl --solr $SOLR --zk $ZK collection --create $SOLR_COLLECTION -s $SHARDS -r $REPLICAS