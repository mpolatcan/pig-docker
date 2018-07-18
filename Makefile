.PHONY: publish-pig
publish-pig:
	sudo docker build -q -t mpolatcan/pig:ubuntu-0.17.0-hadoop-3.1.0 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="3.1.0" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.17.0-hadoop-3.1.0
	sudo docker rmi mpolatcan/pig:ubuntu-0.17.0-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/pig:alpine-0.17.0-hadoop-3.1.0 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="3.1.0" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.17.0-hadoop-3.1.0
	sudo docker rmi mpolatcan/pig:alpine-0.17.0-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.17.0-hadoop-3.0.3 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="3.0.3" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.17.0-hadoop-3.0.3
	sudo docker rmi mpolatcan/pig:ubuntu-0.17.0-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/pig:alpine-0.17.0-hadoop-3.0.3 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="3.0.3" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.17.0-hadoop-3.0.3
	sudo docker rmi mpolatcan/pig:alpine-0.17.0-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.17.0-hadoop-3.0.2 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="3.0.2" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.17.0-hadoop-3.0.2
	sudo docker rmi mpolatcan/pig:ubuntu-0.17.0-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/pig:alpine-0.17.0-hadoop-3.0.2 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="3.0.2" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.17.0-hadoop-3.0.2
	sudo docker rmi mpolatcan/pig:alpine-0.17.0-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.17.0-hadoop-2.9.1 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.9.1" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.17.0-hadoop-2.9.1
	sudo docker rmi mpolatcan/pig:ubuntu-0.17.0-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/pig:alpine-0.17.0-hadoop-2.9.1 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.9.1" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.17.0-hadoop-2.9.1
	sudo docker rmi mpolatcan/pig:alpine-0.17.0-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.17.0-hadoop-2.9.0 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.9.0" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.17.0-hadoop-2.9.0
	sudo docker rmi mpolatcan/pig:ubuntu-0.17.0-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/pig:alpine-0.17.0-hadoop-2.9.0 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.9.0" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.17.0-hadoop-2.9.0
	sudo docker rmi mpolatcan/pig:alpine-0.17.0-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.17.0-hadoop-2.8.4 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.8.4" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.17.0-hadoop-2.8.4
	sudo docker rmi mpolatcan/pig:ubuntu-0.17.0-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/pig:alpine-0.17.0-hadoop-2.8.4 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.8.4" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.17.0-hadoop-2.8.4
	sudo docker rmi mpolatcan/pig:alpine-0.17.0-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.17.0-hadoop-2.7.6 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.7.6" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.17.0-hadoop-2.7.6
	sudo docker rmi mpolatcan/pig:ubuntu-0.17.0-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/pig:alpine-0.17.0-hadoop-2.7.6 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.7.6" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.17.0-hadoop-2.7.6
	sudo docker rmi mpolatcan/pig:alpine-0.17.0-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.17.0-hadoop-2.6.5 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.6.5" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.17.0-hadoop-2.6.5
	sudo docker rmi mpolatcan/pig:ubuntu-0.17.0-hadoop-2.6.5

	sudo docker build -q -t mpolatcan/pig:alpine-0.17.0-hadoop-2.6.5 --build-arg PIG_VERSION="0.17.0" --build-arg HADOOP_VERSION="2.6.5" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.17.0-hadoop-2.6.5
	sudo docker rmi mpolatcan/pig:alpine-0.17.0-hadoop-2.6.5
# ----------------------------------------------------------------------------------------------------------------------

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.16.0-hadoop-3.1.0 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="3.1.0" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.16.0-hadoop-3.1.0
	sudo docker rmi mpolatcan/pig:ubuntu-0.16.0-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/pig:alpine-0.16.0-hadoop-3.1.0 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="3.1.0" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.16.0-hadoop-3.1.0
	sudo docker rmi mpolatcan/pig:alpine-0.16.0-hadoop-3.1.0

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.16.0-hadoop-3.0.3 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="3.0.3" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.16.0-hadoop-3.0.3
	sudo docker rmi mpolatcan/pig:ubuntu-0.16.0-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/pig:alpine-0.16.0-hadoop-3.0.3 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="3.0.3" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.16.0-hadoop-3.0.3
	sudo docker rmi mpolatcan/pig:alpine-0.16.0-hadoop-3.0.3

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.16.0-hadoop-3.0.2 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="3.0.2" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.16.0-hadoop-3.0.2
	sudo docker rmi mpolatcan/pig:ubuntu-0.16.0-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/pig:alpine-0.16.0-hadoop-3.0.2 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="3.0.2" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.16.0-hadoop-3.0.2
	sudo docker rmi mpolatcan/pig:alpine-0.16.0-hadoop-3.0.2

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.16.0-hadoop-2.9.1 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.9.1" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.16.0-hadoop-2.9.1
	sudo docker rmi mpolatcan/pig:ubuntu-0.16.0-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/pig:alpine-0.16.0-hadoop-2.9.1 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.9.1" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.16.0-hadoop-2.9.1
	sudo docker rmi mpolatcan/pig:alpine-0.16.0-hadoop-2.9.1

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.16.0-hadoop-2.9.0 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.9.0" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.16.0-hadoop-2.9.0
	sudo docker rmi mpolatcan/pig:ubuntu-0.16.0-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/pig:alpine-0.16.0-hadoop-2.9.0 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.9.0" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.16.0-hadoop-2.9.0
	sudo docker rmi mpolatcan/pig:alpine-0.16.0-hadoop-2.9.0

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.16.0-hadoop-2.8.4 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.8.4" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.16.0-hadoop-2.8.4
	sudo docker rmi mpolatcan/pig:ubuntu-0.16.0-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/pig:alpine-0.16.0-hadoop-2.8.4 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.8.4" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.16.0-hadoop-2.8.4
	sudo docker rmi mpolatcan/pig:alpine-0.16.0-hadoop-2.8.4

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.16.0-hadoop-2.7.6 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.7.6" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.16.0-hadoop-2.7.6
	sudo docker rmi mpolatcan/pig:ubuntu-0.16.0-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/pig:alpine-0.16.0-hadoop-2.7.6 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.7.6" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.16.0-hadoop-2.7.6
	sudo docker rmi mpolatcan/pig:alpine-0.16.0-hadoop-2.7.6

	sudo docker build -q -t mpolatcan/pig:ubuntu-0.16.0-hadoop-2.6.5 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.6.5" ./ubuntu/
	sudo docker push mpolatcan/pig:ubuntu-0.16.0-hadoop-2.6.5
	sudo docker rmi mpolatcan/pig:ubuntu-0.16.0-hadoop-2.6.5

	sudo docker build -q -t mpolatcan/pig:alpine-0.16.0-hadoop-2.6.5 --build-arg PIG_VERSION="0.16.0" --build-arg HADOOP_VERSION="2.6.5" ./alpine/
	sudo docker push mpolatcan/pig:alpine-0.16.0-hadoop-2.6.5
	sudo docker rmi mpolatcan/pig:alpine-0.16.0-hadoop-2.6.5
