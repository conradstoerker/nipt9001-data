FROM ubuntu
# add our user and group first to make sure their IDs get assigned consistently, regardless of other deps added later
RUN groupadd -r nipt9001_data \
  && useradd -r -g nipt9001_data nipt9001
RUN mkdir -p /data/nipt9001_data \
  && chown -R nipt9001_data:nipt9001 /data/nipt9001
VOLUME /data/graphite
USER nipt9001
CMD ["echo", "Data container for nipt9001"]
