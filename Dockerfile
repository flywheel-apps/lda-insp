# flywheel/lda-insp

# NOTE: This start with local installation of the Imbio LDA Software
FROM imbio/ldarelease:2.4.3
MAINTAINER Jennifer Reiter <jenniferreiter@invenshure.com>

# Install unzip
RUN apt-get -y install unzip \
			zip

# Make directory for flywheel spec (v0)
ENV FLYWHEEL /flywheel/v0
RUN mkdir -p ${FLYWHEEL}

COPY run ${FLYWHEEL}/run
COPY manifest.json ${FLYWHEEL}/manifest.json

# Install jq to parse the JSON config file
RUN wget -N -qO- -O /usr/bin/jq http://stedolan.github.io/jq/download/linux64/jq
RUN chmod +x /usr/bin/jq

# Set the entrypoint
ENTRYPOINT ["/flywheel/v0/run"]
