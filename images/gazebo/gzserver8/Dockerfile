FROM gazebo:gzserver8

RUN apt-get -q dist-upgrade

RUN apt-get -qq update && apt-get -qy install \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY ./pendulum_demo.sh /pendulum_demo.sh

EXPOSE 11345

CMD ["gzserver"]
