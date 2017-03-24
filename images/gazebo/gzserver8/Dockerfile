FROM gazebo:gzserver8

RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY ./gazebo_entrypoint.sh /

ENTRYPOINT ["/gazebo_entrypoint.sh"]
