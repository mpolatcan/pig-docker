.PHONY: publish-pig
publish-pig:
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.17.0 hadoop=3.1.1
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.17.0 hadoop=3.1.1
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.17.0 hadoop=3.0.3
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.17.0 hadoop=3.0.3
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.17.0 hadoop=3.0.2
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.17.0 hadoop=3.0.2
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.17.0 hadoop=2.9.1
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.17.0 hadoop=2.9.1
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.17.0 hadoop=2.9.0
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.17.0 hadoop=2.9.0
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.17.0 hadoop=2.8.4
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.17.0 hadoop=2.8.4
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.17.0 hadoop=2.7.6
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.17.0 hadoop=2.7.6
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.17.0 hadoop=2.6.5
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.17.0 hadoop=2.6.5
# ----------------------------------------------------------------------------------------------------------------------
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.16.0 hadoop=3.1.1
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.16.0 hadoop=3.1.1
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.16.0 hadoop=3.0.3
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.16.0 hadoop=3.0.3
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.16.0 hadoop=3.0.2
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.16.0 hadoop=3.0.2
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.16.0 hadoop=2.9.1
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.16.0 hadoop=2.9.1
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.16.0 hadoop=2.9.0
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.16.0 hadoop=2.9.0
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.16.0 hadoop=2.8.4
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.16.0 hadoop=2.8.4
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.16.0 hadoop=2.7.6
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.16.0 hadoop=2.7.6
	$(MAKE) publish-pig-helper dist=ubuntu pig_version=0.16.0 hadoop=2.6.5
	$(MAKE) publish-pig-helper dist=alpine pig_version=0.16.0 hadoop=2.6.5

.PHONY: publish-pig-helper
publish-pig-helper:
	sudo docker build -q -t mpolatcan/pig:$(dist)-$(pig_version)-hadoop-$(hadoop_version) --build-arg PIG_VERSION=$(pig_version) --build-arg HADOOP_VERSION=$(hadoop_version) ./$(dist)/
	sudo docker push mpolatcan/pig:$(dist)-$(pig_version)-hadoop-$(hadoop_version)
	sudo docker rmi $$(sudo docker images -q)
