#!/bin/sh
GLHOME="/home/haijieg/graphlabapi"
GRAPHHOME="/home/haijieg/acmgraph"
cmd="$GLHOME/debug/apps/twitterrank/twitterrank --pagerank_edges $GRAPHHOME/articlecitation --lda_edges $GRAPHHOME/articlewords --lda_dictionary $GRAPHHOME/words --join_on_id=true --wordid_offset=1 --ncpus=1 --ntopics=5 --topkpr=3 --topklda=5 --default_ndocs=1 --default_topicval=1"

# echo $cmd
# exec $cmd

mpicmd="mpiexec -np 2 -hostfile /home/haijieg/machines $cmd"
echo $mpicmd
exec $mpicmd