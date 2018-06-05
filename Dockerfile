FROM ubuntu:16.04
RUN set -x && \
	apt-get update && \
 	apt-get install -y software-properties-common && \
 	apt-add-repository -y ppa:brightbox/ruby-ng && \
	apt-get update && apt-get -y upgrade && \
	apt-get -y install ruby2.5 && \
	: "for avoid mkmf.rb can't find header files" && \
	apt-get -y install ruby2.5-dev && \
	: "gem update" && \
 	: "markdiff (0.6.2)" && \
	apt-get install -y make cmake build-essential libicu-dev libssl-dev libcurl4-openssl-dev pkg-config zlib1g-dev && \
	gem install markdiff && \
	: "qiita-markdown (0.25.0)" && \
	: "gem install qiita-markdown"
