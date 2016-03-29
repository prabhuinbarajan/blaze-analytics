Iteration 1: 
kubernetes artifacts needed to standup an analytics cluster based on storm and kafka on AWS

supports
Kubernetes: v1.2
Kafka : 0.9.0 or above
Storm : 0.9.3
Java 8
Cloud : AWS + 1 kubernetes-master t2 medium + 4 minions - t2 medium + gateway benchmarking host (ubuntu 14.04)

kafka benchmarks :
supports ingestion of 50,000 messages per second into the kafka queue - in a single threaded, 1 broker , no replication setup
overall 50 million messages take 5 mins 6 seconds


Iteration 2:
make zookeeper elastic - move to zookeeper 3.5.0 or above supporting dynamic configuration of the zookeeper ensemble

