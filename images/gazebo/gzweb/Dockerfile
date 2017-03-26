# Much of this comes from this Dockerfile:
# https://gist.github.com/iche033/a30de29a55766a71c240e12108c6e577
# All credit goes to the original author.

FROM gazebo:libgazebo8

# Install dependencies.
RUN apt-get -qq update && apt-get -qq -y install \
    build-essential \
    cmake \
    imagemagick \
    libboost-all-dev \
    libgts-dev \
    libjansson-dev \
    libtinyxml-dev \
    mercurial \
    pkg-config \
    psmisc\
    npm \
    curl

# Install gazebo8 libraries.
RUN apt-get -qq update && apt-get -q -y install \
    libgazebo8-dev=8.0.0* \
    && rm -rf /var/lib/apt/lists/*

# Get nodejs.
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 0.10.25

RUN . /root/.nvm/nvm.sh && \
    nvm install $NODE_VERSION && \
    nvm use $NODE_VERSION

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

# Clone the gzweb repo into the home directory.
RUN hg clone https://bitbucket.org/osrf/gzweb ~/gzweb

# Build gzweb.
RUN cd ~/gzweb \
    && hg up default \
    && ./deploy.sh -m

# Expose ports.
EXPOSE 8080
EXPOSE 7681

# Start gzweb.
CMD ./root/gzweb/start_gzweb.sh && gzserver
